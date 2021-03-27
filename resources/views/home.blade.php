@extends('layouts.master')
@section('content')
    <!-- Start Slider -->

    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                <img src="img/amazontobd_cover.png" alt="amazon to bd cover photo">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="img/50off_cover.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

    <!-- Start Products  -->
    <div class="categories-shop">
        <div class="container">
            <div class="row">
                @foreach($products as $product)
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <a class="btn hvr-hover" href="{{ $product['product_link'] }}" target="_blank" style="margin-bottom: 50px;">
                            <div class="shop-cat-box">
                                <img src={{ $product['product_photo_link']}} width="300px" height="300px" alt="" />
                                <ul>
                                    <li>Name: {{ $product['product_name']}}</li>
                                    <li>Price: {{ $product['product_price']}} <b>৳</b></li>
                                    <li>Shipping Cost: {{ $product['shipping_price']}} <b>৳</b></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
        <div style="text-align: center;">
            <h1>More Products Coming...</h1>
        </div>
    </div>
    <!-- End Products -->
@endsection
