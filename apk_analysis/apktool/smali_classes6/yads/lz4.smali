.class public final Lyads/lz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/lz4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/lz4;

    invoke-direct {v0}, Lyads/lz4;-><init>()V

    sput-object v0, Lyads/lz4;->a:Lyads/lz4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationRevenue"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "value"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/lz4;->b:Ls96;

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

    const/4 p0, 0x1

    new-array p0, p0, [Ldf4;

    sget-object v0, Lpq2;->a:Lpq2;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 8

    sget-object p0, Lyads/lz4;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v2}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v2

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    move v0, v1

    move v5, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    invoke-interface {p1, p0, v2}, Ldu1;->decodeDoubleElement(Lmp7;I)D

    move-result-wide v3

    move v5, v1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lpg;->h(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move-wide v2, v3

    move v1, v5

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/nz4;

    invoke-direct {p0, v1, v2, v3}, Lyads/nz4;-><init>(ID)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/lz4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/nz4;

    sget-object p0, Lyads/lz4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-wide v0, p2, Lyads/nz4;->a:D

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, v0, v1}, Lgu1;->encodeDoubleElement(Lmp7;ID)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
