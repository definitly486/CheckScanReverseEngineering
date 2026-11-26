.class public final Lyads/qv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ov3;

.field public final b:Lyads/bu4;

.field public c:Lyads/pv3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyads/ov3;

    invoke-direct {v0, p1, p2}, Lyads/ov3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lyads/bu4;

    invoke-direct {p2, p1}, Lyads/bu4;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qv3;->a:Lyads/ov3;

    iput-object p2, p0, Lyads/qv3;->b:Lyads/bu4;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/qv3;->c:Lyads/pv3;

    return-void
.end method


# virtual methods
.method public final a()Lyads/pv3;
    .locals 4

    iget-object v0, p0, Lyads/qv3;->a:Lyads/ov3;

    iget-object v1, v0, Lyads/ov3;->b:Lyads/g55;

    iget-object v1, v0, Lyads/ov3;->a:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/ov3;->c:Landroid/content/Context;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getFusedLocationProviderClient"

    invoke-static {v1, v3, v0}, Lyads/g55;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lyads/d23;

    invoke-direct {v1, v0}, Lyads/d23;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lyads/qv3;->b:Lyads/bu4;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3}, Lyads/bu4;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lyads/qv3;->b:Lyads/bu4;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Lyads/bu4;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, v1, Lyads/d23;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getLastLocation"

    invoke-static {p0, v1, v0}, Lyads/f55;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v2, Lyads/pv3;

    invoke-direct {v2, p0}, Lyads/pv3;-><init>(Ljava/lang/Object;)V

    :cond_2
    return-object v2
.end method
