.class public final Lyads/aa4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/aa4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/aa4;

    invoke-direct {v0}, Lyads/aa4;-><init>()V

    sput-object v0, Lyads/aa4;->a:Lyads/aa4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.utils.logger.model.MobileAdsNetworkRequestLog"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "timestamp"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "method"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "url"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "headers"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "body"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/aa4;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 6

    sget-object p0, Lyads/ca4;->f:[Lcl4;

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    invoke-static {v0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ldf4;

    sget-object v4, Lgw4;->a:Lgw4;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    aput-object p0, v3, v1

    const/4 p0, 0x4

    aput-object v2, v3, p0

    return-object v3
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 25

    sget-object v0, Lyads/aa4;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lyads/ca4;->f:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v0, v8}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v10

    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v5

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v6, v2, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v6, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v6, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v6, 0x1f

    move-object/from16 v23, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v4

    move-object/from16 v22, v5

    move/from16 v18, v6

    move-wide/from16 v19, v10

    goto/16 :goto_2

    :cond_0
    const-wide/16 v10, 0x0

    move/from16 v16, v7

    move v13, v8

    move-object v3, v9

    move-object v12, v3

    move-wide v14, v10

    move-object v10, v12

    move-object v11, v10

    :goto_0
    if-eqz v16, :cond_7

    move-object/from16 p0, v9

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v9

    const/4 v8, -0x1

    if-eq v9, v8, :cond_6

    if-eqz v9, :cond_5

    if-eq v9, v7, :cond_4

    if-eq v9, v5, :cond_3

    if-eq v9, v6, :cond_2

    if-ne v9, v4, :cond_1

    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v13, v13, 0x10

    :goto_1
    move-object/from16 v9, p0

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lpg;->h(I)V

    return-object p0

    :cond_2
    aget-object v8, v2, v6

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxl2;

    invoke-interface {v1, v0, v6, v8, v3}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    or-int/lit8 v13, v13, 0x8

    goto :goto_1

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v13, v13, 0x4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v13, v13, 0x2

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    invoke-interface {v1, v0, v8}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v14

    or-int/lit8 v13, v13, 0x1

    move-object/from16 v9, p0

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v9, p0

    move/from16 v16, v8

    goto :goto_0

    :cond_7
    move-object/from16 v23, v3

    move-object/from16 v21, v10

    move-object/from16 v24, v11

    move-object/from16 v22, v12

    move/from16 v18, v13

    move-wide/from16 v19, v14

    :goto_2
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v17, Lyads/ca4;

    invoke-direct/range {v17 .. v24}, Lyads/ca4;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v17
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/aa4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lyads/ca4;

    sget-object p0, Lyads/aa4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/ca4;->f:[Lcl4;

    iget-wide v1, p2, Lyads/ca4;->a:J

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    iget-object v1, p2, Lyads/ca4;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v1, p2, Lyads/ca4;->c:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p0, v2, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object v2, p2, Lyads/ca4;->d:Ljava/util/Map;

    invoke-interface {p1, p0, v1, v0, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object p2, p2, Lyads/ca4;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
