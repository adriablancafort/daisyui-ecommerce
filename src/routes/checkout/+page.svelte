<body>
    <div class="container mx-auto p-4">
        <div class="flex flex-col lg:flex-row gap-8">
            <div class="lg:w-2/3">
                <h1 class="text-3xl font-bold mb-4">BIG DAY</h1>
                <div class="mb-8">
                    <h2 class="text-xl font-semibold mb-4">Express checkout</h2>
                    <div class="flex gap-4">
                        <button class="btn btn-primary flex-1">Shop Pay</button>
                        <button class="btn btn-secondary flex-1">G Pay</button>
                    </div>
                    <div class="divider">OR</div>
                </div>
                
                <form>
                    <h2 class="text-xl font-semibold mb-4">Contact</h2>
                    <div class="form-control w-full mb-4">
                        <input type="text" placeholder="Email or mobile phone number" class="input input-bordered w-full">
                    </div>
                    <div class="form-control">
                        <label class="label cursor-pointer">
                            <span class="label-text">Email me with news and offers</span> 
                            <input type="checkbox" class="checkbox">
                        </label>
                    </div>

                    <h2 class="text-xl font-semibold mt-8 mb-4">Delivery</h2>
                    <div class="form-control w-full mb-4">
                        <select class="select select-bordered">
                            <option>Spain</option>
                        </select>
                    </div>
                    <div class="flex gap-4 mb-4">
                        <input type="text" placeholder="First name (optional)" class="input input-bordered w-full">
                        <input type="text" placeholder="Last name" class="input input-bordered w-full">
                    </div>
                    <div class="form-control w-full mb-4">
                        <input type="text" placeholder="Address" class="input input-bordered w-full">
                    </div>
                    <div class="form-control w-full mb-4">
                        <input type="text" placeholder="Apartment, suite, etc. (optional)" class="input input-bordered w-full">
                    </div>
                    <div class="flex gap-4 mb-4">
                        <input type="text" placeholder="Postal code" class="input input-bordered w-full">
                        <input type="text" placeholder="City" class="input input-bordered w-full">
                        <select class="select select-bordered w-full">
                            <option>Barcelona</option>
                        </select>
                    </div>
                </form>
            </div>

            <div class="lg:w-1/3">
                <div class="bg-base-200 p-6 rounded-lg">
                    <h2 class="text-xl font-semibold mb-4">Order Summary</h2>
                    <div class="flex justify-between items-center mb-4">
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-gray-300 rounded-md mr-4"></div>
                            <div>
                                <p class="font-semibold">Peach</p>
                                <button class="text-sm text-blue-600">Change options</button>
                            </div>
                        </div>
                        <p class="font-semibold">€24.95</p>
                    </div>
                    <div class="flex justify-between items-center mb-4">
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-gray-300 rounded-md mr-4"></div>
                            <div>
                                <p class="font-semibold">Lime</p>
                                <button class="text-sm text-blue-600">Change options</button>
                            </div>
                        </div>
                        <p class="font-semibold">€47.90</p>
                    </div>
                    <div class="divider"></div>
                    <div class="flex justify-between items-center mb-4">
                        <input type="text" placeholder="Discount code" class="input input-bordered w-2/3">
                        <button class="btn btn-outline">Apply</button>
                    </div>
                    <div class="flex justify-between items-center mb-2">
                        <p>Subtotal</p>
                        <p class="font-semibold">€72.85</p>
                    </div>
                    <div class="flex justify-between items-center mb-4">
                        <p>Shipping</p>
                        <p>Enter shipping address</p>
                    </div>
                    <div class="flex justify-between items-center text-lg font-semibold">
                        <p>Total</p>
                        <p>EUR €72.85</p>
                    </div>
                </div>
                <div class="mt-8">
                    <h3 class="text-lg font-semibold mb-4">You might also like</h3>
                    <div class="flex items-center justify-between bg-base-200 p-4 rounded-lg">
                        <div class="flex items-center">
                            <div class="w-12 h-12 bg-gray-300 rounded-md mr-4"></div>
                            <div>
                                <p class="font-semibold">Watermelon</p>
                                <p>€23.95</p>
                                <button class="text-sm text-blue-600">Change options</button>
                            </div>
                        </div>
                        <button class="btn btn-primary">Add</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>