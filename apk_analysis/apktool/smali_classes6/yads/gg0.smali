.class public final Lyads/gg0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/fg0;

.field public static final g:[Lcl4;


# instance fields
.field public final a:Lyads/we0;

.field public final b:Lyads/ng0;

.field public final c:Ljava/util/List;

.field public final d:Lyads/df0;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lyads/fg0;

    invoke-direct {v0}, Lyads/fg0;-><init>()V

    sput-object v0, Lyads/gg0;->Companion:Lyads/fg0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lhb7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lhb7;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    new-instance v3, Lq14;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lq14;-><init>(I)V

    invoke-static {v0, v3}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v3

    new-instance v5, Loz4;

    invoke-direct {v5, v4}, Loz4;-><init>(I)V

    invoke-static {v0, v5}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v5, 0x6

    new-array v5, v5, [Lcl4;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    aput-object v7, v5, v2

    aput-object v1, v5, v4

    const/4 v1, 0x3

    aput-object v7, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    const/4 v1, 0x5

    aput-object v0, v5, v1

    sput-object v5, Lyads/gg0;->g:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILyads/we0;Lyads/ng0;Ljava/util/List;Lyads/df0;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/gg0;->a:Lyads/we0;

    iput-object p3, p0, Lyads/gg0;->b:Lyads/ng0;

    iput-object p4, p0, Lyads/gg0;->c:Ljava/util/List;

    iput-object p5, p0, Lyads/gg0;->d:Lyads/df0;

    iput-object p6, p0, Lyads/gg0;->e:Ljava/util/List;

    iput-object p7, p0, Lyads/gg0;->f:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lyads/eg0;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lyads/we0;Lyads/ng0;Ljava/util/List;Lyads/df0;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lyads/gg0;->a:Lyads/we0;

    .line 31
    iput-object p2, p0, Lyads/gg0;->b:Lyads/ng0;

    .line 32
    iput-object p3, p0, Lyads/gg0;->c:Ljava/util/List;

    .line 33
    iput-object p4, p0, Lyads/gg0;->d:Lyads/df0;

    .line 34
    iput-object p5, p0, Lyads/gg0;->e:Ljava/util/List;

    .line 35
    iput-object p6, p0, Lyads/gg0;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/h64;->a:Lyads/h64;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic b()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/la4;->a:Lyads/la4;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic c()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/v94;->a:Lyads/v94;

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
    instance-of v1, p1, Lyads/gg0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/gg0;

    iget-object v1, p0, Lyads/gg0;->a:Lyads/we0;

    iget-object v3, p1, Lyads/gg0;->a:Lyads/we0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/gg0;->b:Lyads/ng0;

    iget-object v3, p1, Lyads/gg0;->b:Lyads/ng0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/gg0;->c:Ljava/util/List;

    iget-object v3, p1, Lyads/gg0;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/gg0;->d:Lyads/df0;

    iget-object v3, p1, Lyads/gg0;->d:Lyads/df0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/gg0;->e:Ljava/util/List;

    iget-object v3, p1, Lyads/gg0;->e:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyads/gg0;->f:Ljava/util/List;

    iget-object p1, p1, Lyads/gg0;->f:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/gg0;->a:Lyads/we0;

    invoke-virtual {v0}, Lyads/we0;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/gg0;->b:Lyads/ng0;

    invoke-virtual {v2}, Lyads/ng0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/gg0;->c:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lyads/gg0;->d:Lyads/df0;

    invoke-virtual {v2}, Lyads/df0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/gg0;->e:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lyads/gg0;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyads/gg0;->a:Lyads/we0;

    iget-object v1, p0, Lyads/gg0;->b:Lyads/ng0;

    iget-object v2, p0, Lyads/gg0;->c:Ljava/util/List;

    iget-object v3, p0, Lyads/gg0;->d:Lyads/df0;

    iget-object v4, p0, Lyads/gg0;->e:Ljava/util/List;

    iget-object p0, p0, Lyads/gg0;->f:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DebugPanelReportData(appData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networksData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkLogs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkLogs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
