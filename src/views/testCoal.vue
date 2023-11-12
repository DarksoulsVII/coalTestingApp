<template>
  <div>
    <el-card class="card">
      <div style="
            font-size: 20px;
            font-weight: 800;
            margin-left: 75px;
            margin-bottom: 30px;
          ">
            快速检测终端指标结果
      </div>
      <el-form label-position="left" label-width="100px"  >
        <el-form-item   class="inputDeep"  label="批次编号:">
          <el-input style="width:300px; "   v-model="code"></el-input>
        </el-form-item>
        <el-form-item  class="inputDeep" label="水分:">
          <el-input style="width:300px;"  v-model="water"></el-input>
        </el-form-item>
        <el-form-item  class="inputDeep" label="电阻率:">
          <el-input style="width:300px;"  v-model="Ele"></el-input>
        </el-form-item>
      </el-form>
    </el-card>
    <el-progress
      :text-inside="true"
      :stroke-width="24"
      :percentage="dlProgress"
      style="width:300px;margin-left: 60px;"></el-progress>
    <div v-if="dlProgress==100"  style="
            font-size: 24px;
            font-weight: 800;
            margin-left: 160px;
            margin-top: 20px;
            margin-bottom: 20px;
            color:green;
          ">
     下载完成✔
    </div>
    <el-card v-if="show" class="card">
      <div style="
            font-size: 20px;
            font-weight: 800;
            margin-left: 135px;
            margin-bottom: 20px;
          ">
        检   测     结     果
      </div>
      <el-form :inline="true" label-position="left" label-width="150px"  >
        <el-form-item   class="inputDeep2"  label="灰分:">
          <el-input style="width:120px; "   v-model="hui"></el-input>
          <el-input class="inputDeep" style="width:58px; "   v-model="A"></el-input>
        </el-form-item>
      </el-form>
      <el-form :inline="true" label-position="left" label-width="150px"  >
        <el-form-item  class="inputDeep2" label="挥发分:">
          <el-input style="width:120px;"  v-model="huifa"></el-input>
          <el-input class="inputDeep" style="width:58px; "   v-model="A"></el-input>
        </el-form-item>
      </el-form>
      <el-form :inline="true" label-position="left" label-width="150px"  >
        <el-form-item  class="inputDeep2" label="基低位发热量:">
          <el-input style="width:120px;"  v-model="hot"></el-input>
          <el-input class="inputDeep" style="width:68px; "   v-model="B"></el-input>
        </el-form-item>
      </el-form>
    </el-card>
    <el-form v-if="show">
      <el-form-item style="margin-bottom: 10px">
        <el-button style="font-size:20px;margin-left:30px;width:350px; height: 39px " type="primary" @click="next">查看报告</el-button>
      </el-form-item>
      <el-form-item>
        <el-button style="font-size:20px; margin-left:30px; width:350px; height: 39px "  @click="clue">清 空</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
import {left} from "core-js/internals/array-reduce";

export default {

  data() {
    return {
      code:"C1201J07",
      water:"13.89   %",
      Ele:"377   Ω",
      hui:"21.6",
      huifa:"27.05",
      hot:"4989",
      A:"%",
      B:"Cal",
      show:false,
      dlProgress:0,

    }
  },
mounted(){
this.ck();
},
  methods: {
    first() {
      this.$router.push({
        path: "/index",
      });
    },
    showChange() {
      this.show = true;
    },
    ck() {
      var interval=setInterval(()=>{
        this.dlProgress=this.dlProgress+20;
        if(this.dlProgress===100){
          clearInterval(interval);
          this.showChange();
        }
      },200)
    },
    next(){
      this.$parent.see();
    },
    clue() {
    },

  }
};
</script>
<style scoped>
.inputDeep>>>.el-input__inner {
  border: 0;
  text-align: center;
  font-size: 24px;
}
.inputDeep>>>.el-form-item__label{
  font-size: 18px;
}
.inputDeep2>>>.el-input__inner {
  text-align: center;
  font-size: 24px;
}
.inputDeep2>>>.el-form-item__label{
  font-size: 18px;
}

.labelSecondSize2>>>.el-form-item__label{
  font-size: 18px;
  margin-top: 20px;
  display: inline-block;

}

.card{
  margin-left: 10px;
  margin-bottom: 10px;
  margin-right: 10px;
  margin-top: 10px;
  height:260px;
}
</style>

