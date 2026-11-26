.class public final Lyads/c23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/lv3;


# instance fields
.field public final a:Lyads/qv3;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyads/qv3;

    invoke-direct {v0, p1, p2}, Lyads/qv3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/c23;->a:Lyads/qv3;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c23;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 7

    iget-object v0, p0, Lyads/c23;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/c23;->a:Lyads/qv3;

    iget-object v2, v1, Lyads/qv3;->c:Lyads/pv3;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lyads/qv3;->a()Lyads/pv3;

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_4

    iget-object v3, v2, Lyads/pv3;->a:Ljava/lang/Object;

    const-string v4, "isComplete"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lyads/f55;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    iget-object v2, v2, Lyads/pv3;->a:Ljava/lang/Object;

    const-string v3, "getResult"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lyads/f55;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/location/Location;

    if-eqz v3, :cond_3

    move-object v1, v2

    check-cast v1, Landroid/location/Location;

    :cond_3
    iget-object p0, p0, Lyads/c23;->a:Lyads/qv3;

    invoke-virtual {p0}, Lyads/qv3;->a()Lyads/pv3;

    move-result-object v2

    iput-object v2, p0, Lyads/qv3;->c:Lyads/pv3;

    invoke-virtual {p0}, Lyads/qv3;->a()Lyads/pv3;

    move-result-object v2

    iput-object v2, p0, Lyads/qv3;->c:Lyads/pv3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p0
.end method
