const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot7z60r/",
            name: "springboot7z60r",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot7z60r/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "农产品商城网站"
        } 
    }
}
export default base
