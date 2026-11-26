.class public final Lwa6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa6$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/time/Clock;

.field public final b:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public volatile d:Lwa6$a;

.field public volatile e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    nop

    instance-of v0, p1, Lk57$a;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/time/Clock;

    sget-object v0, Lva6;->c:Lva6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa6;->a:Ljava/time/Clock;

    iput-object v0, p0, Lwa6;->b:Lll3;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lwa6;->c:J

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lwa6;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p0, p1

    add-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lwa6;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final currentTimeMillis()J
    .locals 10

    iget-object v0, p0, Lwa6;->a:Ljava/time/Clock;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v1, p0, Lwa6;->b:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lwa6;->d:Lwa6$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-wide v6, v3, Lwa6$a;->b:J

    sub-long v6, v1, v6

    iget-wide v8, p0, Lwa6;->c:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    iget-object v6, p0, Lwa6;->e:Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    iget-wide v8, p0, Lwa6;->c:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lwa6;->e:Ljava/lang/Long;

    :try_start_0
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    new-instance v3, Lk57$a;

    invoke-direct {v3, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_3
    nop

    instance-of v3, v0, Lk57$a;

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :cond_5
    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    new-instance v1, Lwa6$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lwa6;->b:Lll3;

    invoke-interface {v4}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lwa6$a;-><init>(JJ)V

    iput-object v1, p0, Lwa6;->d:Lwa6$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_6
    iget-object p0, p0, Lwa6;->d:Lwa6$a;

    if-eqz p0, :cond_7

    iget-wide v3, p0, Lwa6$a;->a:J

    iget-wide v5, p0, Lwa6$a;->b:J

    sub-long/2addr v1, v5

    add-long/2addr v1, v3

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_4
    return-wide v1
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
