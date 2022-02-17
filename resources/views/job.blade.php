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
    <section class="page-header" style="background-image: url(https://images.pexels.com/photos/4427643/pexels-photo-4427643.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);">
        <div class="container">
            <div class="page-header__inner">
                <h2>Woman Job</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="/">Home</a></li>
                    <li><span>/</span></li>
                    <li>Job</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Page Header End-->

    <!--Popular Causes Three Start-->
    <section class="popular-causes-three campaign-page">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">

                    <div class="filter-menu">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            @foreach($locations as $location)
                            <li data-filter=".{{$location->city}}">{{$location->city}}</li>
                            @endforeach
                        </ul>
                    </div>



                </div>
            </div>
            <div class="row grid">
                <!--Popular Causes Single-->
                @foreach ($jobs as $job)
                    <div class="col-xl-4 col-lg-4 col-md-6 jobitem {{$job->getLocation->city}}"
                         data-wow-delay="100ms">
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
                    </div>
                @endforeach
            </div>

        </div>
    </section>
    <!--Popular Causes Three End-->

</div>

@include('includes.footer')

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js"></script>
<script>

    $(document).ready(function () {
        $('.grid').isotope(function () {
            itemSelector:'.jobitem'
        });


        $('.filter-menu ul li').click(function () {
            $('.filter-menu ul li').removeClass('active');
            $(this).addClass('active');


            var selector = $(this).attr('data-filter');
            $('.grid').isotope({
                filter: selector
            })
            return false;
        });
    });
</script>

</body>

</html>
