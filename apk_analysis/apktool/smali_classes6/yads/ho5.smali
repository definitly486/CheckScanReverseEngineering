.class public final Lyads/ho5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ku3;


# instance fields
.field public final b:Lcom/monetization/ads/exo/source/dash/a;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/exo/source/dash/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ho5;->b:Lcom/monetization/ads/exo/source/dash/a;

    return-void
.end method


# virtual methods
.method public final a(Lyads/nu3;JJLjava/io/IOException;I)Lyads/lu3;
    .locals 0

    .line 34
    iget-object p0, p0, Lyads/ho5;->b:Lcom/monetization/ads/exo/source/dash/a;

    .line 35
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/a;->a:Lcom/monetization/ads/exo/source/dash/i;

    .line 36
    invoke-virtual {p0, p6}, Lcom/monetization/ads/exo/source/dash/i;->a(Ljava/io/IOException;)V

    .line 37
    sget-object p0, Lyads/ru3;->d:Lyads/lu3;

    return-object p0
.end method

.method public final a(Lyads/nu3;JJ)V
    .locals 0

    sget-object p1, Lyads/jo5;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-boolean p2, Lyads/jo5;->c:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lyads/ho5;->b:Lcom/monetization/ads/exo/source/dash/a;

    if-nez p2, :cond_0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/util/ConcurrentModificationException;

    invoke-direct {p2}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/a;->a:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0, p1}, Lcom/monetization/ads/exo/source/dash/i;->a(Ljava/io/IOException;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/a;->a()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lyads/nu3;JJZ)V
    .locals 0

    .line 33
    return-void
.end method
