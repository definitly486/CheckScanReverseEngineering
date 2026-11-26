.class public final Lyads/oy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/oy4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/oy4;

    invoke-direct {v0}, Lyads/oy4;-><init>()V

    sput-object v0, Lyads/oy4;->a:Lyads/oy4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationInfo"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "adapter"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "network_winner"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "revenue"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "network_ad_info"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/oy4;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 5

    sget-object p0, Lca8;->a:Lca8;

    sget-object v0, Lyads/wy4;->a:Lyads/wy4;

    invoke-static {v0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    sget-object v1, Lyads/lz4;->a:Lyads/lz4;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ldf4;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    const/4 p0, 0x2

    aput-object v1, v3, p0

    sget-object p0, Lyads/gz4;->a:Lyads/gz4;

    const/4 v0, 0x3

    aput-object p0, v3, v0

    const/4 p0, 0x4

    aput-object v2, v3, p0

    return-object v3
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 22

    sget-object v0, Lyads/oy4;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lyads/wy4;->a:Lyads/wy4;

    invoke-interface {v1, v0, v6, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/yy4;

    sget-object v7, Lyads/lz4;->a:Lyads/lz4;

    invoke-interface {v1, v0, v5, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/nz4;

    sget-object v7, Lyads/gz4;->a:Lyads/gz4;

    invoke-interface {v1, v0, v3, v7, v8}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/iz4;

    sget-object v7, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x1f

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move/from16 v16, v7

    :goto_0
    move-object/from16 v17, v2

    goto/16 :goto_3

    :cond_0
    move v14, v6

    move v13, v7

    move-object v2, v8

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    :goto_1
    if-eqz v14, :cond_7

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v15

    move-object/from16 p0, v8

    const/4 v8, -0x1

    if-eq v15, v8, :cond_6

    if-eqz v15, :cond_5

    if-eq v15, v6, :cond_4

    if-eq v15, v5, :cond_3

    if-eq v15, v3, :cond_2

    if-ne v15, v4, :cond_1

    sget-object v8, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v8, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v13, v13, 0x10

    :goto_2
    move-object/from16 v8, p0

    goto :goto_1

    :cond_1
    invoke-static {v15}, Lpg;->h(I)V

    return-object p0

    :cond_2
    sget-object v8, Lyads/gz4;->a:Lyads/gz4;

    invoke-interface {v1, v0, v3, v8, v9}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lyads/iz4;

    or-int/lit8 v13, v13, 0x8

    goto :goto_2

    :cond_3
    sget-object v8, Lyads/lz4;->a:Lyads/lz4;

    invoke-interface {v1, v0, v5, v8, v11}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lyads/nz4;

    or-int/lit8 v13, v13, 0x4

    goto :goto_2

    :cond_4
    sget-object v8, Lyads/wy4;->a:Lyads/wy4;

    invoke-interface {v1, v0, v6, v8, v12}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lyads/yy4;

    or-int/lit8 v13, v13, 0x2

    goto :goto_2

    :cond_5
    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p0

    move v14, v7

    goto :goto_1

    :cond_7
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v16, v13

    goto :goto_0

    :goto_3
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v15, Lyads/qy4;

    invoke-direct/range {v15 .. v21}, Lyads/qy4;-><init>(ILjava/lang/String;Lyads/yy4;Lyads/nz4;Lyads/iz4;Ljava/lang/String;)V

    return-object v15
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/oy4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/qy4;

    sget-object p0, Lyads/oy4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v0, p2, Lyads/qy4;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    sget-object v0, Lyads/wy4;->a:Lyads/wy4;

    iget-object v1, p2, Lyads/qy4;->b:Lyads/yy4;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lyads/lz4;->a:Lyads/lz4;

    iget-object v1, p2, Lyads/qy4;->c:Lyads/nz4;

    const/4 v2, 0x2

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lyads/gz4;->a:Lyads/gz4;

    iget-object v1, p2, Lyads/qy4;->d:Lyads/iz4;

    const/4 v2, 0x3

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object p2, p2, Lyads/qy4;->e:Ljava/lang/String;

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
