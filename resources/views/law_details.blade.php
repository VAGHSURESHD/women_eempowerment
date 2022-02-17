<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Job </title>

@include('includes.head')

</head>

<body>

<div class="page-wrapper">

@include('includes.header')


<!--Page Header Start-->
    <section class="page-header" style="background-image: url({{ Voyager::image( $law->cover_img) }});background-size: cover;background-position: center;">
        <div class="container">
            <div class="page-header__inner">
                <h2>Law Details</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="/">Home</a></li>
                    <li><span>/</span></li>
                    <li>Law Details</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Page Header End-->


    <!--News Details Start-->
    <section class="news-details">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-7">
                    <div class="news-details__left">
                        <div class="news-details__img">
                            <img src="{{Voyager::image( $law->cover_img)}}" alt="">
                            <div class="news-details__date-box">
                                <p>{{$law->created_at->format('d')}} <br> {{$law->created_at->format('M')}}</p>
                            </div>
                        </div>
                        <div class="news-details__content">
                            <ul class="list-unstyled news-details__meta">
                                <li><a href="#"><i class="far fa-user-circle"></i> Admin</a></li>
                            </ul>
                            <h3 class="news-details__title">{{$law->title}}</h3>
                            <p class="news-details__text-one">{{$law->description}}</p>
                            <div>{!!$law->content!!}</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5">
                    <div class="sidebar">
                        <div class="sidebar__single sidebar__post">
                            <h3 class="sidebar__title">Recent News</h3>
                            <ul class="sidebar__post-list list-unstyled">
                                @foreach($laws as $item)
                                <li>
                                    <div class="sidebar__post-image">
                                        <img src="{{Voyager::image( $item->cover_img)}}" alt="">
                                    </div>
                                    <div class="sidebar__post-content">
                                        <h3>
                                            <a href="{{$item->id}}">{{$item->title}}</a>
                                        </h3>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                     </div>
                </div>
            </div>
        </div>
    </section>
    <!--News Details End-->

</div>

@include('includes.footer')


</body>

</html>
