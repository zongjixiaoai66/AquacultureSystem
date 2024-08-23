const base = {
    get() {
        return {
            url : "http://localhost:8080/shuichanyangzhi/",
            name: "shuichanyangzhi",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/shuichanyangzhi/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "水产养殖系统"
        } 
    }
}
export default base
