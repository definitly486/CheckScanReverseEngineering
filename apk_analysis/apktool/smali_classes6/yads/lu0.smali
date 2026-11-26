.class public Lyads/lu0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;Lyads/vh2;Lyads/fs2;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "div-action"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "set_state"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string v2, "state_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-string v4, "temporary"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    :try_start_0
    invoke-static {v2}, Lyads/m32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v2

    check-cast v1, Lyads/vq0;

    invoke-virtual {v1, v2, v0}, Lyads/vq0;->a(Lyads/n32;Z)V
    :try_end_0
    .catch Lyads/pt4; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    move/from16 v16, v6

    goto/16 :goto_7

    :catch_0
    move/from16 v17, v3

    goto/16 :goto_c

    :cond_3
    const-string v5, "show_tooltip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "id"

    if-eqz v5, :cond_5

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    const-string v4, "multiple"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    check-cast v1, Lyads/vq0;

    invoke-virtual {v1}, Lyads/vq0;->v()Lyads/xb2;

    move-result-object v3

    iget-object v1, v1, Lyads/vq0;->B:Lyads/tt;

    invoke-virtual {v3, v2, v1, v0}, Lyads/xb2;->a(Ljava/lang/String;Lyads/tt;Z)V

    goto :goto_0

    :cond_5
    const-string v5, "hide_tooltip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return v3

    :cond_6
    check-cast v1, Lyads/vq0;

    invoke-virtual {v1}, Lyads/vq0;->v()Lyads/xb2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lyads/xb2;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v5, "set_variable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v8, "value"

    const-string v9, "name"

    if-eqz v5, :cond_c

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    return v3

    :cond_8
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return v3

    :cond_9
    instance-of v5, v1, Lyads/vq0;

    if-eqz v5, :cond_a

    move-object v10, v1

    check-cast v10, Lyads/vq0;

    goto :goto_1

    :cond_a
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_b
    :try_start_1
    invoke-static {v10, v4, v0, v2}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;
    :try_end_1
    .catch Lyads/k76; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_c
    const-string v5, "timer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v11, "action"

    if-eqz v5, :cond_11

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    return v3

    :cond_d
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    return v3

    :cond_e
    instance-of v4, v1, Lyads/vq0;

    if-eqz v4, :cond_f

    move-object v10, v1

    check-cast v10, Lyads/vq0;

    goto :goto_2

    :cond_f
    const/4 v10, 0x0

    :goto_2
    if-nez v10, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_10
    iget-object v1, v10, Lyads/vq0;->C:Lyads/hb2;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2, v0}, Lyads/hb2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    instance-of v4, v1, Lyads/vq0;

    if-eqz v4, :cond_12

    move-object v10, v1

    check-cast v10, Lyads/vq0;

    goto :goto_3

    :cond_12
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_13

    return v3

    :cond_13
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    return v3

    :cond_14
    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return v3

    :cond_15
    iget-object v3, v10, Lyads/vq0;->n:Lyads/nq0;

    iget-object v3, v3, Lyads/nq0;->U:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/og2;

    invoke-virtual {v3, v10, v1, v0, v2}, Lyads/og2;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Z

    move-result v0

    return v0

    :cond_16
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v11, "scroll_backward"

    const-string v12, "scroll_forward"

    const-string v13, "scroll_to_start"

    const-string v14, "set_current_item"

    const-string v15, "scroll_to_end"

    move/from16 v16, v6

    const-string v6, "scroll_to_position"

    const-string v10, "set_next_item"

    const-string v3, "set_previous_item"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_1
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_4

    :sswitch_2
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_5
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_6
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :sswitch_7
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_8

    :cond_17
    :goto_4
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    goto/16 :goto_b

    :cond_18
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lyads/jp0;->c:Lyads/jp0;

    goto :goto_5

    :cond_19
    invoke-static {v5, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    sget-object v7, Lyads/jp0;->b:Lyads/jp0;

    goto :goto_5

    :cond_1a
    sget-object v7, Lyads/jp0;->b:Lyads/jp0;

    :goto_5
    invoke-static {v4, v1, v2, v7}, Lyads/ki2;->a(Ljava/lang/String;Lyads/vh2;Lyads/fs2;Lyads/jp0;)Lyads/li2;

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_b

    :cond_1b
    const-string v2, "animated"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :cond_1c
    move/from16 v2, v16

    :goto_6
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v7, "overflow"

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_b

    :sswitch_8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_b

    :cond_1d
    invoke-static {v0}, Lyads/dn1;->a(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, v1, Lyads/li2;->a:Lyads/ji2;

    sget-object v3, Lyads/g12;->e:Lyads/g12;

    invoke-virtual {v1, v0, v3, v2}, Lyads/ji2;->a(ILyads/g12;Z)V

    goto/16 :goto_7

    :sswitch_9
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_b

    :cond_1e
    iget-object v0, v1, Lyads/li2;->a:Lyads/ji2;

    invoke-virtual {v0, v2}, Lyads/ji2;->a(Z)V

    goto/16 :goto_7

    :sswitch_a
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_b

    :cond_1f
    const-string v3, "item"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto/16 :goto_b

    :cond_20
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v1, v0, v2}, Lyads/li2;->a(IZ)V

    return v16

    :sswitch_b
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_b

    :cond_21
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Lyads/li2;->a(IZ)V

    goto :goto_7

    :sswitch_c
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_b

    :cond_22
    invoke-static {v0}, Lyads/dn1;->a(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    neg-int v3, v3

    invoke-virtual {v1, v0, v3, v2}, Lyads/li2;->a(Ljava/lang/String;IZ)V

    goto :goto_7

    :sswitch_d
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_b

    :cond_23
    invoke-static {v0}, Lyads/dn1;->a(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v2}, Lyads/li2;->b(Ljava/lang/String;IZ)V

    goto :goto_7

    :sswitch_e
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_b

    :cond_24
    invoke-static {v0}, Lyads/dn1;->a(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    neg-int v3, v3

    invoke-virtual {v1, v0, v3, v2}, Lyads/li2;->b(Ljava/lang/String;IZ)V

    goto :goto_7

    :sswitch_f
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_b

    :cond_25
    invoke-static {v0}, Lyads/dn1;->a(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v2}, Lyads/li2;->a(Ljava/lang/String;IZ)V

    :goto_7
    return v16

    :cond_26
    :goto_8
    const-string v2, "set_stored_value"

    invoke-static {v4, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    instance-of v2, v1, Lyads/vq0;

    if-eqz v2, :cond_27

    check-cast v1, Lyads/vq0;

    goto :goto_9

    :cond_27
    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_28

    goto :goto_b

    :cond_28
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    const/4 v2, 0x0

    :cond_29
    if-nez v2, :cond_2a

    goto :goto_b

    :cond_2a
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2b

    const/4 v3, 0x0

    :cond_2b
    if-nez v3, :cond_2c

    goto :goto_b

    :cond_2c
    const-string v4, "lifetime"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    const/4 v4, 0x0

    :cond_2d
    if-eqz v4, :cond_2f

    invoke-static {v4}, Lqa8;->q(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "type"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    const/4 v10, 0x0

    goto :goto_a

    :cond_2e
    move-object v10, v0

    :goto_a
    if-eqz v10, :cond_2f

    sget-object v0, Lyads/ir5;->c:Lyads/hr5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lyads/hr5;->a(Ljava/lang/String;)Lyads/ir5;

    move-result-object v0

    if-eqz v0, :cond_2f

    :try_start_3
    invoke-static {v0, v2, v3}, Lyads/nr5;->a(Lyads/ir5;Ljava/lang/String;Ljava/lang/String;)Lyads/kr5;

    move-result-object v0
    :try_end_3
    .catch Lyads/lr5; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v2, v1, Lyads/vq0;->n:Lyads/nq0;

    iget-object v2, v2, Lyads/nq0;->B:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/or5;

    iget-object v3, v1, Lyads/vq0;->o:Lyads/wq0;

    invoke-virtual {v3}, Lyads/wq0;->b()Lyads/bo2;

    move-result-object v3

    iget-object v6, v1, Lyads/vq0;->O:Lyads/qb1;

    iget-object v1, v1, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {v3, v1, v6}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v1

    invoke-virtual {v2, v0, v4, v5, v1}, Lyads/or5;->a(Lyads/kr5;JLyads/ao2;)Z

    move-result v0

    return v0

    :catch_1
    :cond_2f
    :goto_b
    const/16 v17, 0x0

    :goto_c
    return v17

    :cond_30
    move/from16 v17, v3

    return v17

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aa352be -> :sswitch_7
        -0x59f392eb -> :sswitch_6
        -0x505ffcad -> :sswitch_5
        -0x4c5109c2 -> :sswitch_4
        -0x2deb3130 -> :sswitch_3
        -0x540a92a -> :sswitch_2
        0x25c756c9 -> :sswitch_1
        0x41864ffb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6aa352be -> :sswitch_f
        -0x59f392eb -> :sswitch_e
        -0x505ffcad -> :sswitch_d
        -0x4c5109c2 -> :sswitch_c
        -0x2deb3130 -> :sswitch_b
        -0x540a92a -> :sswitch_a
        0x25c756c9 -> :sswitch_9
        0x41864ffb -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public a(Lyads/r02;Lyads/vq0;Lyads/fs2;)Z
    .locals 4

    .line 710
    invoke-interface {p1}, Lyads/r02;->b()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    invoke-static {p0, p2}, Lyads/jg6;->a(Ljava/lang/String;Lyads/vq0;)Landroid/view/View;

    move-result-object p0

    .line 712
    instance-of v1, p0, Lyads/wh1;

    if-eqz v1, :cond_1

    .line 713
    check-cast p0, Lyads/wh1;

    invoke-interface {p0}, Lyads/wh1;->c()Lyads/tt;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 714
    iget-object p0, p0, Lyads/tt;->b:Lyads/fs2;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_2

    move-object p0, p3

    .line 715
    :cond_2
    invoke-interface {p1}, Lyads/r02;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lyads/r02;->c()Lyads/ry0;

    move-result-object v2

    invoke-interface {p1}, Lyads/r02;->e()Lyads/nc1;

    move-result-object v3

    invoke-static {v1, v2, p2, p0, v3}, Lyads/az0;->a(Ljava/lang/String;Lyads/ry0;Lyads/vh2;Lyads/fs2;Lyads/nc1;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 716
    :cond_3
    invoke-interface {p1}, Lyads/r02;->getUrl()Lyads/as2;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lyads/r02;->getUrl()Lyads/as2;

    move-result-object v0

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_4
    if-eqz v0, :cond_b

    .line 717
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 718
    :cond_5
    const-string v3, "download"

    .line 719
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 720
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    goto :goto_3

    .line 721
    :cond_7
    invoke-interface {p1}, Lyads/r02;->getUrl()Lyads/as2;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    if-nez p0, :cond_8

    goto :goto_2

    .line 722
    :cond_8
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_2

    .line 723
    :cond_9
    new-instance p1, Lyads/mc1;

    invoke-direct {p1}, Lyads/mc1;-><init>()V

    .line 724
    iget-object p3, p2, Lyads/vq0;->n:Lyads/nq0;

    .line 725
    iget-object p3, p3, Lyads/nq0;->c:Lyads/c81;

    .line 726
    iget-object p3, p3, Lyads/c81;->i:Lyads/sc1;

    .line 727
    check-cast p3, Lf2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p0, p1}, Lyads/sc1;->b(Lyads/vq0;Ljava/lang/String;Lyads/mc1;)Lyads/du3;

    move-result-object p0

    .line 728
    invoke-virtual {p2, p0}, Lyads/vq0;->a(Lyads/du3;)V

    return v2

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0

    .line 729
    :cond_b
    :goto_3
    invoke-static {v0, p2, p3}, Lyads/lu0;->a(Landroid/net/Uri;Lyads/vh2;Lyads/fs2;)Z

    move-result p0

    return p0
.end method

.method public a(Lyads/xr0;Lyads/vh2;Lyads/fs2;)Z
    .locals 5

    .line 730
    move-object p0, p2

    check-cast p0, Lyads/vq0;

    iget-object v0, p1, Lyads/xr0;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {v0, p0}, Lyads/jg6;->a(Ljava/lang/String;Lyads/vq0;)Landroid/view/View;

    move-result-object v0

    .line 732
    instance-of v2, v0, Lyads/wh1;

    if-eqz v2, :cond_1

    .line 733
    check-cast v0, Lyads/wh1;

    invoke-interface {v0}, Lyads/wh1;->c()Lyads/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, v0, Lyads/tt;->b:Lyads/fs2;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, p3

    .line 735
    :cond_2
    iget-object v2, p1, Lyads/xr0;->h:Ljava/lang/String;

    iget-object v3, p1, Lyads/xr0;->j:Lyads/ry0;

    iget-object v4, p1, Lyads/xr0;->a:Lyads/nc1;

    invoke-static {v2, v3, p2, v0, v4}, Lyads/az0;->a(Ljava/lang/String;Lyads/ry0;Lyads/vh2;Lyads/fs2;Lyads/nc1;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    return v3

    .line 736
    :cond_3
    iget-object v2, p1, Lyads/xr0;->k:Lyads/as2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/net/Uri;

    :cond_4
    if-eqz v1, :cond_b

    .line 737
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_3

    .line 738
    :cond_5
    const-string v2, "download"

    .line 739
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 740
    const-string p3, "url"

    invoke-virtual {v1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 741
    :cond_6
    instance-of v2, p2, Lyads/vq0;

    if-nez v2, :cond_7

    goto :goto_3

    .line 742
    :cond_7
    iget-object p1, p1, Lyads/xr0;->k:Lyads/as2;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_8

    goto :goto_2

    .line 743
    :cond_8
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2

    .line 744
    :cond_9
    new-instance p2, Lyads/mc1;

    invoke-direct {p2}, Lyads/mc1;-><init>()V

    .line 745
    iget-object p3, p0, Lyads/vq0;->n:Lyads/nq0;

    .line 746
    iget-object p3, p3, Lyads/nq0;->c:Lyads/c81;

    .line 747
    iget-object p3, p3, Lyads/c81;->i:Lyads/sc1;

    .line 748
    check-cast p3, Lf2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lyads/sc1;->b(Lyads/vq0;Ljava/lang/String;Lyads/mc1;)Lyads/du3;

    move-result-object p1

    .line 749
    invoke-virtual {p0, p1}, Lyads/vq0;->a(Lyads/du3;)V

    return v3

    :cond_a
    :goto_2
    const/4 p0, 0x0

    return p0

    .line 750
    :cond_b
    :goto_3
    invoke-static {v1, p2, v0}, Lyads/lu0;->a(Landroid/net/Uri;Lyads/vh2;Lyads/fs2;)Z

    move-result p0

    return p0
.end method
