.class public final Lyads/dg0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/cg0;

.field public static final h:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lyads/cg0;

    invoke-direct {v0}, Lyads/cg0;-><init>()V

    sput-object v0, Lyads/dg0;->Companion:Lyads/cg0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lit9;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    new-instance v2, Ljt9;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljt9;-><init>(I)V

    invoke-static {v0, v2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v2

    new-instance v4, Ly70;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ly70;-><init>(I)V

    invoke-static {v0, v4}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v4, 0x7

    new-array v4, v4, [Lcl4;

    const/4 v6, 0x0

    aput-object v6, v4, v3

    const/4 v3, 0x1

    aput-object v6, v4, v3

    aput-object v6, v4, v5

    const/4 v3, 0x3

    aput-object v6, v4, v3

    const/4 v3, 0x4

    aput-object v1, v4, v3

    const/4 v1, 0x5

    aput-object v2, v4, v1

    const/4 v1, 0x6

    aput-object v0, v4, v1

    sput-object v4, Lyads/dg0;->h:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ne v2, v0, :cond_6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lyads/dg0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lyads/dg0;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lyads/dg0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lyads/dg0;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lyads/dg0;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lyads/dg0;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v1, p0, Lyads/dg0;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lyads/dg0;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v1, p0, Lyads/dg0;->e:Ljava/util/List;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lyads/dg0;->e:Ljava/util/List;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v1, p0, Lyads/dg0;->f:Ljava/util/List;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lyads/dg0;->f:Ljava/util/List;

    :goto_5
    iput-object p8, p0, Lyads/dg0;->g:Ljava/util/List;

    return-void

    :cond_6
    sget-object p0, Lyads/bg0;->b:Ls96;

    invoke-static {p0, p1, v2}, Lr96;->f(Lmp7;II)V

    throw v1
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/oe0;->a:Lyads/oe0;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic b()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/md0;->a:Lyads/md0;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic c()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/yf0;->a:Lyads/yf0;

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
    instance-of v1, p1, Lyads/dg0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/dg0;

    iget-object v1, p0, Lyads/dg0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/dg0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/dg0;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/dg0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/dg0;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/dg0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/dg0;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/dg0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/dg0;->e:Ljava/util/List;

    iget-object v3, p1, Lyads/dg0;->e:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/dg0;->f:Ljava/util/List;

    iget-object v3, p1, Lyads/dg0;->f:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lyads/dg0;->g:Ljava/util/List;

    iget-object p1, p1, Lyads/dg0;->g:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/dg0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/dg0;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/dg0;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/dg0;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/dg0;->e:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/dg0;->f:Ljava/util/List;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/dg0;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lyads/dg0;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/dg0;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/dg0;->c:Ljava/lang/String;

    iget-object v3, p0, Lyads/dg0;->d:Ljava/lang/String;

    iget-object v4, p0, Lyads/dg0;->e:Ljava/util/List;

    iget-object v5, p0, Lyads/dg0;->f:Ljava/util/List;

    iget-object p0, p0, Lyads/dg0;->g:Ljava/util/List;

    const-string v6, ", latestSdkVersion="

    const-string v7, ", appAdsTxtUrl="

    const-string v8, "DebugPanelRemoteData(pageId="

    invoke-static {v8, v0, v6, v1, v7}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appStatus="

    const-string v6, ", alerts="

    invoke-static {v0, v2, v1, v3, v6}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediationNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v1, p0, v0}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
