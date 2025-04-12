IMP.init("imp87480883");

const button = document.querySelector("button");

const onClickPay = async () => {
	IMP.request_pay({
		pg: "kakaopay",
		pay_method: "card",
		amount: "200000",
		name: "후원하기",
		merchant_uid: "ORD20240514-000001",
	});
};

button.addEventListener("click", onClickPay);