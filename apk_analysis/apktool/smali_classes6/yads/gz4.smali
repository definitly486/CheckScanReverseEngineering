.class public final Lyads/gz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/gz4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/gz4;

    invoke-direct {v0}, Lyads/gz4;-><init>()V

    sput-object v0, Lyads/gz4;->a:Lyads/gz4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResult"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "status"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "error_message"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "status_code"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/gz4;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 2

    sget-object p0, Lyads/iz4;->d:[Lcl4;

    const/4 v0, 0x3

    new-array v0, v0, [Ldf4;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    sget-object p0, Lca8;->a:Lca8;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object p0, Lz74;->a:Lz74;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 12

    sget-object p0, Lyads/gz4;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    sget-object v0, Lyads/iz4;->d:[Lcl4;

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl2;

    invoke-interface {p1, p0, v4, v0, v5}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/kz4;

    sget-object v1, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v3, v1, v5}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lz74;->a:Lz74;

    invoke-interface {p1, p0, v2, v3, v5}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    goto :goto_1

    :cond_0
    move v9, v3

    move v8, v4

    move-object v1, v5

    move-object v6, v1

    move-object v7, v6

    :goto_0
    if-eqz v9, :cond_5

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-eqz v10, :cond_3

    if-eq v10, v3, :cond_2

    if-ne v10, v2, :cond_1

    sget-object v10, Lz74;->a:Lz74;

    invoke-interface {p1, p0, v2, v10, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v10}, Lpg;->h(I)V

    return-object v5

    :cond_2
    sget-object v10, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v3, v10, v6}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_3
    aget-object v10, v0, v4

    invoke-interface {v10}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lxl2;

    invoke-interface {p1, p0, v4, v10, v1}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/kz4;

    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v9, v4

    goto :goto_0

    :cond_5
    move-object v0, v1

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/iz4;

    invoke-direct {p0, v3, v0, v1, v2}, Lyads/iz4;-><init>(ILyads/kz4;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/gz4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/iz4;

    sget-object p0, Lyads/gz4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/iz4;->d:[Lcl4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object v2, p2, Lyads/iz4;->a:Lyads/kz4;

    invoke-interface {p1, p0, v1, v0, v2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lca8;->a:Lca8;

    iget-object v1, p2, Lyads/iz4;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    sget-object v0, Lz74;->a:Lz74;

    iget-object p2, p2, Lyads/iz4;->c:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
