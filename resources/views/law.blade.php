<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Law </title>

    @include('includes.head')

</head>

<body>

<div class="page-wrapper">

@include('includes.header')

<!--Page Header Start-->
    <section class="page-header" style="background-image: url('{{asset('assets/images/resources/law_bg.jpg')}}');background-position: top">
        <div class="container">
            <div class="page-header__inner">
                <h2>Woman Law</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="/">Home</a></li>
                    <li><span>/</span></li>
                    <li>Law</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Page Header End-->

    <!--Popular Causes Three Start-->
    <section class="popular-causes-three campaign-page">
        <div class="container">
            <div class="row">
                <!--Popular Causes Single-->
                @foreach ($laws as $law)
                    <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="100ms">
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
    <!--Popular Causes Three End-->

</div>

@include('includes.footer')


</body>

</html>
