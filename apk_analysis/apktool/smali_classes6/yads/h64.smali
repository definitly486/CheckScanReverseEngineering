.class public final Lyads/h64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/h64;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/h64;

    invoke-direct {v0}, Lyads/h64;-><init>()V

    sput-object v0, Lyads/h64;->a:Lyads/h64;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "id"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "adapters"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/h64;->b:Ls96;

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

    sget-object p0, Lyads/m64;->e:[Lcl4;

    const/4 v0, 0x4

    new-array v0, v0, [Ldf4;

    sget-object v1, Lca8;->a:Lca8;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 20

    sget-object v0, Lyads/h64;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    sget-object v2, Lyads/m64;->e:[Lcl4;

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v7, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxl2;

    invoke-interface {v1, v0, v5, v2, v8}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v5, 0xf

    move-object/from16 v19, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v15, v5

    move-object/from16 v17, v6

    goto :goto_1

    :cond_0
    move v13, v6

    move v11, v7

    move-object v3, v8

    move-object v9, v3

    move-object v10, v9

    move-object v12, v10

    :goto_0
    if-eqz v13, :cond_6

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    if-eqz v14, :cond_4

    if-eq v14, v6, :cond_3

    if-eq v14, v4, :cond_2

    if-ne v14, v5, :cond_1

    aget-object v14, v2, v5

    invoke-interface {v14}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lxl2;

    invoke-interface {v1, v0, v5, v14, v3}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    or-int/lit8 v11, v11, 0x8

    goto :goto_0

    :cond_1
    invoke-static {v14}, Lpg;->h(I)V

    return-object v8

    :cond_2
    sget-object v14, Lca8;->a:Lca8;

    invoke-interface {v1, v0, v4, v14, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v11, v11, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v11, v11, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0, v7}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move v13, v7

    goto :goto_0

    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move v15, v11

    move-object/from16 v17, v12

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v14, Lyads/m64;

    invoke-direct/range {v14 .. v19}, Lyads/m64;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v14
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/h64;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lyads/m64;

    sget-object p0, Lyads/h64;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/m64;->e:[Lcl4;

    iget-object v1, p2, Lyads/m64;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v1, p2, Lyads/m64;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v1}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    sget-object v1, Lca8;->a:Lca8;

    iget-object v2, p2, Lyads/m64;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, p0, v3, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object p2, p2, Lyads/m64;->d:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
