.class public final Lyads/bg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/bg0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/bg0;

    invoke-direct {v0}, Lyads/bg0;-><init>()V

    sput-object v0, Lyads/bg0;->a:Lyads/bg0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelRemoteData"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "page_id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "latest_sdk_version"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "app_ads_txt_url"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "app_status"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "alerts"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "ad_units"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "mediation_networks"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/bg0;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 4

    sget-object p0, Lyads/dg0;->h:[Lcl4;

    const/4 v0, 0x7

    new-array v0, v0, [Ldf4;

    sget-object v1, Lca8;->a:Lca8;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf4;

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldf4;

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 28

    sget-object v0, Lyads/bg0;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lyads/dg0;->h:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v10, v3, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v1, v0, v9, v3, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1, v0, v5, v3, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v0, v4, v3, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v8

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxl2;

    invoke-interface {v1, v0, v8, v4, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    aget-object v8, v2, v7

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxl2;

    invoke-interface {v1, v0, v7, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v6, v2, v11}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v6, 0x7f

    move-object/from16 v27, v2

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v23, v5

    move/from16 v20, v6

    move-object/from16 v26, v7

    move-object/from16 v22, v9

    move-object/from16 v21, v10

    goto/16 :goto_2

    :cond_0
    move/from16 v17, v9

    move v15, v10

    move-object/from16 p0, v11

    move-object/from16 v3, p0

    move-object v10, v3

    move-object v12, v10

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    :goto_0
    if-eqz v17, :cond_1

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    invoke-static/range {v18 .. v18}, Lpg;->h(I)V

    return-object p0

    :pswitch_0
    aget-object v18, v2, v6

    invoke-interface/range {v18 .. v18}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v6, v9, v3}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit8 v15, v15, 0x40

    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    :pswitch_1
    aget-object v9, v2, v7

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v7, v9, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/util/List;

    or-int/lit8 v15, v15, 0x20

    goto :goto_1

    :pswitch_2
    aget-object v9, v2, v8

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v8, v9, v13}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Ljava/util/List;

    or-int/lit8 v15, v15, 0x10

    goto :goto_1

    :pswitch_3
    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v9, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    or-int/lit8 v15, v15, 0x8

    goto :goto_1

    :pswitch_4
    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v5, v9, v14}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    or-int/lit8 v15, v15, 0x4

    goto :goto_1

    :pswitch_5
    sget-object v9, Lca8;->a:Lca8;

    const/4 v4, 0x1

    invoke-interface {v1, v0, v4, v9, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v15, v15, 0x2

    move v9, v4

    const/4 v4, 0x3

    goto :goto_0

    :pswitch_6
    move v4, v9

    sget-object v9, Lca8;->a:Lca8;

    move-object/from16 v4, v16

    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, v9, v4}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    or-int/lit8 v15, v15, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_7
    move-object/from16 v4, v16

    const/4 v5, 0x0

    move/from16 v17, v5

    const/4 v4, 0x3

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_1
    move-object/from16 v4, v16

    move-object/from16 v27, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v23, v14

    move/from16 v20, v15

    :goto_2
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v19, Lyads/dg0;

    invoke-direct/range {v19 .. v27}, Lyads/dg0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/bg0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lyads/dg0;

    sget-object p0, Lyads/bg0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/dg0;->h:[Lcl4;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lyads/dg0;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lca8;->a:Lca8;

    iget-object v3, p2, Lyads/dg0;->a:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lyads/dg0;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lca8;->a:Lca8;

    iget-object v3, p2, Lyads/dg0;->b:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x2

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p2, Lyads/dg0;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lca8;->a:Lca8;

    iget-object v3, p2, Lyads/dg0;->c:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x3

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p2, Lyads/dg0;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lca8;->a:Lca8;

    iget-object v3, p2, Lyads/dg0;->d:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x4

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p2, Lyads/dg0;->e:Ljava/util/List;

    if-eqz v2, :cond_9

    :goto_4
    aget-object v2, v0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxp7;

    iget-object v3, p2, Lyads/dg0;->e:Ljava/util/List;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x5

    invoke-interface {p1, p0, v1}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p2, Lyads/dg0;->f:Ljava/util/List;

    if-eqz v2, :cond_b

    :goto_5
    aget-object v2, v0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxp7;

    iget-object v3, p2, Lyads/dg0;->f:Ljava/util/List;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object p2, p2, Lyads/dg0;->g:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
