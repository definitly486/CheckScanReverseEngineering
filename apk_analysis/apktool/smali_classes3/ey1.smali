.class public final Ley1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltd4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Ley1;->a:Ltd4$a;

    return-void
.end method

.method public static a(Lhe4;Lnw4;)Ldy1;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v3, 0x2

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    sget-object v5, Ley1;->a:Ltd4$a;

    invoke-virtual {v0, v5}, Lhe4;->X(Ltd4$a;)I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-nez v5, :cond_3

    return-object v7

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    sparse-switch v8, :sswitch_data_0

    :goto_2
    const/4 v8, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "tr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "tm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "st"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "sr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "sh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v8, "rp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v8, "rd"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_7
    const-string v8, "rc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_8
    const-string v8, "mm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    move v8, v10

    goto :goto_3

    :sswitch_9
    const-string v8, "gs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_2

    :cond_d
    move v8, v11

    goto :goto_3

    :sswitch_a
    const-string v8, "gr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_2

    :cond_e
    move v8, v12

    goto :goto_3

    :sswitch_b
    const-string v8, "gf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_2

    :cond_f
    move v8, v3

    goto :goto_3

    :sswitch_c
    const-string v8, "fl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_2

    :cond_10
    move v8, v6

    goto :goto_3

    :sswitch_d
    const-string v8, "el"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_2

    :cond_11
    move v8, v13

    :goto_3
    const-string v14, "o"

    const-string v15, "g"

    move-object/from16 v16, v7

    const-string v7, "d"

    const/16 v17, 0x0

    packed-switch v8, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgv4;->b(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v7, v16

    goto/16 :goto_26

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lrl;->c(Lhe4;Lnw4;)Lql;

    move-result-object v7

    goto/16 :goto_26

    :pswitch_1
    sget-object v2, Lgs7;->a:Ltd4$a;

    move/from16 v23, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    :goto_5
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lgs7;->a:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v6, :cond_18

    if-eq v2, v3, :cond_17

    if-eq v2, v12, :cond_16

    if-eq v2, v11, :cond_13

    if-eq v2, v10, :cond_12

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_5

    :cond_12
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v23

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    if-eq v2, v6, :cond_15

    if-ne v2, v3, :cond_14

    sget-object v2, Lfs7$a;->INDIVIDUALLY:Lfs7$a;

    :goto_6
    move-object/from16 v19, v2

    goto :goto_5

    :cond_14
    const-string v0, "Unknown trim path type "

    invoke-static {v2, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_15
    sget-object v2, Lfs7$a;->SIMULTANEOUSLY:Lfs7$a;

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_17
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v22

    goto :goto_5

    :cond_18
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v21

    goto :goto_5

    :cond_19
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v20

    goto :goto_5

    :cond_1a
    new-instance v17, Lfs7;

    invoke-direct/range {v17 .. v23}, Lfs7;-><init>(Ljava/lang/String;Lfs7$a;Ldl;Ldl;Ldl;Z)V

    :goto_7
    move-object/from16 v7, v17

    goto/16 :goto_26

    :pswitch_2
    sget-object v4, Les7;->a:Ltd4$a;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v28, v13

    move-object/from16 v5, v16

    move-object v8, v5

    move-object v10, v8

    move-object/from16 v19, v10

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v24, v22

    move/from16 v27, v17

    :cond_1b
    :goto_8
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v11

    if-eqz v11, :cond_23

    sget-object v11, Les7;->a:Ltd4$a;

    invoke-virtual {v0, v11}, Lhe4;->X(Ltd4$a;)I

    move-result v11

    packed-switch v11, :pswitch_data_1

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_8

    :pswitch_3
    invoke-virtual {v0}, Lhe4;->m()V

    :goto_9
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual {v0}, Lhe4;->n()V

    move-object/from16 v11, v16

    move-object v12, v11

    :goto_a
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v17

    if-eqz v17, :cond_1e

    sget-object v9, Les7;->b:Ltd4$a;

    invoke-virtual {v0, v9}, Lhe4;->X(Ltd4$a;)I

    move-result v9

    if-eqz v9, :cond_1d

    if-eq v9, v6, :cond_1c

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_a

    :cond_1c
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v12

    goto :goto_a

    :cond_1d
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_1e
    invoke-virtual {v0}, Lhe4;->p()V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_b
    const/4 v9, -0x1

    goto :goto_c

    :sswitch_e
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    goto :goto_b

    :cond_1f
    move v9, v3

    goto :goto_c

    :sswitch_f
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_b

    :cond_20
    move v9, v6

    goto :goto_c

    :sswitch_10
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_21

    goto :goto_b

    :cond_21
    move v9, v13

    :goto_c
    packed-switch v9, :pswitch_data_2

    goto :goto_9

    :pswitch_4
    move-object/from16 v20, v12

    goto :goto_9

    :pswitch_5
    iput-boolean v6, v1, Lnw4;->o:Z

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    invoke-virtual {v0}, Lhe4;->o()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v6, :cond_1b

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldl;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v28

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v11

    double-to-float v9, v11

    move/from16 v27, v9

    goto/16 :goto_8

    :pswitch_8
    invoke-static {}, Lds7$c;->values()[Lds7$c;

    move-result-object v9

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v10

    sub-int/2addr v10, v6

    aget-object v10, v9, v10

    goto/16 :goto_8

    :pswitch_9
    invoke-static {}, Lds7$b;->values()[Lds7$b;

    move-result-object v8

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v9

    sub-int/2addr v9, v6

    aget-object v8, v8, v9

    goto/16 :goto_8

    :pswitch_a
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_b
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v24

    goto/16 :goto_8

    :pswitch_c
    invoke-static/range {p0 .. p1}, Ltl;->c(Lhe4;Lnw4;)Lcl;

    move-result-object v22

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    :cond_23
    if-nez v5, :cond_24

    new-instance v5, Lfl;

    new-instance v1, Lvf4;

    invoke-direct {v1, v2}, Lvf4;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Lu1;-><init>(Ljava/util/List;)V

    :cond_24
    move-object/from16 v23, v5

    if-nez v8, :cond_25

    sget-object v8, Lds7$b;->BUTT:Lds7$b;

    :cond_25
    move-object/from16 v25, v8

    if-nez v10, :cond_26

    sget-object v10, Lds7$c;->MITER:Lds7$c;

    :cond_26
    move-object/from16 v26, v10

    new-instance v18, Lds7;

    move-object/from16 v21, v4

    invoke-direct/range {v18 .. v28}, Lds7;-><init>(Ljava/lang/String;Ldl;Ljava/util/ArrayList;Lcl;Lfl;Ldl;Lds7$b;Lds7$c;FZ)V

    move-object/from16 v7, v18

    goto/16 :goto_26

    :pswitch_e
    sget-object v2, Lha6;->a:Ltd4$a;

    if-ne v4, v12, :cond_27

    move v2, v6

    goto :goto_d

    :cond_27
    move v2, v13

    :goto_d
    move/from16 v28, v2

    move/from16 v27, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    :goto_e
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lha6;->a:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_e

    :pswitch_f
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    if-ne v2, v12, :cond_28

    move/from16 v28, v6

    goto :goto_e

    :cond_28
    move/from16 v28, v13

    goto :goto_e

    :pswitch_10
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v27

    goto :goto_e

    :pswitch_11
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v25

    goto :goto_e

    :pswitch_12
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v23

    goto :goto_e

    :pswitch_13
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v26

    goto :goto_e

    :pswitch_14
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v24

    goto :goto_e

    :pswitch_15
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v22

    goto :goto_e

    :pswitch_16
    invoke-static/range {p0 .. p1}, Lgl;->b(Lhe4;Lnw4;)Lsl;

    move-result-object v21

    goto :goto_e

    :pswitch_17
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v20

    goto :goto_e

    :pswitch_18
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    invoke-static {v2}, Lga6$a;->a(I)Lga6$a;

    move-result-object v19

    goto :goto_e

    :pswitch_19
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v18

    goto :goto_e

    :cond_29
    new-instance v17, Lga6;

    invoke-direct/range {v17 .. v28}, Lga6;-><init>(Ljava/lang/String;Lga6$a;Ldl;Lsl;Ldl;Ldl;Ldl;Ldl;Ldl;ZZ)V

    goto/16 :goto_7

    :pswitch_1a
    sget-object v2, Lcs7;->a:Ltd4$a;

    move v4, v13

    move v5, v4

    move-object/from16 v2, v16

    move-object v7, v2

    :goto_f
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v8

    if-eqz v8, :cond_2e

    sget-object v8, Lcs7;->a:Ltd4$a;

    invoke-virtual {v0, v8}, Lhe4;->X(Ltd4$a;)I

    move-result v8

    if-eqz v8, :cond_2d

    if-eq v8, v6, :cond_2c

    if-eq v8, v3, :cond_2b

    if-eq v8, v12, :cond_2a

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_f

    :cond_2a
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v5

    goto :goto_f

    :cond_2b
    new-instance v2, Ljl;

    invoke-static {}, Lib9;->c()F

    move-result v8

    sget-object v9, Ltr7;->b:Ltr7;

    invoke-static {v0, v1, v8, v9, v13}, Lzf4;->a(Ltd4;Lnw4;FLcc9;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v2, v8}, Lu1;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_2c
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v4

    goto :goto_f

    :cond_2d
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_2e
    new-instance v1, Lbs7;

    invoke-direct {v1, v7, v4, v2, v5}, Lbs7;-><init>(Ljava/lang/String;ILjl;Z)V

    :goto_10
    move-object v7, v1

    goto/16 :goto_26

    :pswitch_1b
    sget-object v2, Lk27;->a:Ltd4$a;

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_11
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lk27;->a:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_33

    if-eq v2, v6, :cond_32

    if-eq v2, v3, :cond_31

    if-eq v2, v12, :cond_30

    if-eq v2, v11, :cond_2f

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_11

    :cond_2f
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v22

    goto :goto_11

    :cond_30
    invoke-static/range {p0 .. p1}, Lrl;->c(Lhe4;Lnw4;)Lql;

    move-result-object v21

    goto :goto_11

    :cond_31
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v20

    goto :goto_11

    :cond_32
    invoke-static {v0, v1, v13}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v19

    goto :goto_11

    :cond_33
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v18

    goto :goto_11

    :cond_34
    new-instance v17, Li27;

    invoke-direct/range {v17 .. v22}, Li27;-><init>(Ljava/lang/String;Ldl;Ldl;Lql;Z)V

    goto/16 :goto_7

    :pswitch_1c
    sget-object v2, Lh87;->a:Ltd4$a;

    move-object/from16 v2, v16

    move-object v4, v2

    :goto_12
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    if-eqz v5, :cond_38

    sget-object v5, Lh87;->a:Ltd4$a;

    invoke-virtual {v0, v5}, Lhe4;->X(Ltd4$a;)I

    move-result v5

    if-eqz v5, :cond_37

    if-eq v5, v6, :cond_36

    if-eq v5, v3, :cond_35

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_12

    :cond_35
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v13

    goto :goto_12

    :cond_36
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v4

    goto :goto_12

    :cond_37
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_38
    if-eqz v13, :cond_39

    goto/16 :goto_4

    :cond_39
    new-instance v7, Lf87;

    invoke-direct {v7, v2, v4}, Lf87;-><init>(Ljava/lang/String;Ldl;)V

    goto/16 :goto_26

    :pswitch_1d
    sget-object v2, Lh07;->a:Ltd4$a;

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_13
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v2, Lh07;->a:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_3e

    if-eq v2, v6, :cond_3d

    if-eq v2, v3, :cond_3c

    if-eq v2, v12, :cond_3b

    if-eq v2, v11, :cond_3a

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_13

    :cond_3a
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v22

    goto :goto_13

    :cond_3b
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v21

    goto :goto_13

    :cond_3c
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v20

    goto :goto_13

    :cond_3d
    invoke-static/range {p0 .. p1}, Lgl;->b(Lhe4;Lnw4;)Lsl;

    move-result-object v19

    goto :goto_13

    :cond_3e
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v18

    goto :goto_13

    :cond_3f
    new-instance v17, Lg07;

    invoke-direct/range {v17 .. v22}, Lg07;-><init>(Ljava/lang/String;Lsl;Lhl;Ldl;Z)V

    goto/16 :goto_7

    :pswitch_1e
    sget-object v2, Lca5;->a:Ltd4$a;

    move-object/from16 v2, v16

    move-object v7, v2

    :goto_14
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v4

    if-eqz v4, :cond_48

    sget-object v4, Lca5;->a:Ltd4$a;

    invoke-virtual {v0, v4}, Lhe4;->X(Ltd4$a;)I

    move-result v4

    if-eqz v4, :cond_47

    if-eq v4, v6, :cond_41

    if-eq v4, v3, :cond_40

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_14

    :cond_40
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v13

    goto :goto_14

    :cond_41
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    if-eq v2, v6, :cond_46

    if-eq v2, v3, :cond_45

    if-eq v2, v12, :cond_44

    if-eq v2, v11, :cond_43

    if-eq v2, v10, :cond_42

    sget-object v2, Laa5$a;->MERGE:Laa5$a;

    goto :goto_14

    :cond_42
    sget-object v2, Laa5$a;->EXCLUDE_INTERSECTIONS:Laa5$a;

    goto :goto_14

    :cond_43
    sget-object v2, Laa5$a;->INTERSECT:Laa5$a;

    goto :goto_14

    :cond_44
    sget-object v2, Laa5$a;->SUBTRACT:Laa5$a;

    goto :goto_14

    :cond_45
    sget-object v2, Laa5$a;->ADD:Laa5$a;

    goto :goto_14

    :cond_46
    sget-object v2, Laa5$a;->MERGE:Laa5$a;

    goto :goto_14

    :cond_47
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :cond_48
    new-instance v3, Laa5;

    invoke-direct {v3, v7, v2, v13}, Laa5;-><init>(Ljava/lang/String;Laa5$a;Z)V

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Lnw4;->a(Ljava/lang/String;)V

    move-object v7, v3

    goto/16 :goto_26

    :pswitch_1f
    sget-object v3, Lsr3;->a:Ltd4$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v32, v13

    move-object/from16 v4, v16

    move-object/from16 v20, v4

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v31, v28

    move/from16 v29, v17

    :cond_49
    :goto_15
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    if-eqz v5, :cond_55

    sget-object v5, Lsr3;->a:Ltd4$a;

    invoke-virtual {v0, v5}, Lhe4;->X(Ltd4$a;)I

    move-result v5

    packed-switch v5, :pswitch_data_4

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_15

    :pswitch_20
    invoke-virtual {v0}, Lhe4;->m()V

    :cond_4a
    :goto_16
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v0}, Lhe4;->n()V

    move-object/from16 v5, v16

    move-object v8, v5

    :goto_17
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v9

    if-eqz v9, :cond_4d

    sget-object v9, Lsr3;->c:Ltd4$a;

    invoke-virtual {v0, v9}, Lhe4;->X(Ltd4$a;)I

    move-result v9

    if-eqz v9, :cond_4c

    if-eq v9, v6, :cond_4b

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_17

    :cond_4b
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v8

    goto :goto_17

    :cond_4c
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    :cond_4d
    invoke-virtual {v0}, Lhe4;->p()V

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    move-object/from16 v31, v8

    goto :goto_16

    :cond_4e
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4f

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    :cond_4f
    iput-boolean v6, v1, Lnw4;->o:Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_50
    invoke-virtual {v0}, Lhe4;->o()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_49

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldl;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :pswitch_21
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v32

    goto :goto_15

    :pswitch_22
    invoke-virtual {v0}, Lhe4;->E()D

    move-result-wide v8

    double-to-float v5, v8

    move/from16 v29, v5

    goto/16 :goto_15

    :pswitch_23
    invoke-static {}, Lds7$c;->values()[Lds7$c;

    move-result-object v5

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v8

    sub-int/2addr v8, v6

    aget-object v28, v5, v8

    goto/16 :goto_15

    :pswitch_24
    invoke-static {}, Lds7$b;->values()[Lds7$b;

    move-result-object v5

    invoke-virtual {v0}, Lhe4;->P()I

    move-result v8

    sub-int/2addr v8, v6

    aget-object v27, v5, v8

    goto/16 :goto_15

    :pswitch_25
    invoke-static {v0, v1, v6}, Ltl;->d(Ltd4;Lnw4;Z)Ldl;

    move-result-object v26

    goto/16 :goto_15

    :pswitch_26
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v25

    goto/16 :goto_15

    :pswitch_27
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v24

    goto/16 :goto_15

    :pswitch_28
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v5

    if-ne v5, v6, :cond_51

    sget-object v5, Ltr3;->LINEAR:Ltr3;

    :goto_18
    move-object/from16 v21, v5

    goto/16 :goto_15

    :cond_51
    sget-object v5, Ltr3;->RADIAL:Ltr3;

    goto :goto_18

    :pswitch_29
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v4

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v5, -0x1

    :goto_19
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v8

    if-eqz v8, :cond_54

    sget-object v8, Lsr3;->b:Ltd4$a;

    invoke-virtual {v0, v8}, Lhe4;->X(Ltd4$a;)I

    move-result v8

    if-eqz v8, :cond_53

    if-eq v8, v6, :cond_52

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_19

    :cond_52
    invoke-static {v0, v1, v5}, Ltl;->e(Lhe4;Lnw4;I)Lel;

    move-result-object v22

    goto :goto_19

    :cond_53
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v5

    goto :goto_19

    :cond_54
    invoke-virtual {v0}, Lhe4;->p()V

    goto/16 :goto_15

    :pswitch_2b
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_15

    :cond_55
    if-nez v4, :cond_56

    new-instance v4, Lfl;

    new-instance v1, Lvf4;

    invoke-direct {v1, v2}, Lvf4;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lu1;-><init>(Ljava/util/List;)V

    :cond_56
    move-object/from16 v23, v4

    new-instance v19, Lqr3;

    move-object/from16 v30, v3

    invoke-direct/range {v19 .. v32}, Lqr3;-><init>(Ljava/lang/String;Ltr3;Lel;Lfl;Lhl;Lhl;Ldl;Lds7$b;Lds7$c;FLjava/util/ArrayList;Ldl;Z)V

    :goto_1a
    move-object/from16 v7, v19

    goto/16 :goto_26

    :pswitch_2c
    sget-object v2, Lxr7;->a:Ltd4$a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v16

    :goto_1b
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Lxr7;->a:Ltd4$a;

    invoke-virtual {v0, v4}, Lhe4;->X(Ltd4$a;)I

    move-result v4

    if-eqz v4, :cond_5b

    if-eq v4, v6, :cond_5a

    if-eq v4, v3, :cond_57

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_1b

    :cond_57
    invoke-virtual {v0}, Lhe4;->m()V

    :cond_58
    :goto_1c
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-static/range {p0 .. p1}, Ley1;->a(Lhe4;Lnw4;)Ldy1;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_59
    invoke-virtual {v0}, Lhe4;->o()V

    goto :goto_1b

    :cond_5a
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v13

    goto :goto_1b

    :cond_5b
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    :cond_5c
    new-instance v1, Lwr7;

    invoke-direct {v1, v7, v2, v13}, Lwr7;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_10

    :pswitch_2d
    sget-object v3, Lpr3;->a:Ltd4$a;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v22, v3

    move/from16 v27, v13

    move-object/from16 v7, v16

    move-object/from16 v20, v7

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v25, v23

    move-object/from16 v26, v25

    :goto_1d
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v3

    if-eqz v3, :cond_62

    sget-object v3, Lpr3;->a:Ltd4$a;

    invoke-virtual {v0, v3}, Lhe4;->X(Ltd4$a;)I

    move-result v3

    packed-switch v3, :pswitch_data_5

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_1d

    :pswitch_2e
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v27

    goto :goto_1d

    :pswitch_2f
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v3

    if-ne v3, v6, :cond_5d

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1e
    move-object/from16 v22, v3

    goto :goto_1d

    :cond_5d
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1e

    :pswitch_30
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v26

    goto :goto_1d

    :pswitch_31
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v25

    goto :goto_1d

    :pswitch_32
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v3

    if-ne v3, v6, :cond_5e

    sget-object v3, Ltr3;->LINEAR:Ltr3;

    :goto_1f
    move-object/from16 v21, v3

    goto :goto_1d

    :cond_5e
    sget-object v3, Ltr3;->RADIAL:Ltr3;

    goto :goto_1f

    :pswitch_33
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v7

    goto :goto_1d

    :pswitch_34
    invoke-virtual {v0}, Lhe4;->n()V

    const/4 v3, -0x1

    :goto_20
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v4

    if-eqz v4, :cond_61

    sget-object v4, Lpr3;->b:Ltd4$a;

    invoke-virtual {v0, v4}, Lhe4;->X(Ltd4$a;)I

    move-result v4

    if-eqz v4, :cond_60

    if-eq v4, v6, :cond_5f

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_20

    :cond_5f
    invoke-static {v0, v1, v3}, Ltl;->e(Lhe4;Lnw4;I)Lel;

    move-result-object v23

    goto :goto_20

    :cond_60
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v3

    goto :goto_20

    :cond_61
    invoke-virtual {v0}, Lhe4;->p()V

    goto :goto_1d

    :pswitch_35
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v20

    goto :goto_1d

    :cond_62
    if-nez v7, :cond_63

    new-instance v7, Lfl;

    new-instance v1, Lvf4;

    invoke-direct {v1, v2}, Lvf4;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Lu1;-><init>(Ljava/util/List;)V

    :cond_63
    move-object/from16 v24, v7

    new-instance v19, Lnr3;

    invoke-direct/range {v19 .. v27}, Lnr3;-><init>(Ljava/lang/String;Ltr3;Landroid/graphics/Path$FillType;Lel;Lfl;Lhl;Lhl;Z)V

    goto/16 :goto_1a

    :pswitch_36
    sget-object v4, Lvr7;->a:Ltd4$a;

    move v4, v6

    move v15, v13

    move/from16 v19, v15

    move-object/from16 v7, v16

    move-object v14, v7

    move-object/from16 v17, v14

    :goto_21
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Lvr7;->a:Ltd4$a;

    invoke-virtual {v0, v5}, Lhe4;->X(Ltd4$a;)I

    move-result v5

    if-eqz v5, :cond_69

    if-eq v5, v6, :cond_68

    if-eq v5, v3, :cond_67

    if-eq v5, v12, :cond_66

    if-eq v5, v11, :cond_65

    if-eq v5, v10, :cond_64

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_21

    :cond_64
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v19

    goto :goto_21

    :cond_65
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v4

    goto :goto_21

    :cond_66
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v15

    goto :goto_21

    :cond_67
    invoke-static/range {p0 .. p1}, Ltl;->f(Ltd4;Lnw4;)Lfl;

    move-result-object v7

    goto :goto_21

    :cond_68
    invoke-static/range {p0 .. p1}, Ltl;->c(Lhe4;Lnw4;)Lcl;

    move-result-object v17

    goto :goto_21

    :cond_69
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v14

    goto :goto_21

    :cond_6a
    if-nez v7, :cond_6b

    new-instance v7, Lfl;

    new-instance v1, Lvf4;

    invoke-direct {v1, v2}, Lvf4;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Lu1;-><init>(Ljava/util/List;)V

    :cond_6b
    move-object/from16 v18, v7

    if-ne v4, v6, :cond_6c

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_22
    move-object/from16 v16, v1

    goto :goto_23

    :cond_6c
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_22

    :goto_23
    new-instance v13, Lur7;

    invoke-direct/range {v13 .. v19}, Lur7;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcl;Lfl;Z)V

    move-object v7, v13

    goto :goto_26

    :pswitch_37
    sget-object v2, Ldk1;->a:Ltd4$a;

    if-ne v4, v12, :cond_6d

    move v2, v6

    goto :goto_24

    :cond_6d
    move v2, v13

    :goto_24
    move/from16 v21, v2

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_25
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object v2, Ldk1;->a:Ltd4$a;

    invoke-virtual {v0, v2}, Lhe4;->X(Ltd4$a;)I

    move-result v2

    if-eqz v2, :cond_73

    if-eq v2, v6, :cond_72

    if-eq v2, v3, :cond_71

    if-eq v2, v12, :cond_70

    if-eq v2, v11, :cond_6e

    invoke-virtual {v0}, Lhe4;->Z()V

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_25

    :cond_6e
    invoke-virtual {v0}, Lhe4;->P()I

    move-result v2

    if-ne v2, v12, :cond_6f

    move/from16 v21, v6

    goto :goto_25

    :cond_6f
    move/from16 v21, v13

    goto :goto_25

    :cond_70
    invoke-virtual {v0}, Lhe4;->y()Z

    move-result v22

    goto :goto_25

    :cond_71
    invoke-static/range {p0 .. p1}, Ltl;->g(Lhe4;Lnw4;)Lhl;

    move-result-object v20

    goto :goto_25

    :cond_72
    invoke-static/range {p0 .. p1}, Lgl;->b(Lhe4;Lnw4;)Lsl;

    move-result-object v19

    goto :goto_25

    :cond_73
    invoke-virtual {v0}, Lhe4;->Q()Ljava/lang/String;

    move-result-object v18

    goto :goto_25

    :cond_74
    new-instance v17, Lck1;

    invoke-direct/range {v17 .. v22}, Lck1;-><init>(Ljava/lang/String;Lsl;Lhl;ZZ)V

    goto/16 :goto_7

    :goto_26
    invoke-virtual {v0}, Lhe4;->v()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Lhe4;->e0()V

    goto :goto_26

    :cond_75
    invoke-virtual {v0}, Lhe4;->p()V

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
