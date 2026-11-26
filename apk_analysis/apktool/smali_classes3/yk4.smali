.class public final Lyk4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltd4$a;

.field public static final b:Ltd4$a;

.field public static final c:Ltd4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v24, "ao"

    const-string v25, "bm"

    const-string v1, "nm"

    const-string v2, "ind"

    const-string v3, "refId"

    const-string v4, "ty"

    const-string v5, "parent"

    const-string v6, "sw"

    const-string v7, "sh"

    const-string v8, "sc"

    const-string v9, "ks"

    const-string v10, "tt"

    const-string v11, "masksProperties"

    const-string v12, "shapes"

    const-string v13, "t"

    const-string v14, "ef"

    const-string v15, "sr"

    const-string v16, "st"

    const-string v17, "w"

    const-string v18, "h"

    const-string v19, "ip"

    const-string v20, "op"

    const-string v21, "tm"

    const-string v22, "cl"

    const-string v23, "hd"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lyk4;->a:Ltd4$a;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lyk4;->b:Ltd4$a;

    const-string v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lyk4;->c:Ltd4$a;

    return-void
.end method

.method public static a(Lhe4;Lnw4;)Lxk4;
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    sget-object v4, Lxk4$b;->NONE:Lxk4$b;

    sget-object v5, Lbh4;->NORMAL:Lbh4;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lhe4;->n()V

    const-string v6, "UNSET"

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v22, v4

    move-object/from16 v27, v5

    move/from16 v18, v7

    move/from16 v19, v18

    move/from16 v28, v19

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v37, v30

    move v4, v14

    move/from16 v24, v4

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v31, v26

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-wide/from16 v49, v15

    move v15, v3

    move-wide/from16 v16, v12

    const/4 v3, 0x0

    move-object v12, v6

    move-object v13, v8

    move-wide/from16 v7, v49

    :goto_0
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    if-eqz v5, :cond_45

    sget-object v5, Lyk4;->a:Ltd4$a;

    invoke-virtual {v0, v5}, Lhe4;->X(Ltd4$a;)I

    move-result v5

    const/16 v38, -0x1

    const/4 v11, 0x1

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    goto/16 :goto_23

    :pswitch_0
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v5

    invoke-static {}, Lbh4;->values()[Lbh4;

    move-result-object v6

    array-length v6, v6

    if-lt v5, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported Blend Mode: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnw4;->a(Ljava/lang/String;)V

    sget-object v27, Lbh4;->NORMAL:Lbh4;

    goto :goto_0

    :cond_0
    invoke-static {}, Lbh4;->values()[Lbh4;

    move-result-object v6

    aget-object v27, v6, v5

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v4

    if-ne v4, v11, :cond_1

    move v4, v11

    goto :goto_0

    :cond_1
    move v4, v14

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v31

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, v14}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v36

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v19, v5

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v18, v5

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    invoke-static {}, Lib9;->c()F

    move-result v11

    move/from16 v40, v15

    float-to-double v14, v11

    mul-double/2addr v5, v14

    double-to-float v5, v5

    move/from16 v29, v5

    :goto_1
    move/from16 v15, v40

    :goto_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_8
    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    invoke-static {}, Lib9;->c()F

    move-result v11

    float-to-double v14, v11

    mul-double/2addr v5, v14

    double-to-float v5, v5

    move/from16 v28, v5

    goto :goto_1

    :pswitch_9
    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v30, v5

    goto :goto_2

    :pswitch_a
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v5

    double-to-float v15, v5

    goto :goto_2

    :pswitch_b
    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->m()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-virtual {v0}, Lhe4;->n()V

    :cond_2
    :goto_4
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_1c

    sget-object v14, Lyk4;->c:Ltd4$a;

    invoke-virtual {v0, v14}, Lhe4;->X(Ltd4$a;)I

    move-result v14

    if-eqz v14, :cond_5

    if-eq v14, v11, :cond_4

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    :cond_3
    :goto_5
    move-object/from16 v48, v2

    goto/16 :goto_f

    :cond_4
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v14

    const/16 v15, 0x1d

    if-ne v14, v15, :cond_e

    sget-object v14, Ljk0;->a:Ltd4$a;

    const/16 v32, 0x0

    :goto_6
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Ljk0;->a:Ltd4$a;

    invoke-virtual {v0, v14}, Lhe4;->X(Ltd4$a;)I

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lhe4;->m()V

    :cond_7
    :goto_7
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v41

    if-eqz v41, :cond_c

    sget-object v6, Ljk0;->b:Ltd4$a;

    invoke-virtual {v0, v6}, Lhe4;->X(Ltd4$a;)I

    move-result v6

    if-eqz v6, :cond_a

    if-eq v6, v11, :cond_8

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_8

    :cond_8
    if-eqz v14, :cond_9

    new-instance v15, Lik0;

    invoke-static {v0, v1, v11}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v6

    invoke-direct {v15, v6}, Lik0;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v6

    if-nez v6, :cond_b

    move v14, v11

    goto :goto_8

    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lhe4;->p()V

    if-eqz v15, :cond_7

    move-object/from16 v32, v15

    goto :goto_7

    :cond_d
    invoke-virtual {v0}, Lhe4;->o()V

    goto :goto_6

    :cond_e
    const/16 v6, 0x19

    if-ne v14, v6, :cond_3

    new-instance v6, Lgt2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :goto_9
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_19

    sget-object v14, Lgt2;->f:Ltd4$a;

    invoke-virtual {v0, v14}, Lhe4;->X(Ltd4$a;)I

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_9

    :cond_f
    invoke-virtual {v0}, Lhe4;->m()V

    :goto_a
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v0}, Lhe4;->n()V

    const-string v14, ""

    :goto_b
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v15

    if-eqz v15, :cond_17

    sget-object v15, Lgt2;->g:Ltd4$a;

    invoke-virtual {v0, v15}, Lhe4;->X(Ltd4$a;)I

    move-result v15

    if-eqz v15, :cond_16

    if-eq v15, v11, :cond_10

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_c
    move/from16 v15, v38

    goto :goto_d

    :sswitch_0
    const-string v15, "Softness"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_c

    :cond_11
    const/4 v15, 0x4

    goto :goto_d

    :sswitch_1
    const-string v15, "Shadow Color"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_c

    :cond_12
    const/4 v15, 0x3

    goto :goto_d

    :sswitch_2
    const-string v15, "Direction"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto :goto_c

    :cond_13
    const/4 v15, 0x2

    goto :goto_d

    :sswitch_3
    const-string v15, "Opacity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto :goto_c

    :cond_14
    move v15, v11

    goto :goto_d

    :sswitch_4
    const-string v15, "Distance"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto :goto_c

    :cond_15
    const/4 v15, 0x0

    :goto_d
    packed-switch v15, :pswitch_data_1

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_e

    :pswitch_c
    invoke-static {v0, v1, v11}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v15

    iput-object v15, v6, Lgt2;->e:Ldl;

    goto :goto_e

    :pswitch_d
    invoke-static/range {p0 .. p1}, Ltl;->c(Lhe4;Lnw4;)Lcl;

    move-result-object v15

    iput-object v15, v6, Lgt2;->a:Lcl;

    goto :goto_e

    :pswitch_e
    const/4 v15, 0x0

    invoke-static {v0, v1, v15}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v11

    iput-object v11, v6, Lgt2;->c:Ldl;

    goto :goto_e

    :pswitch_f
    const/4 v15, 0x0

    invoke-static {v0, v1, v15}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v11

    iput-object v11, v6, Lgt2;->b:Ldl;

    goto :goto_e

    :pswitch_10
    invoke-static {v0, v1, v11}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v15

    iput-object v15, v6, Lgt2;->d:Ldl;

    :goto_e
    const/4 v11, 0x1

    goto/16 :goto_b

    :cond_16
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_17
    invoke-virtual {v0}, Lhe4;->p()V

    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_18
    invoke-virtual {v0}, Lhe4;->o()V

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_19
    iget-object v11, v6, Lgt2;->a:Lcl;

    if-eqz v11, :cond_1a

    iget-object v14, v6, Lgt2;->b:Ldl;

    if-eqz v14, :cond_1a

    iget-object v15, v6, Lgt2;->c:Ldl;

    if-eqz v15, :cond_1a

    move-object/from16 v48, v2

    iget-object v2, v6, Lgt2;->d:Ldl;

    if-eqz v2, :cond_1b

    iget-object v6, v6, Lgt2;->e:Ldl;

    if-eqz v6, :cond_1b

    new-instance v42, Lft2;

    move-object/from16 v46, v2

    move-object/from16 v47, v6

    move-object/from16 v43, v11

    move-object/from16 v44, v14

    move-object/from16 v45, v15

    invoke-direct/range {v42 .. v47}, Lft2;-><init>(Lcl;Ldl;Ldl;Ldl;Ldl;)V

    move-object/from16 v33, v42

    goto :goto_f

    :cond_1a
    move-object/from16 v48, v2

    :cond_1b
    const/16 v33, 0x0

    :goto_f
    move-object/from16 v2, v48

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v48, v2

    invoke-virtual {v0}, Lhe4;->p()V

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v48, v2

    invoke-virtual {v0}, Lhe4;->o()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    :goto_10
    move/from16 v15, v40

    move-object/from16 v2, v48

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v48, v2

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->n()V

    :goto_11
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lyk4;->b:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_33

    const/4 v11, 0x1

    if-eq v2, v11, :cond_1e

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_11

    :cond_1e
    invoke-virtual {v0}, Lhe4;->m()V

    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lnl;->a:Ltd4$a;

    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Lnl;->a:Ltd4$a;

    invoke-virtual {v0, v6}, Lhe4;->X(Ltd4$a;)I

    move-result v6

    if-eqz v6, :cond_26

    const/4 v11, 0x1

    if-eq v6, v11, :cond_1f

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_12

    :cond_1f
    invoke-virtual {v0}, Lhe4;->n()V

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    :goto_13
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_25

    sget-object v2, Lnl;->c:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_24

    if-eq v2, v11, :cond_23

    const/4 v6, 0x2

    if-eq v2, v6, :cond_22

    const/4 v6, 0x3

    if-eq v2, v6, :cond_21

    const/4 v6, 0x4

    if-eq v2, v6, :cond_20

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_13

    :cond_20
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v47

    goto :goto_13

    :cond_21
    const/4 v6, 0x4

    invoke-static {v0, v1, v11}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v46

    goto :goto_13

    :cond_22
    const/4 v6, 0x4

    invoke-static {v0, v1, v11}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v45

    goto :goto_13

    :cond_23
    const/4 v6, 0x4

    invoke-static/range {p0 .. p1}, Ltl;->c(Lhe4;Lnw4;)Lcl;

    move-result-object v44

    :goto_14
    const/4 v11, 0x1

    goto :goto_13

    :cond_24
    const/4 v6, 0x4

    invoke-static/range {p0 .. p1}, Ltl;->c(Lhe4;Lnw4;)Lcl;

    move-result-object v43

    goto :goto_14

    :cond_25
    const/4 v6, 0x4

    invoke-virtual {v0}, Lhe4;->p()V

    new-instance v42, Lpl;

    invoke-direct/range {v42 .. v47}, Lpl;-><init>(Lcl;Lcl;Ldl;Ldl;Lfl;)V

    move-object/from16 v2, v42

    goto :goto_12

    :cond_26
    const/4 v6, 0x4

    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_15
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v35

    if-eqz v35, :cond_2e

    sget-object v6, Lnl;->b:Ltd4$a;

    invoke-virtual {v0, v6}, Lhe4;->X(Ltd4$a;)I

    move-result v6

    if-eqz v6, :cond_2d

    move-object/from16 v42, v3

    const/4 v3, 0x1

    if-eq v6, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v6, v3, :cond_2b

    const/4 v3, 0x3

    if-eq v6, v3, :cond_27

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    :goto_16
    move-object/from16 v3, v42

    :goto_17
    const/4 v6, 0x4

    goto :goto_15

    :cond_27
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v6

    const/4 v15, 0x1

    if-eq v6, v15, :cond_29

    const/4 v15, 0x2

    if-eq v6, v15, :cond_28

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported text range units: "

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnw4;->a(Ljava/lang/String;)V

    sget-object v15, Lts8;->INDEX:Lts8;

    goto :goto_16

    :cond_28
    const/4 v15, 0x1

    :cond_29
    if-ne v6, v15, :cond_2a

    sget-object v3, Lts8;->PERCENT:Lts8;

    :goto_18
    move-object v15, v3

    goto :goto_16

    :cond_2a
    sget-object v3, Lts8;->INDEX:Lts8;

    goto :goto_18

    :cond_2b
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v14

    goto :goto_16

    :cond_2c
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v11

    goto :goto_16

    :cond_2d
    move-object/from16 v42, v3

    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v5

    goto :goto_17

    :cond_2e
    move-object/from16 v42, v3

    invoke-virtual {v0}, Lhe4;->p()V

    if-nez v5, :cond_2f

    if-eqz v11, :cond_2f

    new-instance v5, Lfl;

    new-instance v3, Lvf4;

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6}, Lvf4;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Lu1;-><init>(Ljava/util/List;)V

    :cond_2f
    new-instance v3, Lol;

    invoke-direct {v3, v5, v11, v14, v15}, Lol;-><init>(Lfl;Lfl;Lfl;Lts8;)V

    move-object v5, v3

    move-object/from16 v3, v42

    goto/16 :goto_12

    :cond_30
    move-object/from16 v42, v3

    invoke-virtual {v0}, Lhe4;->p()V

    new-instance v3, Lml;

    invoke-direct {v3, v2, v5}, Lml;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v35, v3

    goto :goto_19

    :cond_31
    move-object/from16 v42, v3

    :goto_19
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_19

    :cond_32
    invoke-virtual {v0}, Lhe4;->o()V

    :goto_1a
    move-object/from16 v3, v42

    goto/16 :goto_11

    :cond_33
    move-object/from16 v42, v3

    new-instance v2, Lll;

    invoke-static {}, Lib9;->c()F

    move-result v3

    sget-object v5, Lcq2;->b:Lcq2;

    const/4 v15, 0x0

    invoke-static {v0, v1, v3, v5, v15}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Lu1;-><init>(Ljava/util/List;)V

    move-object/from16 v34, v2

    goto :goto_1a

    :cond_34
    move-object/from16 v42, v3

    invoke-virtual {v0}, Lhe4;->p()V

    goto/16 :goto_10

    :pswitch_12
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->m()V

    :cond_35
    :goto_1b
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static/range {p0 .. p1}, Ley1;->a(Lhe4;Lnw4;)Ldy1;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_36
    invoke-virtual {v0}, Lhe4;->o()V

    const/4 v14, 0x0

    goto/16 :goto_23

    :pswitch_13
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->m()V

    :goto_1c
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_1d
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-virtual {v0}, Lhe4;->x0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_1e
    move/from16 v11, v38

    goto :goto_1f

    :sswitch_5
    const-string v11, "mode"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    goto :goto_1e

    :cond_37
    const/4 v11, 0x3

    goto :goto_1f

    :sswitch_6
    const-string v11, "inv"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    goto :goto_1e

    :cond_38
    const/4 v11, 0x2

    goto :goto_1f

    :sswitch_7
    const-string v11, "pt"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    goto :goto_1e

    :cond_39
    const/4 v11, 0x1

    goto :goto_1f

    :sswitch_8
    const-string v11, "o"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3a

    goto :goto_1e

    :cond_3a
    const/4 v11, 0x0

    :goto_1f
    packed-switch v11, :pswitch_data_2

    invoke-virtual {v0}, Lhe4;->e0()V

    :goto_20
    const/4 v14, 0x0

    goto :goto_1d

    :pswitch_14
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    :goto_21
    move/from16 v2, v38

    goto :goto_22

    :sswitch_9
    const-string v11, "s"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_21

    :cond_3b
    const/4 v2, 0x3

    goto :goto_22

    :sswitch_a
    const-string v11, "n"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_21

    :cond_3c
    const/4 v2, 0x2

    goto :goto_22

    :sswitch_b
    const-string v11, "i"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_21

    :cond_3d
    const/4 v2, 0x1

    goto :goto_22

    :sswitch_c
    const-string v11, "a"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_21

    :cond_3e
    const/4 v2, 0x0

    :goto_22
    packed-switch v2, :pswitch_data_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Unknown mask mode "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Defaulting to Add."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgv4;->b(Ljava/lang/String;)V

    sget-object v2, Li15$a;->MASK_MODE_ADD:Li15$a;

    goto :goto_20

    :pswitch_15
    sget-object v2, Li15$a;->MASK_MODE_SUBTRACT:Li15$a;

    goto :goto_20

    :pswitch_16
    sget-object v2, Li15$a;->MASK_MODE_NONE:Li15$a;

    goto :goto_20

    :pswitch_17
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    sget-object v2, Li15$a;->MASK_MODE_INTERSECT:Li15$a;

    goto :goto_20

    :pswitch_18
    sget-object v2, Li15$a;->MASK_MODE_ADD:Li15$a;

    goto :goto_20

    :pswitch_19
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v6

    move v15, v6

    goto :goto_20

    :pswitch_1a
    new-instance v3, Ljl;

    invoke-static {}, Lib9;->c()F

    move-result v6

    sget-object v11, Ltr7;->b:Ltr7;

    const/4 v14, 0x0

    invoke-static {v0, v1, v6, v11, v14}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v3, v6}, Lu1;-><init>(Ljava/util/List;)V

    goto/16 :goto_1d

    :pswitch_1b
    const/4 v14, 0x0

    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v5

    goto/16 :goto_1d

    :cond_3f
    const/4 v14, 0x0

    invoke-virtual {v0}, Lhe4;->p()V

    new-instance v6, Li15;

    invoke-direct {v6, v2, v3, v5, v15}, Li15;-><init>(Li15$a;Ljl;Lfl;Z)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_40
    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lnw4;->p:I

    add-int/2addr v3, v2

    iput v3, v1, Lnw4;->p:I

    invoke-virtual {v0}, Lhe4;->o()V

    goto :goto_23

    :pswitch_1c
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    invoke-static {}, Lxk4$b;->values()[Lxk4$b;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported matte type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    :cond_41
    :goto_23
    move/from16 v15, v40

    :goto_24
    move-object/from16 v3, v42

    :goto_25
    move-object/from16 v2, v48

    goto/16 :goto_0

    :cond_42
    invoke-static {}, Lxk4$b;->values()[Lxk4$b;

    move-result-object v3

    aget-object v22, v3, v2

    sget-object v2, Lyk4$a;->a:[I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v11, 0x1

    if-eq v2, v11, :cond_44

    const/4 v15, 0x2

    if-eq v2, v15, :cond_43

    goto :goto_26

    :cond_43
    const-string v2, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    goto :goto_26

    :cond_44
    const-string v2, "Unsupported matte type: Luma"

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    :goto_26
    iget v2, v1, Lnw4;->p:I

    add-int/2addr v2, v11

    iput v2, v1, Lnw4;->p:I

    goto :goto_23

    :pswitch_1d
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-static/range {p0 .. p1}, Lrl;->c(Lhe4;Lnw4;)Lql;

    move-result-object v20

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    goto :goto_25

    :pswitch_1f
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lib9;->c()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v25, v2

    goto :goto_24

    :pswitch_20
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lib9;->c()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v24, v2

    goto :goto_24

    :pswitch_21
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    int-to-long v7, v2

    goto :goto_25

    :pswitch_22
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    sget-object v21, Lxk4$a;->UNKNOWN:Lxk4$a;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_41

    invoke-static {}, Lxk4$a;->values()[Lxk4$a;

    move-result-object v3

    aget-object v21, v3, v2

    goto/16 :goto_23

    :pswitch_23
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :pswitch_24
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    int-to-long v2, v2

    move-wide/from16 v16, v2

    goto/16 :goto_24

    :pswitch_25
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_45
    move-object/from16 v48, v2

    move-object/from16 v42, v3

    move/from16 v40, v15

    invoke-virtual {v0}, Lhe4;->p()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v18, v37

    if-lez v0, :cond_46

    new-instance v0, Lvf4;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move v14, v4

    const/4 v4, 0x0

    move-object/from16 v3, v48

    move v15, v14

    move-object/from16 v14, v42

    move-object/from16 v2, v48

    invoke-direct/range {v0 .. v6}, Lvf4;-><init>(Lnw4;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_46
    move v15, v4

    move-object/from16 v14, v42

    :goto_27
    cmpl-float v0, v19, v37

    if-lez v0, :cond_47

    goto :goto_28

    :cond_47
    iget v0, v1, Lnw4;->m:F

    move/from16 v19, v0

    :goto_28
    new-instance v0, Lvf4;

    const/4 v4, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v3, v13

    move-object v2, v13

    move/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lvf4;-><init>(Lnw4;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lvf4;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v3, v48

    move-object/from16 v1, p1

    move/from16 v5, v19

    move-object/from16 v2, v48

    invoke-direct/range {v0 .. v6}, Lvf4;-><init>(Lnw4;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "ai"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_48
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v1, v0}, Lnw4;->a(Ljava/lang/String;)V

    :cond_49
    if-eqz v15, :cond_4b

    if-nez v20, :cond_4a

    new-instance v0, Lql;

    invoke-direct {v0}, Lql;-><init>()V

    goto :goto_29

    :cond_4a
    move-object/from16 v0, v20

    :goto_29
    iput-boolean v15, v0, Lql;->m:Z

    move-object/from16 v20, v0

    :cond_4b
    new-instance v0, Lxk4;

    move-object v2, v1

    move-object v1, v9

    move-object v3, v12

    move-wide/from16 v4, v16

    move-object/from16 v6, v21

    move-object/from16 v9, v23

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v17, v28

    move/from16 v18, v29

    move/from16 v16, v30

    move/from16 v24, v31

    move-object/from16 v25, v32

    move-object/from16 v26, v33

    move-object/from16 v19, v34

    move-object/from16 v23, v36

    move/from16 v15, v40

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v35

    invoke-direct/range {v0 .. v27}, Lxk4;-><init>(Ljava/util/List;Lnw4;Ljava/lang/String;JLxk4$a;JLjava/lang/String;Ljava/util/List;Lql;IIIFFFFLll;Lml;Ljava/util/List;Lxk4$b;Ldl;ZLik0;Lft2;Lbh4;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method
