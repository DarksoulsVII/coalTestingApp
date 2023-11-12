<template>
  <div>
    <el-card class="card">
      <div style="
            font-size: 20px;
            font-weight: 800;
            margin-left: 100px;
            margin-bottom: 10px;

          ">
        指标结果记录详情
      </div>
      <el-form class="inputDeep"  label-position="left" label-width="150px"  >
        <el-form-item   class="el-form-item--mini"  label="批次编号:">
          <el-input style="width:200px;"   v-model="code"></el-input>
        </el-form-item>
        <el-form-item  class="el-form-item--mini" label="水分:">
          <el-input style="width:200px;"  v-model="water"></el-input>
        </el-form-item>
        <el-form-item  class="el-form-item--mini" label="灰分:">
          <el-input style="width:200px;"  v-model="hui"></el-input>
        </el-form-item>
      <el-form-item  class="el-form-item--mini" label="电阻率:">
        <el-input style="width:200px;"  v-model="Ele"></el-input>
      </el-form-item>
      <el-form-item  class="el-form-item--mini" label="挥发分:">
        <el-input style="width:200px;"  v-model="huifa"></el-input>
      </el-form-item>
        <el-form-item  class="el-form-item--mini" label="基低位发热量:">
          <el-input style="width:200px;"  v-model="hot"></el-input>
        </el-form-item>
        <el-form-item  class="el-form-item--mini" label="检测时间:">
          <el-input style="width:200px;"  v-model="time"></el-input>
        </el-form-item>
      </el-form>
    </el-card >
    <el-card class="card">
    <div style="text-align: center">
      <div style="
            font-size: 20px;
            font-weight: 800;
            margin-left: 10px;
            margin-bottom: 10px;
background: #d2e9ff;
width:100%;
          ">
        煤质分类结果
      </div>
      <p style="
            font-size: 24px;
            font-weight: 600;
            margin-left: 10px;
            margin-bottom: 30px;color:red;">中高发热量煤</p>
      <el-table :data="tableData" tooltip-effect="dark" :header-cell-style="{'text-align':'center'}" style="width: 100%">

        <el-table-column align="center"
          label="类别名称"
          width="180" prop="batchNumber">
        </el-table-column>
        <el-table-column align="center"
          label="发热量范围（MJ/kg）"
          width="180" prop="date">
        </el-table-column>
      </el-table>
    </div>
    </el-card>
  </div>

</template>
<script>
import {left} from "core-js/internals/array-reduce";

export default {

  data() {
    return {
      code:"C1201J07",
      water:"13.89 %",
      Ele:"377 Ω",
      hui:"21.6 %",
      huifa:"27.05 %",
      hot:"4989 Cal",
     time:"2023-02-11 10:32",
      batchNumber:"",
      tableData: [{
        date: '>25.51',
        batchNumber: '高发热量煤',
      }, {
        date: '24.41-25.50',
        batchNumber: '中发热量煤',

      }, {
        date: '<22.40',
        batchNumber: '低发热量煤',

      },
      ],
      formInline: {
        user: '',
        region: ''
      }
    }
  },

  methods: {
    left,
    first() {
      this.$router.push({
        path: "/index",
      });
    },
    showChange(){
      this.show=true;
    },
    next(){
      this.$parent.see();
    },
    clue(){
    }
  },
};
</script>
<style scoped>
.inputDeep>>>.el-input__inner {
  border: 0;
  text-align: right;
  font-size: 18px;
  height: 15px;
}
.inputDeep>>>.el-form-item__label{
  font-size: 16px;
  height: 15px;
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
  height:380px;
}

</style>

