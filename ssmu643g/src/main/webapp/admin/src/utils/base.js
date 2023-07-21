const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmu643g/",
            name: "ssmu643g",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmu643g/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "酒店客房管理信息系统"
        } 
    }
}
export default base
