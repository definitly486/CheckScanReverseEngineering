.class public final Lyads/tb3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vg;

.field public final b:Lyads/ig;

.field public final c:Landroid/content/Context;

.field public final d:Lyads/ub3;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object v0

    new-instance v1, Lyads/ig;

    invoke-direct {v1, p1}, Lyads/ig;-><init>(Landroid/content/Context;)V

    const-string v2, "YadPreferenceFile"

    invoke-static {p1, v2}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object v2

    new-instance v3, Lyads/px3;

    invoke-direct {v3, v2}, Lyads/px3;-><init>(Lyads/zu3;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/tb3;->a:Lyads/vg;

    iput-object v1, p0, Lyads/tb3;->b:Lyads/ig;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/tb3;->c:Landroid/content/Context;

    sget-object p1, Lyads/ub3;->b:Lyads/ub3;

    iput-object p1, p0, Lyads/tb3;->d:Lyads/ub3;

    sget-object p1, Lyads/ox3;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v3}, Lyads/px3;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lyads/nx3;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lyads/px3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    iput-object v0, p0, Lyads/tb3;->e:Ljava/lang/String;

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method
