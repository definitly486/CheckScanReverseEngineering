.class public final Lyads/da4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/da4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/da4;

    invoke-direct {v0}, Lyads/da4;-><init>()V

    sput-object v0, Lyads/da4;->a:Lyads/da4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.utils.logger.model.MobileAdsNetworkResponseLog"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "timestamp"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "code"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "headers"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "body"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/da4;->b:Ls96;

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

    sget-object p0, Lyads/fa4;->e:[Lcl4;

    sget-object v0, Lz74;->a:Lz74;

    invoke-static {v0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    sget-object v2, Lca8;->a:Lca8;

    invoke-static {v2}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ldf4;

    sget-object v4, Lgw4;->a:Lgw4;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    aput-object p0, v3, v1

    const/4 p0, 0x3

    aput-object v2, v3, p0

    return-object v3
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 22

    sget-object v0, Lyads/da4;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lyads/fa4;->e:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v0, v7}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v9

    sget-object v3, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v6, v3, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v5, v2, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v5, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v5, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0xf

    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v16, v5

    move-wide/from16 v17, v9

    goto/16 :goto_2

    :cond_0
    const-wide/16 v9, 0x0

    move v14, v6

    move v11, v7

    move-object v3, v8

    move-wide v12, v9

    move-object v9, v3

    move-object v10, v9

    :goto_0
    if-eqz v14, :cond_6

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v15

    move-object/from16 p0, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_5

    if-eqz v15, :cond_4

    if-eq v15, v6, :cond_3

    if-eq v15, v5, :cond_2

    if-ne v15, v4, :cond_1

    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v8, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v11, v11, 0x8

    :goto_1
    move-object/from16 v8, p0

    goto :goto_0

    :cond_1
    invoke-static {v15}, Lpg;->h(I)V

    return-object p0

    :cond_2
    aget-object v8, v2, v5

    invoke-interface {v8}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lxl2;

    invoke-interface {v1, v0, v5, v8, v3}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    or-int/lit8 v11, v11, 0x4

    goto :goto_1

    :cond_3
    sget-object v8, Lz74;->a:Lz74;

    invoke-interface {v1, v0, v6, v8, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    or-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0, v7}, Ldu1;->decodeLongElement(Lmp7;I)J

    move-result-wide v12

    or-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v8, p0

    move v14, v7

    goto :goto_0

    :cond_6
    move-object/from16 v20, v3

    move-object/from16 v19, v9

    move-object/from16 v21, v10

    move/from16 v16, v11

    move-wide/from16 v17, v12

    :goto_2
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v15, Lyads/fa4;

    invoke-direct/range {v15 .. v21}, Lyads/fa4;-><init>(IJLjava/lang/Integer;Ljava/util/Map;Ljava/lang/String;)V

    return-object v15
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/da4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lyads/fa4;

    sget-object p0, Lyads/da4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/fa4;->e:[Lcl4;

    iget-wide v1, p2, Lyads/fa4;->a:J

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeLongElement(Lmp7;IJ)V

    sget-object v1, Lz74;->a:Lz74;

    iget-object v2, p2, Lyads/fa4;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object v2, p2, Lyads/fa4;->c:Ljava/util/Map;

    invoke-interface {p1, p0, v1, v0, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object p2, p2, Lyads/fa4;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
