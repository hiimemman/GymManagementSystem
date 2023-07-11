<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="batgymproject.Checkout" %>

<!doctype html>
<html>
<head runat="server">
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Snippet - BBBootstrap</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
    <link href='' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        .cancel {
            text-decoration: none
        }

        .bg-pay {
            background-color: #eee;
            border-radius: 2px
        }

        .com-color {
            color: #8f37aa !important
        }

        .radio {
            cursor: pointer
        }

        label.radio input {
            position: absolute;
            top: 0;
            left: 0;
            visibility: hidden;
            pointer-events: none
        }

        label.radio div {
            padding: 7px 14px;
            border: 2px solid #8f37aa;
            display: inline-block;
            color: #8f37aa;
            border-radius: 3px;
            text-transform: uppercase;
            width: 100%;
            margin-bottom: 10px
        }

        label.radio input:checked + div {
            border-color: #8f37aa;
            background-color: #8f37aa;
            color: #fff
        }

        .fw-500 {
            font-weight: 400
        }

        .lh-16 {
            line-height: 16px
        }
    </style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
    <form runat="server">
        <div class="container mt-3 mb-3">
            <div class="d-flex justify-content-between align-items-center mb-5">
                <div class="d-flex flex-row align-items-center">
                    <h4 class="text-uppercase mt-1">Eligible</h4>
                    <span class="ml-2">Pay</span>
                </div>

                <a href="#" class="cancel com-color"></a>
                <asp:LinkButton ID="LinkButtonCancelReturn" runat="server" OnClick="LinkButtonCancelReturn_Click">Cancel and return to website</asp:LinkButton>


            </div>
            <div class="row">
                <div class="col-md-6">
                    <h5 class="mb-0 text-success">$85.00</h5>
                    <h5 class="mb-3">Diabities Pump & Supplies</h5>
                    <div class="about">
                        <div class="d-flex justify-content-between">
                            <div class="d-flex flex-row mt-1">
                                <h6>Insurance Responsibility</h6>
                                <h6 class="text-success font-weight-bold ml-1">$71.76</h6>
                            </div>
                            <div class="d-flex flex-row align-items-center com-color"><i class="fa fa-plus-circle"></i><span class="ml-1">Add Insurer card</span> </div>
                        </div>
                        <p>Insurance claim and all neccessary dependencies will be submitted to your insurer for the covered portion of this order.</p>
                        <div class="p-2 d-flex justify-content-between bg-pay align-items-center"><span>Aetna - Open Access</span> <span>OAP</span> </div>
                        <hr>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="d-flex flex-row mt-1">
                                <h6>Patient Balance</h6>
                                <h6 class="text-success font-weight-bold ml-1">$13.24</h6>
                            </div>
                            <div class="d-flex flex-row align-items-center com-color"><i class="fa fa-plus-circle"></i><span class="ml-1">Add Payment card</span> </div>
                        </div>
                        <p>Insurance claim and all neccessary dependencies will be submitted to your insurer for the covered portion of this order.</p>
                        <div class="d-flex flex-column">
                            <label class="radio">
                                <input type="radio" name="gender" value="MALE" checked>
                                <div class="d-flex justify-content-between"><span>VISA</span> <span>**** 5645</span> </div>
                            </label>
                            <label class="radio">
                                <input type="radio" name="gender" value="FEMALE">
                                <div class="d-flex justify-content-between"><span>MASTER CARD</span> <span>**** 5069</span> </div>
                            </label>
                            <asp:DropDownList ID="DropPackage" runat="server" class="d-flex justify-content-between">
                                            <asp:ListItem>Package 1</asp:ListItem>
                                            <asp:ListItem>Package 2</asp:ListItem>
                                            <asp:ListItem>Package 3</asp:ListItem>
                                            <asp:ListItem>Package 4</asp:ListItem>

                                        </asp:DropDownList>
                        </div>
                        <div class="buttons">
                            <button class="btn btn-success btn-block">Proceed to payment</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <div class="bg-pay p-3">
                        <span class="font-weight-bold">Order Recap</span>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">contracted Price</span> <span>$186.86</span> </div>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Amount Deductible</span> <span>$0.0</span> </div>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Coinsurance(0%)</span> <span>+ $0.0</span> </div>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Copayment </span><span>+ 40.00</span> </div>
                        <hr>
                        <div class="d-flex justify-content-between mt-2">
                            <span class="lh-16 fw-500">Total Deductible,<br>
                                Coinsurance and copay </span><span>$40.00</span>
                        </div>
                        <div class="d-flex justify-content-between mt-2">
                            <span class="lh-16 fw-500">Maximum out-of-pocket
                        <br>
                                on insurance policy</span> <span>$40.00</span>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Insurance Responsibility </span><span>$71.76</span> </div>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Patient Balance </span><span>$13.24</span> </div>
                        <hr>
                        <div class="d-flex justify-content-between mt-2"><span class="fw-500">Total </span><span class="text-success">$85.00</span> </div>
                    </div>
                </div>
            </div>
        </div>
        <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript'></script>
    </form>
</body>
</html>
