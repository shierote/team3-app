window.draw_graph = ->
    ctx = document.getElementById("myChart").getContext('2d')
    ctx2 = document.getElementById("myChart2").getContext('2d')

    myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["7月", "8月", "9月", "10月", "11月", "12月"],
            datasets: [{
                label: '水道代',
                lineTension: 0,
                fill: false,
                data: [4000, 3347, 4239, 6230, 7458, 3485],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                ],
                borderWidth: 2
            },{
                label: 'ガス代',
                lineTension: 0,
                fill: false,
                data: [4290, 3227, 4339, 6440, 1178, 1385],
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)',
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)',
                ],
                borderWidth: 2
            },{
                label: '電気代',
                lineTension: 0,
                fill: false,
                data: [1190, 3337, 4449, 6340, 2578, 2485],
                backgroundColor: [
                    'rgba(255, 206, 86, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 206, 86, 1)',
                ],
                borderWidth: 2
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:false
                    }
                }]
            }
        }
    })

    myChart2 = new Chart(ctx2, {
        type: 'line',
        data: {
            labels: ["7月", "8月", "9月", "10月", "11月", "12月"],
            datasets: [{
                label: 'スコアの推移',
                lineTension: 0,
                fill: false,
                data: [40, 37, 49, 60, 78, 85],
                backgroundColor: [
                    'rgba(153, 102, 255, 0.2)',
                ],
                borderColor: [
                  'rgba(153, 102, 255, 1)',
                ],
                borderWidth: 4
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:false
                    }
                }]
            }
        }
    })
