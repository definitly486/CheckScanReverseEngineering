.class public final Lyads/ng0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/mg0;

.field public static final d:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/mg0;

    invoke-direct {v0}, Lyads/mg0;-><init>()V

    sput-object v0, Lyads/ng0;->Companion:Lyads/mg0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lab7;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lab7;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    new-array v1, v2, [Lcl4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lyads/ng0;->d:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ng0;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lyads/ng0;->b:Z

    iput-object p4, p0, Lyads/ng0;->c:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lyads/lg0;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "8.2.0"

    iput-object v0, p0, Lyads/ng0;->a:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lyads/ng0;->b:Z

    .line 25
    iput-object p1, p0, Lyads/ng0;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lca8;->a:Lca8;

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
    instance-of v1, p1, Lyads/ng0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ng0;

    iget-object v1, p0, Lyads/ng0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/ng0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lyads/ng0;->b:Z

    iget-boolean v3, p1, Lyads/ng0;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/ng0;->c:Ljava/util/List;

    iget-object p1, p1, Lyads/ng0;->c:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/ng0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyads/ng0;->b:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object p0, p0, Lyads/ng0;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lyads/ng0;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lyads/ng0;->b:Z

    iget-object p0, p0, Lyads/ng0;->c:Ljava/util/List;

    const-string v2, ", isIntegratedSuccess="

    const-string v3, ", integrationMessages="

    const-string v4, "DebugPanelSdkData(version="

    invoke-static {v4, v0, v2, v3, v1}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v1, p0, v0}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
