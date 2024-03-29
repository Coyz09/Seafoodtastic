<div class="conatiner">
    <form id="myForm" action="<?php echo base_url().'admin/product/edit/'.$product['product_id'];?>" method="POST"
        class="form-container mx-auto  shadow-container" style="width:80%" enctype="multipart/form-data">
        <h3 class="mb-3 text-center">Edit Product "<?php echo $product['name']; ?>"</h3>
        <div class="form-group">
            <label class="control-label">Select Category</label>
            <select name="catname" id="category_name"
                class="form-control <?php echo (form_error('catname') != "") ? 'is-invalid' : '';?>">
                <option>--Select Category--</option>
                <?php 
                if (!empty($categories)) { 
                    foreach($categories as $category) {
                        ?>
                <option value="<?php echo $category['category_id'];?>">
                    <?php echo set_select('category_name', $category['category_name']);?>
                    <?php echo $category['category_name'];?>
                </option>
                <?php }
                }
                ?>
            </select>
            <span></span>
            <?php echo form_error('catname');?>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control my-2 
                    <?php echo (form_error('name') != "") ? 'is-invalid' : '';?>" name="name" id="name"
                        placeholder="Enter product name" value="<?php echo set_value('name', $product['name']); ?>">
                    <span></span>
                    <?php echo form_error('name'); ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="Price" class="form-control my-2
                    <?php echo (form_error('price') != "") ? 'is-invalid' : '';?>" id="price" name="price"
                        placeholder="Enter Price" value="<?php echo set_value('price', $product['price']); ?>">
                    <span></span>
                    <?php echo form_error('price'); ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="about">About</label>
                    <textarea type="text"  rows ="13" class="form-control my-2
                    <?php echo (form_error('about') != "") ? 'is-invalid' : '';?>" id="about" name="about"
                        placeholder="About" value="<?php echo set_value('about', $product['about']); ?>">                    <?php echo set_value('about', $product['about']); ?></textarea>
                    <span></span>
                    <?php echo form_error('about'); ?>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="img">Product Image</label>
                    <input type="file" id="image" name="image" placeholder="Enter Image" class="form-control my-2
                    <?php echo(!empty($errorImageUpload))  ? 'is-invalid' : '';?>">
                    <?php echo (!empty($errorImageUpload)) ? $errorImageUpload : '';?>

                    <?php if($product['img'] != "" && file_exists('./public/uploads/products/thumb/'.$product['img'])) { ?>

                    <img src="<?php echo base_url().'public/uploads/products/thumb/'.$product['img'];?>">

                    <?php } else { ?>
                    <img width="300" src="<?php echo base_url().'public/uploads/no-image.png'?>">
                    <?php } ?>
                    <span></span>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary ml-2">Make Changes</button>
        <a href="<?php echo base_url().'admin/product'?>" class="btn btn-secondary">Back</a>
    </form>
</div>
<script>
const form = document.getElementById('myForm');
const category_name = document.getElementById("category_name");
const product_name = document.getElementById("name");
const price = document.getElementById("price");
const about = document.getElementById("about");
const image = document.getElementById("image");

form.addEventListener('submit', (event) => {
    event.preventDefault();
    validate();
})

const sendData = (sRate, count) => {
    if (sRate === count) {
        event.currentTarget.submit();
    }
}

const successMsg = () => {
    let formCon = document.getElementsByClassName('form-control');
    var count = formCon.length - 2;
    for (var i = 0; i < formCon.length; i++) {
        if (formCon[i].className === "form-control my-2 success") {
            var sRate = 0 + i;
            sendData(sRate, count);
        } else {
            return false;
        }
    }
}

const validate = () => {
    const category_nameVal = category_name.value.trim();
    const product_nameVal = product_name.value.trim();
    const priceVal = price.value.trim();
    const aboutVal = about.value.trim();
    const imageVal = image.value.trim();

    if (category_nameVal === "--Select Category--") {
        setErrorMsg(category_name, 'select category name');
    } else {
        setSuccessMsg(category_name);
    }
    if (product_nameVal === "") {
        setErrorMsg(product_name, 'product name cannot be blank');
    } else {
        setSuccessMsg(product_name);
    }
    if (priceVal === "") {
        setErrorMsg(price, 'price cannot be blank');
    } else {
        setSuccessMsg(price);
    }
    if (aboutVal === "") {
        setErrorMsg(about, 'about cannot be blank');
    } else {
        setSuccessMsg(about);
    }

    successMsg();

}

function setErrorMsg(ele, errormsgs) {
    const formCon = ele.parentElement;
    const formInput = formCon.querySelector('.form-control');
    const span = formCon.querySelector('span');
    span.innerText = errormsgs;
    formInput.className = "form-control my-2 is-invalid";
    span.className = "invalid-feedback font-weight-bold";
}

function setSuccessMsg(ele) {
    const formGroup = ele.parentElement;
    const formInput = formGroup.querySelector('.form-control');
    formInput.className = "form-control my-2 success";
}
</script>