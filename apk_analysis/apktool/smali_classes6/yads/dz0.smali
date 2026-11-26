.class public final Lyads/dz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dz0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v4

    invoke-interface {v4, v3}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v4

    instance-of v5, v4, Lyads/h01;

    if-eqz v5, :cond_0

    check-cast v4, Lyads/h01;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "video"

    const-string v7, "update_structure"

    const-string v8, "timer"

    const-string v9, "submit"

    const-string v10, "show_tooltip"

    const-string v11, "set_variable"

    const-string v12, "set_stored_value"

    const-string v13, "set_state"

    const-string v14, "scroll_to"

    const-string v15, "scroll_by"

    const/16 v16, 0x0

    const-string v6, "hide_tooltip"

    move-object/from16 v17, v3

    const-string v3, "focus_element"

    move-object/from16 v18, v11

    const-string v11, "download"

    move-object/from16 v19, v9

    const-string v9, "dict_set_value"

    move-object/from16 v20, v12

    const-string v12, "copy_to_clipboard"

    move-object/from16 v21, v12

    const-string v12, "clear_focus"

    move-object/from16 v22, v12

    const-string v12, "array_set_value"

    move-object/from16 v23, v7

    const-string v7, "array_remove_value"

    move-object/from16 v24, v12

    const-string v12, "array_insert_value"

    move-object/from16 v25, v8

    const-string v8, "animator_stop"

    move-object/from16 v26, v8

    const-string v8, "animator_start"

    move-object/from16 v27, v8

    if-eqz v4, :cond_16

    instance-of v8, v4, Lyads/mz0;

    if-eqz v8, :cond_1

    move-object/from16 v8, v27

    goto/16 :goto_1

    :cond_1
    instance-of v8, v4, Lyads/nz0;

    if-eqz v8, :cond_2

    move-object/from16 v8, v26

    goto/16 :goto_1

    :cond_2
    instance-of v8, v4, Lyads/oz0;

    if-eqz v8, :cond_3

    move-object v8, v12

    goto/16 :goto_1

    :cond_3
    instance-of v8, v4, Lyads/pz0;

    if-eqz v8, :cond_4

    move-object v8, v7

    goto/16 :goto_1

    :cond_4
    instance-of v8, v4, Lyads/qz0;

    if-eqz v8, :cond_5

    move-object/from16 v8, v24

    goto/16 :goto_1

    :cond_5
    instance-of v8, v4, Lyads/rz0;

    if-eqz v8, :cond_6

    move-object/from16 v8, v22

    goto/16 :goto_1

    :cond_6
    instance-of v8, v4, Lyads/sz0;

    if-eqz v8, :cond_7

    move-object/from16 v8, v21

    goto/16 :goto_1

    :cond_7
    instance-of v8, v4, Lyads/tz0;

    if-eqz v8, :cond_8

    move-object v8, v9

    goto/16 :goto_1

    :cond_8
    instance-of v8, v4, Lyads/uz0;

    if-eqz v8, :cond_9

    move-object v8, v11

    goto/16 :goto_1

    :cond_9
    instance-of v8, v4, Lyads/vz0;

    if-eqz v8, :cond_a

    move-object v8, v3

    goto/16 :goto_1

    :cond_a
    instance-of v8, v4, Lyads/wz0;

    if-eqz v8, :cond_b

    move-object v8, v6

    goto :goto_1

    :cond_b
    instance-of v8, v4, Lyads/xz0;

    if-eqz v8, :cond_c

    move-object v8, v15

    goto :goto_1

    :cond_c
    instance-of v8, v4, Lyads/yz0;

    if-eqz v8, :cond_d

    move-object v8, v14

    goto :goto_1

    :cond_d
    instance-of v8, v4, Lyads/zz0;

    if-eqz v8, :cond_e

    move-object v8, v13

    goto :goto_1

    :cond_e
    instance-of v8, v4, Lyads/a01;

    if-eqz v8, :cond_f

    move-object/from16 v8, v20

    goto :goto_1

    :cond_f
    instance-of v8, v4, Lyads/b01;

    if-eqz v8, :cond_10

    move-object/from16 v8, v18

    goto :goto_1

    :cond_10
    instance-of v8, v4, Lyads/c01;

    if-eqz v8, :cond_11

    move-object v8, v10

    goto :goto_1

    :cond_11
    instance-of v8, v4, Lyads/d01;

    if-eqz v8, :cond_12

    move-object/from16 v8, v19

    goto :goto_1

    :cond_12
    instance-of v8, v4, Lyads/e01;

    if-eqz v8, :cond_13

    move-object/from16 v8, v25

    goto :goto_1

    :cond_13
    instance-of v8, v4, Lyads/f01;

    if-eqz v8, :cond_14

    move-object/from16 v8, v23

    goto :goto_1

    :cond_14
    instance-of v8, v4, Lyads/g01;

    if-eqz v8, :cond_15

    move-object v8, v5

    goto :goto_1

    :cond_15
    invoke-static {}, Lme0;->e()V

    return-object v16

    :cond_16
    move-object/from16 v8, v17

    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_17
    move-object v1, v2

    goto/16 :goto_21

    :sswitch_0
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/oz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->R:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ls0;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_18
    move-object/from16 v6, v16

    :goto_2
    check-cast v6, Lyads/ns0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/ls0;->a(Lyads/ys4;Lyads/ns0;Lorg/json/JSONObject;)Lyads/ns0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/oz0;-><init>(Lyads/ns0;)V

    return-object v3

    :sswitch_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v6, Lyads/wz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->s0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ou0;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_19
    move-object/from16 v3, v16

    :goto_3
    check-cast v3, Lyads/qu0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v7, Lyads/qu0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lyads/qu0;->a:Lyads/zw2;

    move-object v5, v3

    goto :goto_4

    :cond_1a
    move-object/from16 v5, v16

    :goto_4
    const-string v2, "id"

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v0}, Lyads/qu0;-><init>(Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/wz0;-><init>(Lyads/qu0;)V

    return-object v6

    :sswitch_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/tz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->j0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/yt0;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_1b
    move-object/from16 v6, v16

    :goto_5
    check-cast v6, Lyads/au0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/yt0;->a(Lyads/ys4;Lyads/au0;Lorg/json/JSONObject;)Lyads/au0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/tz0;-><init>(Lyads/au0;)V

    return-object v3

    :sswitch_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v6, Lyads/vz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->p0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/iu0;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :cond_1c
    move-object/from16 v3, v16

    :goto_6
    check-cast v3, Lyads/ku0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v7, Lyads/ku0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    if-eqz v3, :cond_1d

    iget-object v3, v3, Lyads/ku0;->a:Lyads/zw2;

    move-object v5, v3

    goto :goto_7

    :cond_1d
    move-object/from16 v5, v16

    :goto_7
    const-string v2, "element_id"

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v0}, Lyads/ku0;-><init>(Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/vz0;-><init>(Lyads/ku0;)V

    return-object v6

    :sswitch_4
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/uz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->m0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/du0;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_8

    :cond_1e
    move-object/from16 v6, v16

    :goto_8
    check-cast v6, Lyads/fu0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/du0;->a(Lyads/ys4;Lyads/fu0;Lorg/json/JSONObject;)Lyads/fu0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/uz0;-><init>(Lyads/fu0;)V

    return-object v3

    :sswitch_5
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v8, Lyads/zz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->E0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bw0;

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_9

    :cond_1f
    move-object/from16 v3, v16

    :goto_9
    move-object v6, v3

    check-cast v6, Lyads/ew0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/ew0;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v6, :cond_20

    iget-object v1, v6, Lyads/ew0;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_a

    :cond_20
    move-object/from16 v5, v16

    :goto_a
    const-string v2, "state_id"

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v6, :cond_21

    iget-object v6, v6, Lyads/ew0;->b:Lyads/zw2;

    move-object v5, v6

    goto :goto_b

    :cond_21
    move-object/from16 v5, v16

    :goto_b
    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "temporary"

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/ew0;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/zz0;-><init>(Lyads/ew0;)V

    return-object v8

    :sswitch_6
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/yz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->B0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vv0;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_c

    :cond_22
    move-object/from16 v6, v16

    :goto_c
    check-cast v6, Lyads/yv0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/vv0;->a(Lyads/ys4;Lyads/yv0;Lorg/json/JSONObject;)Lyads/yv0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/yz0;-><init>(Lyads/yv0;)V

    return-object v3

    :sswitch_7
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/xz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->v0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/cv0;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_d

    :cond_23
    move-object/from16 v6, v16

    :goto_d
    check-cast v6, Lyads/fv0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v2}, Lyads/cv0;->a(Lyads/ys4;Lyads/fv0;Lorg/json/JSONObject;)Lyads/fv0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/xz0;-><init>(Lyads/fv0;)V

    return-object v3

    :sswitch_8
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v8, Lyads/c01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->N0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rw0;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_e

    :cond_24
    move-object/from16 v3, v16

    :goto_e
    move-object v6, v3

    check-cast v6, Lyads/tw0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/tw0;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v6, :cond_25

    iget-object v1, v6, Lyads/tw0;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_f

    :cond_25
    move-object/from16 v5, v16

    :goto_f
    const-string v2, "id"

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v6, :cond_26

    iget-object v6, v6, Lyads/tw0;->b:Lyads/zw2;

    move-object v5, v6

    goto :goto_10

    :cond_26
    move-object/from16 v5, v16

    :goto_10
    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "multiple"

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/tw0;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/c01;-><init>(Lyads/tw0;)V

    return-object v8

    :sswitch_9
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/pz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->U:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/qs0;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_11

    :cond_27
    move-object/from16 v6, v16

    :goto_11
    check-cast v6, Lyads/ss0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v2}, Lyads/qs0;->a(Lyads/ys4;Lyads/ss0;Lorg/json/JSONObject;)Lyads/ss0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/pz0;-><init>(Lyads/ss0;)V

    return-object v3

    :sswitch_a
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/g01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->i1:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/a11;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_12

    :cond_28
    move-object/from16 v6, v16

    :goto_12
    check-cast v6, Lyads/d11;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v2}, Lyads/a11;->a(Lyads/ys4;Lyads/d11;Lorg/json/JSONObject;)Lyads/d11;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/g01;-><init>(Lyads/d11;)V

    return-object v3

    :sswitch_b
    move-object/from16 v3, v25

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/e01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->Z0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/sx0;

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_13

    :cond_29
    move-object/from16 v6, v16

    :goto_13
    check-cast v6, Lyads/vx0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6, v2}, Lyads/sx0;->a(Lyads/ys4;Lyads/vx0;Lorg/json/JSONObject;)Lyads/vx0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/e01;-><init>(Lyads/vx0;)V

    return-object v3

    :sswitch_c
    move-object/from16 v3, v24

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/qz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->X:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vs0;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_14

    :cond_2a
    move-object/from16 v6, v16

    :goto_14
    check-cast v6, Lyads/xs0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/vs0;->a(Lyads/ys4;Lyads/xs0;Lorg/json/JSONObject;)Lyads/xs0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/qz0;-><init>(Lyads/xs0;)V

    return-object v3

    :sswitch_d
    move-object/from16 v3, v23

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/f01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->f1:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/s01;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_15

    :cond_2b
    move-object/from16 v6, v16

    :goto_15
    check-cast v6, Lyads/v01;

    invoke-virtual {v0, v1, v6, v2}, Lyads/s01;->a(Lyads/ys4;Lyads/v01;Lorg/json/JSONObject;)Lyads/v01;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/f01;-><init>(Lyads/v01;)V

    return-object v3

    :sswitch_e
    move-object/from16 v3, v21

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v6, Lyads/sz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->g0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tt0;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    :cond_2c
    move-object/from16 v3, v16

    :goto_16
    check-cast v3, Lyads/vt0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v7, Lyads/vt0;

    if-eqz v3, :cond_2d

    iget-object v3, v3, Lyads/vt0;->a:Lyads/zw2;

    move/from16 v28, v4

    move-object v4, v3

    move/from16 v3, v28

    goto :goto_17

    :cond_2d
    move v3, v4

    move-object/from16 v4, v16

    :goto_17
    iget-object v0, v0, Lyads/tt0;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->d0:Lcl4;

    const-string v2, "content"

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v0}, Lyads/vt0;-><init>(Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/sz0;-><init>(Lyads/vt0;)V

    return-object v6

    :sswitch_f
    move-object/from16 v3, v20

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/a01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->H0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/hw0;

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_18

    :cond_2e
    move-object/from16 v6, v16

    :goto_18
    check-cast v6, Lyads/jw0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/hw0;->a(Lyads/ys4;Lyads/jw0;Lorg/json/JSONObject;)Lyads/jw0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/a01;-><init>(Lyads/jw0;)V

    return-object v3

    :sswitch_10
    move-object/from16 v3, v19

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/d01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->Q0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ax0;

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_19

    :cond_2f
    move-object/from16 v6, v16

    :goto_19
    check-cast v6, Lyads/lx0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/ax0;->a(Lyads/ys4;Lyads/lx0;Lorg/json/JSONObject;)Lyads/lx0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/d01;-><init>(Lyads/lx0;)V

    return-object v3

    :sswitch_11
    move-object/from16 v3, v26

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/nz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->O:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gs0;

    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1a

    :cond_30
    move-object/from16 v4, v16

    :goto_1a
    check-cast v4, Lyads/is0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v0

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v5, Lyads/is0;

    if-eqz v4, :cond_31

    iget-object v6, v4, Lyads/is0;->a:Lyads/zw2;

    goto :goto_1b

    :cond_31
    move-object/from16 v6, v16

    :goto_1b
    const-string v4, "animator_id"

    invoke-static {v1, v2, v4, v0, v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v5, v0}, Lyads/is0;-><init>(Lyads/zw2;)V

    invoke-direct {v3, v5}, Lyads/nz0;-><init>(Lyads/is0;)V

    return-object v3

    :sswitch_12
    move-object/from16 v1, v22

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Lyads/rz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->a0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ft0;

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1c

    :cond_32
    move-object/from16 v6, v16

    :goto_1c
    check-cast v6, Lyads/ht0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/ht0;

    invoke-direct {v0}, Lyads/ht0;-><init>()V

    invoke-direct {v1, v0}, Lyads/rz0;-><init>(Lyads/ht0;)V

    return-object v1

    :sswitch_13
    move-object/from16 v3, v27

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v3, Lyads/mz0;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->L:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/as0;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1d

    :cond_33
    move-object/from16 v6, v16

    :goto_1d
    check-cast v6, Lyads/ds0;

    invoke-virtual {v0, v1, v6, v2}, Lyads/as0;->a(Lyads/ys4;Lyads/ds0;Lorg/json/JSONObject;)Lyads/ds0;

    move-result-object v0

    invoke-direct {v3, v0}, Lyads/mz0;-><init>(Lyads/ds0;)V

    return-object v3

    :sswitch_14
    move-object/from16 v3, v18

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-instance v6, Lyads/b01;

    iget-object v0, v0, Lyads/dz0;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->K0:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/mw0;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lyads/h01;->a()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1e

    :cond_34
    move-object/from16 v3, v16

    :goto_1e
    move-object v7, v3

    check-cast v7, Lyads/ow0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {v1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance v8, Lyads/ow0;

    if-eqz v7, :cond_35

    iget-object v4, v7, Lyads/ow0;->a:Lyads/zw2;

    goto :goto_1f

    :cond_35
    move-object/from16 v4, v16

    :goto_1f
    iget-object v0, v0, Lyads/mw0;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->Y8:Lcl4;

    const-string v2, "value"

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v9

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    if-eqz v7, :cond_36

    iget-object v2, v7, Lyads/ow0;->b:Lyads/zw2;

    move-object v5, v2

    goto :goto_20

    :cond_36
    move-object/from16 v5, v16

    :goto_20
    const-string v2, "variable_name"

    move v4, v3

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Lyads/ow0;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v6, v8}, Lyads/b01;-><init>(Lyads/ow0;)V

    return-object v6

    :goto_21
    const-string v0, "type"

    invoke-static {v1, v0, v8}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x60c6ea47 -> :sswitch_14
        -0x60c6b6f6 -> :sswitch_13
        -0x4acd3f9a -> :sswitch_12
        -0x452fb1a6 -> :sswitch_11
        -0x3523bfe8 -> :sswitch_10
        -0x2f7b116e -> :sswitch_f
        -0x181876a4 -> :sswitch_e
        -0x13774683 -> :sswitch_d
        0x9970ee -> :sswitch_c
        0x6940745 -> :sswitch_b
        0x6b0147b -> :sswitch_a
        0xc27ca1c -> :sswitch_9
        0x11f904c1 -> :sswitch_8
        0x18e6fb09 -> :sswitch_7
        0x18e6fd2d -> :sswitch_6
        0x378e9274 -> :sswitch_5
        0x551ac888 -> :sswitch_4
        0x5c6dc295 -> :sswitch_3
        0x5ea5ba0b -> :sswitch_2
        0x6643f206 -> :sswitch_1
        0x6bf85891 -> :sswitch_0
    .end sparse-switch
.end method
