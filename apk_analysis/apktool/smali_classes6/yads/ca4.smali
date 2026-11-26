.class public final Lyads/ca4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/ba4;

.field public static final f:[Lcl4;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/ba4;

    invoke-direct {v0}, Lyads/ba4;-><init>()V

    sput-object v0, Lyads/ca4;->Companion:Lyads/ba4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lu2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lu2;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcl4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    aput-object v4, v1, v0

    sput-object v1, Lyads/ca4;->f:[Lcl4;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lyads/ca4;->a:J

    iput-object p4, p0, Lyads/ca4;->b:Ljava/lang/String;

    iput-object p5, p0, Lyads/ca4;->c:Ljava/lang/String;

    iput-object p6, p0, Lyads/ca4;->d:Ljava/util/Map;

    iput-object p7, p0, Lyads/ca4;->e:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lyads/aa4;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lyads/ca4;->a:J

    .line 29
    iput-object p3, p0, Lyads/ca4;->b:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lyads/ca4;->c:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lyads/ca4;->d:Ljava/util/Map;

    .line 32
    iput-object p6, p0, Lyads/ca4;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 3

    new-instance v0, Luq4;

    sget-object v1, Lca8;->a:Lca8;

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Luq4;-><init>(Ldf4;Ldf4;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ca4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ca4;

    iget-wide v3, p0, Lyads/ca4;->a:J

    iget-wide v5, p1, Lyads/ca4;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ca4;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/ca4;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/ca4;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/ca4;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/ca4;->d:Ljava/util/Map;

    iget-object v3, p1, Lyads/ca4;->d:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lyads/ca4;->e:Ljava/lang/String;

    iget-object p1, p1, Lyads/ca4;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lyads/ca4;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ca4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyads/ca4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyads/ca4;->d:Ljava/util/Map;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lyads/ca4;->e:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lyads/ca4;->a:J

    iget-object v2, p0, Lyads/ca4;->b:Ljava/lang/String;

    iget-object v3, p0, Lyads/ca4;->c:Ljava/lang/String;

    iget-object v4, p0, Lyads/ca4;->d:Ljava/util/Map;

    iget-object p0, p0, Lyads/ca4;->e:Ljava/lang/String;

    const-string v5, "MobileAdsNetworkRequestLog(timestamp="

    const-string v6, ", method="

    invoke-static {v0, v1, v5, v6, v2}, Lah;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    const-string v2, ")"

    invoke-static {v0, v1, p0, v2}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
