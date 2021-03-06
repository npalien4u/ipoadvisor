<!--====== Header part start ======-->
<header class="header-two sticky-header">
    <!-- Header Menu  -->
    <div class="header-nav sticky-nav">
        <div class="container-fluid container-1600">
            <div class="nav-container">
                <!-- Site Logo -->
                @if (isset($userBs->logo))
                <div class="site-logo">
                    <a href="{{route('front.user.detail.view',getParam())}}">
                        <img src="{{asset('assets/front/img/user/'.$userBs->logo)}}" alt="Logo"></a>
                </div>
                @endif

                <!-- Main Menu -->
                <div class="nav-menu d-lg-flex align-items-center">

                    <!-- Navbar Close Icon -->
                    <div class="navbar-close">
                        <div class="cross-wrap"><span></span><span></span></div>
                    </div>

                    <!-- Mneu Items -->
                    <div class="menu-items">
                        <ul>
                            <?php
                            $links = json_decode($userMenus->menus);

                            foreach ($links as $obj) {
                                $link = (array)$obj;
                                $href = getUserHref($link);

                                if (!array_key_exists("children", $link)) {                             ?>
                                    <li><a href="{{$href}}" target="{{$link["target"]}}">{{$link["text"]}}</a></li>
                                <?php } else { ?>
                                    <li class="has-submemu">
                                        <a href="{{$href}}" target="{{$link["target"]}}">{{$link["text"]}}</a>
                                        <ul class="submenu">
                                            <?php foreach ($link["children"] as $l2obj) {
                                                $level2 = (array)$l2obj;

                                                $l2Href = getUserHref($level2); ?>

                                                <li><a href="{{$l2Href}}" target="{{$level2["target"]}}">{{$level2["text"]}}</a></li>
                                            <?php } ?>
                                        </ul>
                                    </li>
                            <?php } //endif
                            } //endforeach
                            ?>
                        </ul>
                    </div>
                    <!-- Pushed Item -->
                    <div class="nav-pushed-item"></div>
                </div>

                <!-- Navbar Extra  -->
                <div class="navbar-extra d-flex align-items-center">
                    <!-- language selection -->
                    <form action="{{route('changeUserLanguage',getParam())}}" id="userLangForms">
                        @csrf
                        <input type="hidden" name="username" value="{{$user->username}}">
                        <input type="hidden" name="code" id="lang-code" value="">
                        <div class="language-selection language-selection-two">
                            @if($userCurrentLang->id)
                            <a class="language-btn" href="javascript:void(0)">{{convertUtf8($userCurrentLang->name)}}<i class="far fa-angle-down"></i></a>
                            @endif
                            <ul class="language-list" id="language-list">
                                @foreach ($userLangs as $userLang)
                                <li><a href="javascript:void(0)" data-value="{{$userLang->code}}">{{convertUtf8($userLang->name)}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </form>
                    @if (in_array('Request a Quote',$packagePermissions))
                    @if($userBs->is_quote)
                    <a href="{{route('front.user.quote', getParam())}}" class="main-btn main-btn-3 d-none d-lg-inline-block">{{$keywords['Request_A_Quote'] ?? 'Request A Quote'}}</a>
                    @endif
                    @endif
                    <!-- Navbar Toggler -->
                    <div class="navbar-toggler">
                        <span></span><span></span><span></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!--====== Header part end ======-->