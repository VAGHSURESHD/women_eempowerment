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
    <section class="page-header" style="background-image: url({{ Voyager::image( $job->image) }});background-size: cover;background-position: center;">
        <div class="container">
            <div class="page-header__inner">
                <h2>Job Details</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="/">Home</a></li>
                    <li><span>/</span></li>
                    <li>Job Details</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Page Header End-->



    <!--Event Details Top Start-->
    <section class="event-details-top">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6">
                    <div class="event-details-top__image">
                        <img src="{{Voyager::image($job->image)}}" alt="">
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="event-details-top__contant">
                        <h3 class="event-details-top__title">{{$job->title}}</h3>
                        <h4 class="event-details-top__text-one">{{$job->salary}}</h4>
                        <p class="event-details-top__text-two"><strong>Cateogory:</strong> {{$job->getCategory->title}} | {{$job->getCategory->description}}</p>
                        <p class="event-details-top__text-two"><strong>Location: </strong>{{$job->getLocation->city}} | {{$job->getLocation->adddress}}</p>
                        <p class="event-details-top__text-two">{{$job->description}}</p>
                        <p class="event-details-top__text-two">{{$job->other_information}}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Event Details Top End-->

</div>

@include('includes.footer')


</body>

</html>
