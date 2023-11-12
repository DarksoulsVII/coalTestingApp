<template>
  <div>
    <div>
      <div style="width: 100%; background: #d2e9ff; border-radius: 0">
        <el-button @click="first">退出</el-button>
        <p style="
            font-family: Arial;
            font-size: 20px;
            font-weight: 800;
            display: inline-block;
            margin-left: 85px;
          ">
          煤质指标分析
        </p>
      </div>
    </div>
    <el-row>
      <el-col :span="8">
        <el-button
          style="width:138px;height:40px;padding:8px 8px 8px 8px" type="primary" :plain="plain1" icon="el-icon-receiving"  @click="look">查看终端数据
        </el-button>
      </el-col>
      <el-col :span="8">
        <el-button style="width:138px;height:40px;padding:8px 8px 8px 8px" :plain="plain2" icon="el-icon-document-checked"
                   type="primary" @click="test">获取检测结果
        </el-button>
      </el-col>
      <el-col :span="8">
        <el-button style="width:137px;height:40px;padding:8px 8px 8px 8px" :plain="plain3" type="primary" icon="el-icon-search"
                    @click="see">检测报告查看
        </el-button>
      </el-col>
    </el-row>
    <child v-if="change1"></child>
    <child2 v-if="change2"></child2>
    <child3 v-if="change3"></child3>

  </div>
</template>

<script>
import Child from '@/views/lookData.vue'
import Child2 from '@/views/testCoal.vue'
import Child3 from '@/views/seeReport.vue'
import Child4 from '@/views/test/coal/step4.vue'

export default {
  components: {
    Child, Child2, Child3, Child4
  },
  data() {
    return {
      change1: false,
      change2: false,
      change3: false,
     plain1:true,
      plain2:true,
      plain3:true,
    }
  },
  mounted() {
    this.change1 = true;
this.plain1=false;
  },
  methods: {
    first() {
      this.$router.push({
        path: "/index",
      });
    },
    analyse() {
      this.$router.push({
        path: "/coalAnalyse",
      });
    },
    look() {
      this.change1 = true;
      this.change2 = false;
      this.change3 = false;
      this.plain1=false;
      this.plain2=true;
      this.plain3=true;
    },
    test() {
      this.change1 = false;
      this.change2 = true;
      this.change3 = false;
      this.plain1=true;
      this.plain2=false;
      this.plain3=true;
    },
    see() {
      this.change1 = false;
      this.change2 = false;
      this.change3 = true;
      this.plain1=true;
      this.plain2=true;
      this.plain3=false;
    },
  },
};
</script>
<style scoped>
.pos {
  margin-bottom: 10px;
}

.el-button:hover {
  background: #0097ff;
  color: #ffffff;
  border: 1px solid #31b4ff;
}

.el-button:focus {
  background: #0097ff;
  color: #ffffff;
  border: 1px solid #31b4ff;
}
.lay1{
  display: block !important;background: #ebf6fd;color: #3794ff;border: 1px solid #9bdcff;width:138px;height:40px;padding:8px 8px 8px 8px
}
.lay2{
  display: block !important;  background: #0097ff;
  color: #ffffff;
  border: 1px solid #31b4ff;width:138px;height:40px;padding:8px 8px 8px 8px
}
</style>

