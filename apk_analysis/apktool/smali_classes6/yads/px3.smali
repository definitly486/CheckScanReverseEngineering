.class public final Lyads/px3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zu3;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/zu3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/px3;->a:Lyads/zu3;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/px3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/px3;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/px3;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lyads/px3;->a:Lyads/zu3;

    const-string v2, "YmadMauid"

    check-cast v1, Lyads/av3;

    invoke-virtual {v1, v2}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lyads/px3;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lyads/px3;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    iput-object p1, p0, Lyads/px3;->c:Ljava/lang/String;

    .line 28
    iget-object p0, p0, Lyads/px3;->a:Lyads/zu3;

    const-string v1, "YmadMauid"

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v1, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
