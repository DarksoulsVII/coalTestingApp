<template>
  <div>
    <el-card class="card">
      <div style="
            font-size: 20px;
            font-weight: 800;
            margin-left: 100px;
            margin-bottom: 20px;

          ">
        终 端 数 据 查 看
      </div>
      <el-form label-position="left" label-width="100px"  >
        <el-form-item   class="inputDeep"  label="批次编号:">
            <el-input style="width:300px; "   v-model="code"></el-input>
        </el-form-item>
        <el-form-item  class="inputDeep" label="设备:">
          <el-input style="width:300px;"  v-model="device"></el-input>
        </el-form-item>
        <el-form-item  class="inputDeep" label="矿区:">
          <el-input style="width:300px;"  v-model="location"></el-input>
        </el-form-item>
      </el-form>
      <el-form :inline="true">
        <el-form-item  class="labelSize" label="水分:">
          <el-input style="width:150px;"  v-model="water"></el-input>
        </el-form-item>
        <el-form-item class="labelSecondSize" label="%">
        </el-form-item>
      </el-form>
      <el-form :inline="true">
        <el-form-item  class="labelSize2" label="电阻率:">
          <el-input style="width:150px;"  v-model="water"></el-input>
        </el-form-item>
        <el-form-item class="labelSecondSize2" label="Ω">
        </el-form-item>
      </el-form>
      <el-form :inline="true">
        <el-form-item class="labelSize3" label="检测时间:">
          <el-date-picker display="none" type="datetime" style="width:195px;line-height: 50px"  v-model="time"></el-date-picker>
        </el-form-item>
      </el-form>
      <el-form>
        <el-form-item style="margin-bottom: 10px">
          <el-button style=" font-size:20px;width:350px; height: 50px " type="primary" icon="el-icon-download" @click="next">获取检测结果</el-button>
        </el-form-item>
        <el-form-item>
          <el-button style="font-size:20px;width:350px; height: 50px "  @click="clue">清空</el-button>
        </el-form-item>
      </el-form>

    </el-card>
  </div>
</template>
<script>
import {left} from "core-js/internals/array-reduce";
export default {

  data() {
    return {
     code:"C1201J07",
      device:"BearPI",
      water:"13.89",
      location:"忻州宏远矿区",
      time:"2023-02-11 10:32",
    }
  },

  methods: {
    left,
    first() {
      this.$router.push({
        path: "/index",
      });
    },
next(){
  this.$parent.test();
},
    clue(){
    }
  },
};
</script>
<style scoped>
.inputDeep>>>.el-input__inner {
  border: 0;
  text-align: center;
  font-size: 24px;
  margin-bottom: 10px;
}
.inputDeep>>>.el-form-item__label{
  font-size: 18px;
}
.labelSize{
  padding:15px 40px 30px 50px;
}
.labelSize>>>.el-form-item__label{
  font-size: 18px;
  vertical-align:middle;
  line-height: 50px;
}
.labelSize2{
  padding:15px 40px 20px 30px;
}
.labelSize2>>>.el-form-item__label{
  font-size: 18px;
  vertical-align:middle;
  line-height: 50px;

}
.labelSize3{
  padding:15px 40px 20px 15px;
}
.labelSize3>>>.el-form-item__label{
  font-size: 18px;
  vertical-align:middle;
  line-height: 50px;
}
.labelSize2>>>.el-input__inner {
  text-align: center;
  font-size: 24px;
  height: 50px;
  vertical-align:middle;
  margin-left: 18px;
  margin-bottom: 10px;

}
.labelSecondSize>>>.el-form-item__label{
  font-size: 20px;
  line-height: 80px;

}
.labelSecondSize2>>>.el-form-item__label{
  font-size: 20px;
  line-height: 80px;
  margin-top: 5px;
}
.labelSize3>>>.el-input__inner {
  font-size: 14px;
  height: 50px;
  margin-left: 16px;

}
.labelSize>>>.el-input__inner {
  text-align: center;
  font-size: 24px;
  height: 50px;
  vertical-align:middle;
  margin-left: 18px;
}
.el-date-editor {
  position: relative;
  .el-input__prefix {
    margin-left: 10px}}

.card{
  margin-left: 10px;
  margin-bottom: 10px;
  margin-right: 10px;
  margin-top: 10px;

}
</style>

