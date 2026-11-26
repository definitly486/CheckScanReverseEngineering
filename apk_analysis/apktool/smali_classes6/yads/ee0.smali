.class public final Lyads/ee0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/de0;

.field public static final g:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;

.field public final e:Lyads/ci0;

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/de0;

    invoke-direct {v0}, Lyads/de0;-><init>()V

    sput-object v0, Lyads/ee0;->Companion:Lyads/de0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lre0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lre0;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    new-instance v3, Lnk5;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lnk5;-><init>(I)V

    invoke-static {v0, v3}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Lcl4;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v3, v5

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object v6, v3, v1

    aput-object v6, v3, v2

    const/4 v1, 0x5

    aput-object v0, v3, v1

    sput-object v3, Lyads/ee0;->g:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lyads/ci0;Ljava/util/List;)V
    .locals 3

    and-int/lit8 v0, p1, 0x36

    const/4 v1, 0x0

    const/16 v2, 0x36

    if-ne v2, v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lyads/ee0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lyads/ee0;->a:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lyads/ee0;->b:Ljava/lang/String;

    iput-object p4, p0, Lyads/ee0;->c:Ljava/util/List;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    iput-object v1, p0, Lyads/ee0;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lyads/ee0;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lyads/ee0;->e:Lyads/ci0;

    iput-object p7, p0, Lyads/ee0;->f:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lyads/ce0;->b:Ls96;

    invoke-static {p0, p1, v2}, Lr96;->f(Lmp7;II)V

    throw v1
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/di0;->a:Lyads/di0;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic b()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/xh0;->a:Lyads/xh0;

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
    instance-of v1, p1, Lyads/ee0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ee0;

    iget-object v1, p0, Lyads/ee0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/ee0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ee0;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/ee0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/ee0;->c:Ljava/util/List;

    iget-object v3, p1, Lyads/ee0;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/ee0;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/ee0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/ee0;->e:Lyads/ci0;

    iget-object v3, p1, Lyads/ee0;->e:Lyads/ci0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyads/ee0;->f:Ljava/util/List;

    iget-object p1, p1, Lyads/ee0;->f:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyads/ee0;->a:Ljava/lang/String;

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

    iget-object v3, p0, Lyads/ee0;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lyads/ee0;->c:Ljava/util/List;

    invoke-static {v3, v0, v2}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lyads/ee0;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyads/ee0;->e:Lyads/ci0;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lyads/ci0;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object p0, p0, Lyads/ee0;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyads/ee0;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/ee0;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/ee0;->c:Ljava/util/List;

    iget-object v3, p0, Lyads/ee0;->d:Ljava/lang/String;

    iget-object v4, p0, Lyads/ee0;->e:Lyads/ci0;

    iget-object p0, p0, Lyads/ee0;->f:Ljava/util/List;

    const-string v5, ", networkName="

    const-string v6, ", waterfallParameters="

    const-string v7, "DebugPanelAdUnitWaterfallMediation(adapter="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkAdUnitIdName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cpmFloors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
