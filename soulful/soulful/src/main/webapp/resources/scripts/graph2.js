// 가사 감정
window.onload = function () {
    pieChartDraw();
    document.getElementById('legend-div').innerHTML = window.pieChart.generateLegend();
    pieChartDraw1();
    document.getElementById('legend-div1').innerHTML = window.pieChart.generateLegend();

}




let pieChartData = {
    labels: ['기쁨', '슬픔', '편안', '흥분'],
    datasets: [{
        data: [40, 20, 32, 5],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};
let pieChartData1 = {
    labels: ['가', '나', '다', '라'],
    datasets: [{
        data: [70, 10, 15, 5],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};



let pieChartDraw = function () {
    let ctx = document.getElementById('pieChartCanvas').getContext('2d');
    
    window.pieChart = new Chart(ctx, {
        type: 'pie',
        data: pieChartData,
        options: {
            responsive: false,
            legend: {
                display: false
            },
            legendCallback: customLegend
        }
    });
};

let pieChartDraw1 = function () {
    let ctx1 = document.getElementById('pieChartCanvas1').getContext('2d');
    
    window.pieChart = new Chart(ctx1, {
        type: 'pie',
        data: pieChartData1,
        options: {
            responsive: false,
            legend: {
                display: false
            },
            legendCallback: customLegend
        }
    });
};


let customLegend = function (chart) {
    let ul = document.createElement('ul');
    let color = chart.data.datasets[0].backgroundColor;

    chart.data.labels.forEach(function (label, index) {
        ul.innerHTML += `<li><span style="background-color: ${color[index]}"></span>${label}</li>`;
    });

    return ul.outerHTML;
};

