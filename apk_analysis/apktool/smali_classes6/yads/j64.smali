.class public final Lyads/j64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/j64;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/j64;

    invoke-direct {v0}, Lyads/j64;-><init>()V

    sput-object v0, Lyads/j64;->a:Lyads/j64;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.core.initializer.validation.adapters.MediationNetworkData.MediationAdapterData"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "format"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "version"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "isIntegrated"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/j64;->b:Ls96;

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

    sget-object p0, Lca8;->a:Lca8;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ldf4;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    sget-object p0, Lgs0;->a:Lgs0;

    const/4 v0, 0x2

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 11

    sget-object p0, Lyads/j64;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v2, v3, v4}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, p0, v1}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v1

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    move v8, v2

    move v5, v3

    move v7, v5

    move-object v0, v4

    move-object v6, v0

    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v2, :cond_2

    if-ne v9, v1, :cond_1

    invoke-interface {p1, p0, v1}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v5

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lpg;->h(I)V

    return-object v4

    :cond_2
    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v2, v9, v6}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v0

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v8, v3

    goto :goto_0

    :cond_5
    move v1, v5

    move-object v2, v6

    move v3, v7

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/l64;

    invoke-direct {p0, v3, v0, v2, v1}, Lyads/l64;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/j64;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/l64;

    sget-object p0, Lyads/j64;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v0, p2, Lyads/l64;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object v1, p2, Lyads/l64;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    iget-boolean p2, p2, Lyads/l64;->c:Z

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeBooleanElement(Lmp7;IZ)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
