.class public final Lyads/kr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lv3;


# instance fields
.field public final a:Lyads/nv3;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lyads/hu5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lyads/nv3;

    invoke-direct {v0}, Lyads/nv3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/kr3;->a:Lyads/nv3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/location/LocationManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lyads/kr3;->b:Landroid/location/LocationManager;

    sget-object v1, Lyads/hu5;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lyads/hu5;

    invoke-direct {v1, p1, v0}, Lyads/hu5;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v1, p0, Lyads/kr3;->c:Lyads/hu5;

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lyads/kr3;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lyads/kr3;->c:Lyads/hu5;

    iget-object v5, v4, Lyads/hu5;->b:Lyads/bu4;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v6}, Lyads/bu4;->a(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v4, Lyads/hu5;->b:Lyads/bu4;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v7}, Lyads/bu4;->a(Ljava/lang/String;)Z

    move-result v6

    sget-object v7, Lyads/hu5;->c:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lyads/hu5;->d:Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_2
    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    :goto_2
    :try_start_1
    iget-object v4, v4, Lyads/hu5;->a:Landroid/location/LocationManager;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    :cond_3
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    iget-object p0, p0, Lyads/kr3;->a:Lyads/nv3;

    invoke-virtual {p0, v0}, Lyads/nv3;->a(Ljava/util/List;)Landroid/location/Location;

    move-result-object v0

    :cond_5
    return-object v0
.end method
