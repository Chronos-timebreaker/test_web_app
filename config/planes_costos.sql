SELECT FIRST 100
  PRECONTRA.rec_con AS FOLIO,
  PRECONTRA.cve_dst AS FRZAVENTA,
  PRECONTRA.num_cel AS CELULAR,
  PRECONTRA.mar_eqp AS MARCA,
  PRECONTRA.mod_elo AS EQUIPO,
  PRECONTRA.pla_con,
  CG_PLANES_CONTRATO.v_nombre_comercial,
  --PLANES_REG.plan_desc_txt,
  
  CG_PLANES_CONTRATO.dc_cargo_fijo_mensual,

  CG_PLANES_CONTRATO.dc_renta_sin_iva,
  CG_PLANES_CONTRATO.dc_renta_con_iva_16,
  CG_PLANES_CONTRATO.dc_deposito_adendum,
  CG_PLANES_CONTRATO.v_mercado,
  CG_PLANES_CONTRATO.v_plazo,
  
  --PLANES_REG.plan_renta,
  --PLANES_REG.plan_lim_cred_vt,
  --PLANES_REG.plan_lim_cred_bn,
  --PLANES_REG.plan_pena_conv,
  
  PRECONTRA_FINAN.dc_anticipo_volunt,
  PRECONTRA_FINAN.dc_monto_parcial,
  PRECONTRA_FINAN.dc_cost_epo,
  PRECONTRA_FINAN.dc_interes,
  PRECONTRA_FINAN.dc_limite_finan,
  PRECONTRA_FINAN.dc_mont_financiado,
  PRECONTRA_FINAN.dc_monto_total,
  PRECONTRA_FINAN.dc_monto_inicial
  
FROM PRECONTRA
--inner join planes_reg on precontra.pla_con = planes_reg.plan_cd
--JOIN PLANES_REG ON PRECONTRA.rec_con = PLANES_REG.clave AND PRECONTRA.cve_dst = PLANES_REG.plan_cd
inner JOIN PRECONTRA_FINAN ON PRECONTRA.rec_con = PRECONTRA_FINAN.i_rec_con AND PRECONTRA.cve_dst = PRECONTRA_FINAN.v_cve_dst
INNER JOIN CG_PLANES_CONTRATO ON PRECONTRA.pla_con = CG_PLANES_CONTRATO.v_clave_plan;



--SELECT FIRST 100 * FROM PRECONTRA;
--SELECT FIRST 100 * FROM PRECONTRA_GSM;--- IMEI ICCEI 
--SELECT FIRST 100 * FROM PLANES_REG;
--SELECT FIRST 100 * FROM TG_PLANES;
--SELECT FIRST 100 * FROM PRECONTRA_FINAN;
--SELECT FIRST 100 *FROM T_INFOEVALUADOR;
--SELECT FIRST 1000 * FROM CG_PLANES_CONTRATO;
--SELECT FIRST 100 * FROM CG_PLANES;------- NO ABRE CGPLANES?
--SELECT FIRST 100 * FROM CICLOS;---------NO ABRE 
--PLANES_REG      ---TIENE REC_CON Y CVE_DST
--PRECONTRA_FINAN    --- TIENEN I_REC_CON Y V_CVE_DST Y REGION


