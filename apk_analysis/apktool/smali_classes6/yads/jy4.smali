.class public final Lyads/jy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/jy4;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/jy4;

    invoke-direct {v0}, Lyads/jy4;-><init>()V

    sput-object v0, Lyads/jy4;->a:Lyads/jy4;

    new-instance v1, Ls96;

    const-string v2, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationData"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "prefetched_mediation_data"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/jy4;->b:Ls96;

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

    sget-object p0, Lyads/ly4;->b:[Lcl4;

    const/4 v0, 0x1

    new-array v0, v0, [Ldf4;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 9

    sget-object p0, Lyads/jy4;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    sget-object v0, Lyads/ly4;->b:[Lcl4;

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl2;

    invoke-interface {p1, p0, v3, v0, v4}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_0
    move v5, v2

    move v6, v3

    move-object v1, v4

    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-nez v7, :cond_1

    aget-object v6, v0, v3

    invoke-interface {v6}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxl2;

    invoke-interface {p1, p0, v3, v6, v1}, Ldu1;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v6, v2

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lpg;->h(I)V

    return-object v4

    :cond_2
    move v5, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    move v2, v6

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/ly4;

    invoke-direct {p0, v2, v0}, Lyads/ly4;-><init>(ILjava/util/List;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/jy4;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/ly4;

    sget-object p0, Lyads/jy4;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    sget-object v0, Lyads/ly4;->b:[Lcl4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxp7;

    iget-object p2, p2, Lyads/ly4;->a:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lgu1;->encodeSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method
