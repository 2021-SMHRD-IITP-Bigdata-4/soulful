window.onload = function () {
    pieChartDraw2();
       document.getElementById('legend-div2').innerHTML = window.pieChart.generateLegend();
       pieChartDraw3();
       document.getElementById('legend-div3').innerHTML = window.pieChart.generateLegend();
   }
let pieChartData2 = {
    labels: ['기쁨', '슬픔', '편안', '흥분'],
    datasets: [{
        data: [71, 10, 15, 5],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};
let pieChartData3 = {
    labels: ['머', '버', '서', '어'],
    datasets: [{
        data: [70, 80, 85, 30],
        backgroundColor: ['rgb(198, 162, 198)', 'rgb(161, 137, 185)', 'rgb(188, 143, 143)', 'rgb(217, 177, 155)']
    }] 
};

let pieChartDraw2 = function () {
    let ctx2 = document.getElementById('pieChartCanvas2').getContext('2d');
    
    window.pieChart = new Chart(ctx2, {
        type: 'pie',
        data: pieChartData2,
        options: {
            responsive: false,
            legend: {
                display: false
            },
            legendCallback: customLegend
        }
    });
};
let pieChartDraw3 = function () {
    let ctx3 = document.getElementById('pieChartCanvas3').getContext('2d');
    
    window.pieChart = new Chart(ctx3, {
        type: 'pie',
        data: pieChartData3,
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
        ul.innerHTML += `<li><span style="background-color: ${color[index]}";></span>${label}</li>`;
    });

    return ul.outerHTML;
};
