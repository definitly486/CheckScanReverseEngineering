.class public final Lyads/ly4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/ky4;

.field public static final b:[Lcl4;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/ky4;

    invoke-direct {v0}, Lyads/ky4;-><init>()V

    sput-object v0, Lyads/ly4;->Companion:Lyads/ky4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Ltc4;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ltc4;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcl4;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lyads/ly4;->b:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ly4;->a:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lyads/jy4;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lyads/ly4;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/oy4;->a:Lyads/oy4;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ly4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ly4;

    iget-object p0, p0, Lyads/ly4;->a:Ljava/util/List;

    iget-object p1, p1, Lyads/ly4;->a:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/ly4;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/ly4;->a:Ljava/util/List;

    const-string v0, "PrefetchedMediationData(mediationPrefetchAdapters="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lrs2;->c(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
