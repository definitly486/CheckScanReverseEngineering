.class public final Lcom/monetization/ads/exo/source/dash/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/monetization/ads/exo/source/dash/i;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/exo/source/dash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/a;->a:Lcom/monetization/ads/exo/source/dash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/a;->a:Lcom/monetization/ads/exo/source/dash/i;

    sget-object v0, Lyads/jo5;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyads/jo5;->c:Z

    if-eqz v1, :cond_0

    sget-wide v1, Lyads/jo5;->d:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v1, p0, Lcom/monetization/ads/exo/source/dash/i;->L:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
