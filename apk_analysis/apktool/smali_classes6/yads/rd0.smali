.class public final Lyads/rd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/qd0;

.field public static final f:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/qd0;

    invoke-direct {v0}, Lyads/qd0;-><init>()V

    sput-object v0, Lyads/rd0;->Companion:Lyads/qd0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lxs4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lxs4;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcl4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v4, v1, v0

    sput-object v1, Lyads/rd0;->f:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v2, v0, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lyads/rd0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lyads/rd0;->a:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lyads/rd0;->b:Ljava/lang/String;

    iput-object p4, p0, Lyads/rd0;->c:Ljava/util/List;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iput-object v1, p0, Lyads/rd0;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lyads/rd0;->d:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    iput-object v1, p0, Lyads/rd0;->e:Ljava/lang/String;

    return-void

    :cond_2
    iput-object p6, p0, Lyads/rd0;->e:Ljava/lang/String;

    return-void

    :cond_3
    sget-object p0, Lyads/pd0;->b:Ls96;

    invoke-static {p0, p1, v2}, Lr96;->f(Lmp7;II)V

    throw v1
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/xe0;->a:Lyads/xe0;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/rd0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/rd0;

    iget-object v1, p0, Lyads/rd0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/rd0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/rd0;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/rd0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/rd0;->c:Ljava/util/List;

    iget-object v3, p1, Lyads/rd0;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/rd0;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/rd0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyads/rd0;->e:Ljava/lang/String;

    iget-object p1, p1, Lyads/rd0;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyads/rd0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyads/rd0;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lyads/rd0;->c:Ljava/util/List;

    invoke-static {v3, v0, v2}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lyads/rd0;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lyads/rd0;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyads/rd0;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/rd0;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/rd0;->c:Ljava/util/List;

    iget-object v3, p0, Lyads/rd0;->d:Ljava/lang/String;

    iget-object p0, p0, Lyads/rd0;->e:Ljava/lang/String;

    const-string v4, ", networkName="

    const-string v5, ", biddingParameters="

    const-string v6, "DebugPanelAdUnitBiddingMediation(adapter="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkAdUnitIdName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
