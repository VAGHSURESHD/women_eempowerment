<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home </title>

    @include('includes.head')

</head>

<body>

{{--    <div class="preloader">--}}
{{--        <img src="{{ asset('assets/images/loader.jpg')}}" class="preloader__image" alt="">--}}
{{--    </div><!-- /.preloader -->--}}

<div class="page-wrapper">

@include('includes.header')


<!-- Main Slider Start -->
    <section class="main-slider">
        <div class="swiper-container thm-swiper__slider" data-swiper-options='{"slidesPerView": 1, "loop": true,
    "effect": "fade",
    "pagination": {
        "el": "#main-slider-pagination",
        "type": "bullets",
        "clickable": true
      },
    "navigation": {
        "nextEl": ".main-slider-button-next",
        "prevEl": ".main-slider-button-prev",
        "clickable": true
    },
    "autoplay": {
        "delay": 5000
    }}'>

            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="image-layer"
                         style="background-image: url({{ asset('assets/images/main-slider/01.jpg')}});"></div>
                    <div class="container">
                        <div class="swiper-slide__inner">
                            <div class="row">
                                <div class="col-xl-12">
                                    <p>Woman Law - India</p>
                                    <h2>Woman Law<br> India</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="image-layer"
                         style="background-image: url({{ asset('assets/images/main-slider/02.jpg')}});"></div>
                    <div class="container">
                        <div class="swiper-slide__inner">
                            <div class="row">
                                <div class="col-xl-12">
                                    <p>Woman Job - India</p>
                                    <h2>Job for <br> Woman</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="image-layer"
                         style="background-image: url({{ asset('assets/images/main-slider/03.jpg')}});"></div>
                    <div class="container">
                        <div class="swiper-slide__inner">
                            <div class="row">
                                <div class="col-xl-12">
                                    <p>Helping Them </p>
                                    <h2>Need Help<br> India</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination" id="main-slider-pagination"></div>
            <div class="main-slider-nav">
                <div class="main-slider-button-prev"><span class="icon-right-arrow"></span></div>
                <div class="main-slider-button-next"><span class="icon-right-arrow"></span></div>
            </div>
        </div>
    </section>
    <!-- Main Slider End -->

    <!--Three Icon Start-->
    <section class="feature-one">
        <div class="container">
            <div class="feature-one__inner">
                <div class="row">
                    <div class="col-xl-4 col-lg-4">
                        <!--Three Icon Single-->
                        <div class="feature-one__single feature-one__single-first-item">
                            <div class="feature-one__icon-wrap">
                                <div class="feature-one__icon-box">
                                    <span class="icon-heart"></span>
                                    <div class="feature-one__icon-box-img">
                                        <img src="{{ asset('assets/images/resources/three_iocn_box_bg.png')}}" alt="">
                                    </div>
                                </div>
                                <div class="feature-one__icon-text-box">
                                    <h4>Woman <br> Law</h4>
                                </div>
                            </div>
                            <p class="feature-one__icons-single-text">The Indian Divorce Act allows the dissolution of marriage, mutual consent, nullity of marriage, judicial separation and restitution of conjugal rights.</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <!--Three Icon Single-->
                        <div class="feature-one__single feature-one__single-second-item">
                            <div class="feature-one__icon-wrap">
                                <div class="feature-one__icon-box feature-one__icon-box-two">
                                    <span class="icon-wallet-filled-money-tool"></span>
                                    <div class="feature-one__icon-box-img">
                                        <img src="{{ asset('assets/images/resources/three_iocn_box_bg-2.png')}}" alt="">
                                    </div>
                                </div>
                                <div class="feature-one__icon-text-box">
                                    <h4>Woman<br> Job</h4>
                                </div>
                            </div>
                            <p class="feature-one__icons-single-text">Employment of women has now been widely accepted phenomena in present Indian society. The parents and the society are now approving the employment of woman.

                            </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <!--Three Icon Single-->
                        <div class="feature-one__single feature-one__single-third-item">
                            <div class="feature-one__icon-wrap">
                                <div class="feature-one__icon-box feature-one__icon-box-three">
                                    <span class="icon-charity"></span>
                                    <div class="feature-one__icon-box-img">
                                        <img src="{{ asset('assets/images/resources/three_iocn_box_bg-3.png')}}" alt="">
                                    </div>
                                </div>
                                <div class="feature-one__icon-text-box">
                                    <h4>Woman<br> Help</h4>
                                </div>
                            </div>
                            <p class="feature-one__icons-single-text">Woman Help is good idea for indian woman where they can contact with us and ask questing what ever they want to ask.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Three Icon End-->

    <!--Welcome One Start-->
    <section class="welcome-one"
             style="background-image: url({{ asset('assets/images/backgrounds/welcome_one_bg.jpg')}})">
        <div class="welcome-one-hands"
             style="background-image:url({{ asset('assets/images/backgrounds/welcome_one_hands.png')}})"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6">
                    <div class="welcome-one__left">
                        <div class="welcome-one__img wow slideInLeft" data-wow-delay="100ms">
                            <img src="{{ asset('assets/images/resources/feature.jpg')}}" alt="">

                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="welcome-one__right">
                        <div class="block-title text-left">
                            <h4>Helping Today</h4>
                            <h2>Our Goal is to Help Indian Woman</h2>
                        </div>
                        <p class="welcome-one__text">Employment of women has now been widely accepted phenomena in present Indian society. The parents and the society are now approving the employment of woman.

                        </p>
                        <ul class="welcome-one__list list-unstyled">
                            <li><span class="icon-confirmation"></span>Find All laws for woman</li>
                            <li><span class="icon-confirmation"></span>Find All Jobs for woman</li>
                            <li><span class="icon-confirmation"></span>Help for woman</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Welcome One End-->

    <!--Popular Causes Start-->
    <section class="popular-causes">
        <div class="container">
            <div class="block-title text-left">
                <h4>Help the woman</h4>
                <h2>Our New Job</h2>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="popular-causes__carousel owl-theme owl-carousel">
                        @foreach ($jobs as $job)
                            <div class="popular-causes__sinlge">
                                <div class="popular-causes__img">
                                    <img src="{{ Voyager::image( $job->image) }}" alt="">
                                    <div class="popular-causes__category">
                                        <p>&#8377; {{$job->salary}}</p>
                                    </div>
                                    <div class="popular-causes__category1">
                                        <p>{{$job->getLocation->city}}</p>
                                    </div>
                                </div>
                                <div class="popular-causes__content">
                                    <div class="popular-causes__title">
                                        <h3><a href="jobs/{{$job->id}}">{{$job->title}}</a>
                                        </h3>
                                        <p>{{$job->description}}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Popular Causes One End-->


    <!--News One Start-->
    <section class="news-one">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6">
                    <div class="block-title text-left">
                        <h4>Law of india</h4>
                        <h2>New Woman Law</h2>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="news-one__top-text">
                        <p>Woman can find law and translate law details in native language. they can read all laws in law menu </p>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($laws as $law)

                    <div class="col-xl-4 col-lg-4">
                        <!--News One Single-->
                        <div class="news-one__single wow fadeInUp" data-wow-delay="100ms">
                            <div class="news-one__img">
                                <div class="news-one__img-box">
                                    <img src="{{ Voyager::image( $law->cover_img) }}" alt="">
                                    <a href="laws/{{$law->id}}"></a>
                                </div>
                                <div class="news-one__date-box">
                                    <p>{{$law->created_at->format('d')}}<br>{{$law->created_at->format('M')}}</p>
                                </div>
                            </div>
                            <div class="news-one__content">
                                <ul class="list-unstyled news-one__meta">
                                    <li><a href="#"><i class="far fa-user-circle"></i> Admin</a></li>
                                </ul>
                                <div class="news-one__title">
                                    <h3><a href="laws/{{$law->id}}">{{$law->title}}</a></h3>
                                </div>
                                <a href="laws/{{$law->id}}" class="thm-btn news-one__btn">More</a>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
    <!--Gallery One Start-->
    <section class="gallery-one">
        <div class="gallery-one__container-box clearfix">
            <div class="thm-swiper__slider swiper-container gallery-one__content" data-swiper-options='{"spaceBetween": 20, "slidesPerView": 5, "autoplay": { "delay": 5000 }, "breakpoints": {
                    "0": {
                        "spaceBetween": 10,
                        "slidesPerView": 1
                    },
                    "375": {
                        "spaceBetween": 20,
                        "slidesPerView": 1
                    },
                    "575": {
                        "spaceBetween": 20,
                        "slidesPerView": 2
                    },
                    "767": {
                        "spaceBetween": 20,
                        "slidesPerView": 3
                    },
                    "991": {
                        "spaceBetween": 20,
                        "slidesPerView": 4
                    },
                    "1199": {
                        "spaceBetween": 20,
                        "slidesPerView": 5
                    }
                }}'>
                <!-- swiper wrapper start -->
                <div class="swiper-wrapper">
                    @foreach ($galleries as $item)
                        <div class="swiper-slide">
                            <div class="gallery-one__img-box">

                                <img src="storage/gallery/{{$item->getFilename()}}" alt="">
                                <div class="gallery-one__iocn">
                                    <a href="storage/gallery/{{$item->getFilename()}}" class="img-popup"><i
                                            class="fas fa-search"></i></a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div><!-- /.swiper-wrapper -->
            </div>
            <!-- end .swiper-container -->
        </div>
    </section>
    <!--Gallery One End-->


</div><!-- /.page-wrapper -->

@include('includes.footer')


</body>

</html>
