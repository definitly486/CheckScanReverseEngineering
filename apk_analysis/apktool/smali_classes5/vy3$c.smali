.class public final Lvy3$c;
.super Lat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic n:Lvy3;


# direct methods
.method public constructor <init>(Lvy3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lvy3$c;->n:Lvy3;

    invoke-direct {p0}, Lat;-><init>()V

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 5

    iget-object v0, p0, Lvy3$c;->n:Lvy3;

    sget-object v1, Lp03;->CANCEL:Lp03;

    invoke-virtual {v0, v1}, Lvy3;->e(Lp03;)V

    iget-object p0, p0, Lvy3$c;->n:Lvy3;

    iget-object p0, p0, Lvy3;->b:Lhy3;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lhy3;->o:J

    iget-wide v2, p0, Lhy3;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, p0, Lhy3;->n:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lhy3;->p:J

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lhy3;->i:Ldo8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lhy3;->d:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lpy3;

    invoke-direct {v2, v1, p0}, Lpy3;-><init>(Ljava/lang/String;Lhy3;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ldo8;->c(Ljl8;J)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lat;->i()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
