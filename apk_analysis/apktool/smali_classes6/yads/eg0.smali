.class public final Lyads/eg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/eg0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/eg0;

    invoke-direct {v0}, Lyads/eg0;-><init>()V

    sput-object v0, Lyads/eg0;->a:Lyads/eg0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.model.DebugPanelReportData"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "app_data"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "sdk_data"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "adapters_data"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "consents_data"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "sdk_logs"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "network_logs"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/eg0;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 3

    sget-object p0, Lyads/gg0;->g:[Lcl4;

    const/4 v0, 0x6

    new-array v0, v0, [Ldf4;

    sget-object v1, Lyads/ue0;->a:Lyads/ue0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lyads/lg0;->a:Lyads/lg0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lyads/bf0;->a:Lyads/bf0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 26

    sget-object v0, Lyads/eg0;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lyads/gg0;->g:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lyads/ue0;->a:Lyads/ue0;

    invoke-interface {v1, v0, v9, v3, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/we0;

    sget-object v9, Lyads/lg0;->a:Lyads/lg0;

    invoke-interface {v1, v0, v8, v9, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/ng0;

    aget-object v9, v2, v7

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v7, v9, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v9, Lyads/bf0;->a:Lyads/bf0;

    invoke-interface {v1, v0, v4, v9, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/df0;

    aget-object v9, v2, v6

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v6, v9, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v5, v2, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v5, 0x3f

    move-object/from16 v25, v2

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move/from16 v19, v5

    move-object/from16 v24, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    goto/16 :goto_3

    :cond_0
    move/from16 v16, v8

    move v13, v9

    move-object/from16 p0, v10

    move-object/from16 v3, p0

    move-object v11, v3

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    :goto_0
    if-eqz v16, :cond_1

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v17

    packed-switch v17, :pswitch_data_0

    invoke-static/range {v17 .. v17}, Lpg;->h(I)V

    return-object p0

    :pswitch_0
    aget-object v17, v2, v5

    invoke-interface/range {v17 .. v17}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v5, v9, v3}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit8 v13, v13, 0x20

    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_1
    aget-object v9, v2, v6

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v6, v9, v14}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/util/List;

    or-int/lit8 v13, v13, 0x10

    goto :goto_1

    :pswitch_2
    sget-object v9, Lyads/bf0;->a:Lyads/bf0;

    invoke-interface {v1, v0, v4, v9, v12}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lyads/df0;

    or-int/lit8 v13, v13, 0x8

    goto :goto_1

    :pswitch_3
    aget-object v9, v2, v7

    invoke-interface {v9}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lxl2;

    invoke-interface {v1, v0, v7, v9, v15}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/util/List;

    or-int/lit8 v13, v13, 0x4

    goto :goto_1

    :pswitch_4
    sget-object v9, Lyads/lg0;->a:Lyads/lg0;

    invoke-interface {v1, v0, v8, v9, v10}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lyads/ng0;

    or-int/lit8 v13, v13, 0x2

    goto :goto_1

    :pswitch_5
    sget-object v9, Lyads/ue0;->a:Lyads/ue0;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v9, v11}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lyads/we0;

    or-int/lit8 v13, v13, 0x1

    move v9, v4

    :goto_2
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_6
    move v4, v9

    move/from16 v16, v9

    goto :goto_2

    :cond_1
    move-object/from16 v25, v3

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v12

    move/from16 v19, v13

    move-object/from16 v24, v14

    move-object/from16 v22, v15

    :goto_3
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v18, Lyads/gg0;

    invoke-direct/range {v18 .. v25}, Lyads/gg0;-><init>(ILyads/we0;Lyads/ng0;Ljava/util/List;Lyads/df0;Ljava/util/List;Ljava/util/List;)V

    return-object v18

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    sget-object p0, Lyads/eg0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lyads/gg0;

    sget-object p0, Lyads/eg0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/gg0;->g:[Lcl4;

    sget-object v1, Lyads/ue0;->a:Lyads/ue0;

    iget-object v2, p2, Lyads/gg0;->a:Lyads/we0;

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v1, Lyads/lg0;->a:Lyads/lg0;

    iget-object v2, p2, Lyads/gg0;->b:Lyads/ng0;

    const/4 v3, 0x1

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxp7;

    iget-object v3, p2, Lyads/gg0;->c:Ljava/util/List;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v1, Lyads/bf0;->a:Lyads/bf0;

    iget-object v2, p2, Lyads/gg0;->d:Lyads/df0;

    const/4 v3, 0x3

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxp7;

    iget-object v3, p2, Lyads/gg0;->e:Ljava/util/List;

    invoke-interface {p1, p0, v1, v2, v3}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object p2, p2, Lyads/gg0;->f:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
