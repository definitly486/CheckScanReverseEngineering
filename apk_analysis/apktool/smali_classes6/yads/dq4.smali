.class public final Lyads/dq4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/rp4;

.field public final b:Lyads/sp4;

.field public final c:Lyads/eq4;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/lo6;)V
    .locals 2

    new-instance v0, Lyads/rp4;

    invoke-direct {v0, p1, p2}, Lyads/rp4;-><init>(Landroid/content/Context;Lyads/lo6;)V

    sget-object p2, Lyads/sp4;->d:Lyads/sp4;

    if-nez p2, :cond_1

    sget-object p2, Lyads/sp4;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v1, Lyads/sp4;->d:Lyads/sp4;

    if-nez v1, :cond_0

    new-instance v1, Lyads/sp4;

    invoke-direct {v1}, Lyads/sp4;-><init>()V

    sput-object v1, Lyads/sp4;->d:Lyads/sp4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    move-object p2, v1

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/eq4;

    invoke-direct {v1}, Lyads/eq4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/dq4;->a:Lyads/rp4;

    iput-object p2, p0, Lyads/dq4;->b:Lyads/sp4;

    iput-object v1, p0, Lyads/dq4;->c:Lyads/eq4;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/dq4;->d:Landroid/content/Context;

    return-void
.end method
