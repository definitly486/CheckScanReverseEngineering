.class public final Lyads/ni4;
.super Lyads/ij4;
.source "SourceFile"

# interfaces
.implements Lyads/pg4;


# instance fields
.field public final Q:Lyads/mi4;

.field public final R:Lyads/b05;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/mi4;Lyads/b05;Lyads/rt;Lyads/we4;)V
    .locals 6

    invoke-direct {p0, p1, p4, p5}, Lyads/ij4;-><init>(Landroid/content/Context;Lyads/rt;Lyads/we4;)V

    iput-object p2, p0, Lyads/ni4;->Q:Lyads/mi4;

    iput-object p3, p0, Lyads/ni4;->R:Lyads/b05;

    iget-object p1, p4, Lyads/rt;->a:Lyads/ee4;

    iget-object v1, p1, Lyads/ee4;->c:Lyads/e4;

    sget-object p1, Lyads/hk4;->c:Lyads/hk4;

    new-instance v5, Lyads/xh4;

    invoke-direct {v5}, Lyads/xh4;-><init>()V

    new-instance v0, Lyads/zh4;

    iget-object v3, p0, Lyads/ij4;->i:Lyads/d9;

    iget-object v4, p0, Lyads/ij4;->j:Lyads/vg4;

    const-string v2, "ad_unit"

    invoke-direct/range {v0 .. v5}, Lyads/zh4;-><init>(Lyads/e4;Ljava/lang/String;Lyads/d9;Lyads/vg4;Lyads/li4;)V

    sget-object p1, Lyads/gi4;->c:Lyads/gi4;

    iput-object p1, v0, Lyads/zh4;->f:Lyads/gi4;

    invoke-virtual {p0, v0}, Lyads/ij4;->a(Lyads/zh4;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ih4;)Lyads/g70;
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0, p1}, Lyads/mi4;->a(Lyads/ih4;)Lyads/g70;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/h80;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0, p1}, Lyads/mi4;->a(Lyads/h80;)V

    return-void
.end method

.method public final a(Lyads/ih4;Lyads/pz;)V
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0, p1, p2}, Lyads/mi4;->a(Lyads/ih4;Lyads/pz;)V

    return-void
.end method

.method public final b(Lyads/ih4;)Lyads/g70;
    .locals 2

    :try_start_0
    iget-object v0, p1, Lyads/ih4;->c:Landroid/view/View;

    new-instance v1, Lyads/rh4;

    invoke-direct {v1, p1}, Lyads/rh4;-><init>(Lyads/ih4;)V

    iget-object p1, p0, Lyads/ni4;->R:Lyads/b05;

    invoke-virtual {p0, v0, p1, v1}, Lyads/ij4;->a(Landroid/view/View;Lyads/b05;Lyads/rh4;)V

    sget-object p0, Lyads/f70;->a:Lyads/f70;
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Ad binding failed with unexpected exception"

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ad binding failed with unexpected error: %s"

    invoke-static {v0, p1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lyads/e70;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lyads/e70;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object p1, p0, Lyads/yf4;->b:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Ad binding failed: %s"

    invoke-static {v0, p1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lyads/e70;

    iget-object v0, p0, Lyads/yf4;->c:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lyads/e70;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p1
.end method

.method public final b(Lyads/h80;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lyads/ij4;->a(Lyads/h80;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lyads/s70;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->e()Lyads/s70;

    move-result-object p0

    return-object p0
.end method

.method public final getAdAssets()Lyads/f80;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->getAdAssets()Lyads/f80;

    move-result-object p0

    return-object p0
.end method

.method public final getAdType()Lyads/f95;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->getAdType()Lyads/f95;

    move-result-object p0

    return-object p0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->getInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    iget-object p0, p0, Lyads/mi4;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final loadImages()V
    .locals 0

    iget-object p0, p0, Lyads/ni4;->Q:Lyads/mi4;

    invoke-virtual {p0}, Lyads/mi4;->loadImages()V

    return-void
.end method
