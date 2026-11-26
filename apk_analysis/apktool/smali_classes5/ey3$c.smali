.class public final Ley3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Liy6;

.field public final c:Ley3$a;

.field public final d:Lix3$a;


# direct methods
.method public constructor <init>(Liy6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley3$c;->b:Liy6;

    new-instance v0, Ley3$a;

    invoke-direct {v0, p1}, Ley3$a;-><init>(Liy6;)V

    iput-object v0, p0, Ley3$c;->c:Ley3$a;

    new-instance p1, Lix3$a;

    invoke-direct {p1, v0}, Lix3$a;-><init>(Ley3$a;)V

    iput-object p1, p0, Ley3$c;->d:Lix3$a;

    return-void
.end method


# virtual methods
.method public final a(Llv5$e;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Ley3$c;->b:Liy6;

    const-wide/16 v4, 0x9

    invoke-virtual {v3, v4, v5}, Liy6;->c0(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v0, Ley3$c;->b:Liy6;

    invoke-static {v3}, Ley3;->c(Liy6;)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_1a

    const/16 v5, 0x4000

    if-gt v3, v5, :cond_1a

    iget-object v5, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v5}, Liy6;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iget-object v6, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v6}, Liy6;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    iget-object v7, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v7}, Liy6;->readInt()I

    move-result v7

    const v8, 0x7fffffff

    and-int v10, v7, v8

    sget-object v7, Ley3;->a:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    invoke-static {v9, v10, v3, v5, v6}, Ley3$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_0

    iget-object v0, v0, Ley3$c;->b:Liy6;

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Liy6;->skip(J)V

    return v9

    :pswitch_0
    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    iget-object v0, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v0}, Liy6;->readInt()I

    move-result v0

    int-to-long v5, v0

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_6

    iget-object v3, v1, Llv5$e;->b:Lmv5;

    sget-object v7, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {v3, v7, v10, v5, v6}, Lmv5;->g(Lmv5$a;IJ)V

    move v3, v9

    iget-object v9, v1, Llv5$e;->e:Llv5;

    if-nez v0, :cond_2

    const-string v0, "Received 0 flow control window increment."

    if-nez v10, :cond_1

    sget-object v1, Lq03;->PROTOCOL_ERROR:Lq03;

    invoke-static {v1}, Llv5;->u(Lq03;)Lh88;

    move-result-object v4

    invoke-virtual {v4, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v9, v2, v1, v0}, Llv5;->q(ILq03;Lh88;)V

    return v3

    :cond_1
    sget-object v1, Lh88;->l:Lh88;

    invoke-virtual {v1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v11

    sget-object v12, Ldm1$a;->PROCESSED:Ldm1$a;

    sget-object v14, Lq03;->PROTOCOL_ERROR:Lq03;

    const/4 v15, 0x0

    const/4 v13, 0x0

    move v8, v3

    invoke-virtual/range {v9 .. v15}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    return v8

    :cond_2
    move v8, v3

    iget-object v3, v9, Llv5;->m:Ljava/lang/Object;

    monitor-enter v3

    iget-object v0, v1, Llv5$e;->e:Llv5;

    if-nez v10, :cond_3

    :try_start_1
    iget-object v0, v0, Llv5;->l:Li06;

    long-to-int v1, v5

    invoke-virtual {v0, v4, v1}, Li06;->b(Li06$b;I)V

    monitor-exit v3

    return v8

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    iget-object v0, v0, Llv5;->p:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v1, Llv5$e;->e:Llv5;

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v4, v4, Llv5;->l:Li06;

    iget-object v0, v0, Lkv5;->n:Lkv5$b;

    iget-object v7, v0, Lkv5$b;->x:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, v0, Lkv5$b;->K:Li06$b;

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    long-to-int v5, v5

    :try_start_4
    invoke-virtual {v4, v0, v5}, Li06;->b(Li06$b;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_4
    invoke-virtual {v4, v10}, Llv5;->k(I)Z

    move-result v0

    if-nez v0, :cond_5

    move v9, v8

    goto :goto_1

    :cond_5
    :goto_0
    move v9, v2

    :goto_1
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_15

    iget-object v0, v1, Llv5$e;->e:Llv5;

    sget-object v1, Lq03;->PROTOCOL_ERROR:Lq03;

    const-string v3, "Received window_update for unknown stream: "

    invoke-static {v10, v3}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Llv5;->u(Lq03;)Lh88;

    move-result-object v4

    invoke-virtual {v4, v3}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Llv5;->q(ILq03;Lh88;)V

    return v8

    :goto_2
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_6
    const-string v0, "windowSizeIncrement was 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_7
    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :pswitch_1
    move v8, v9

    iget-object v0, v0, Ley3$c;->b:Liy6;

    if-lt v3, v7, :cond_f

    if-nez v10, :cond_e

    invoke-virtual {v0}, Liy6;->readInt()I

    move-result v5

    invoke-virtual {v0}, Liy6;->readInt()I

    move-result v6

    sub-int/2addr v3, v7

    invoke-static {}, Lq03;->values()[Lq03;

    move-result-object v7

    array-length v9, v7

    :goto_3
    if-ge v2, v9, :cond_9

    aget-object v10, v7, v2

    iget v11, v10, Lq03;->httpCode:I

    if-ne v11, v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object v10, v4

    :goto_4
    if-eqz v10, :cond_d

    sget-object v2, Lgx0;->e:Lgx0;

    if-lez v3, :cond_a

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Liy6;->i(J)Lgx0;

    move-result-object v2

    :cond_a
    iget-object v0, v1, Llv5$e;->e:Llv5;

    iget-object v3, v1, Llv5$e;->b:Lmv5;

    sget-object v6, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {v3, v6, v5, v10, v2}, Lmv5;->c(Lmv5$a;ILq03;Lgx0;)V

    sget-object v3, Lq03;->ENHANCE_YOUR_CALM:Lq03;

    if-ne v10, v3, :cond_b

    invoke-virtual {v2}, Lgx0;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Llv5;->W:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v1, "too_many_pings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Llv5;->N:Liv5;

    invoke-virtual {v1}, Liv5;->run()V

    :cond_b
    iget v1, v10, Lq03;->httpCode:I

    int-to-long v6, v1

    invoke-static {v6, v7}, Lvs3$g;->d(J)Lh88;

    move-result-object v1

    const-string v3, "Received Goaway"

    invoke-virtual {v1, v3}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v1

    invoke-virtual {v2}, Lgx0;->f()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v2}, Lgx0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v1

    :cond_c
    sget-object v2, Llv5;->V:Ljava/util/Map;

    invoke-virtual {v0, v5, v4, v1}, Llv5;->q(ILq03;Lh88;)V

    return v8

    :cond_d
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_e
    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_f
    const-string v0, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :pswitch_2
    move v8, v9

    if-ne v3, v7, :cond_17

    if-nez v10, :cond_16

    iget-object v3, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v3}, Liy6;->readInt()I

    move-result v3

    iget-object v0, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v0}, Liy6;->readInt()I

    move-result v0

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_10

    move v2, v8

    :cond_10
    const-string v5, "Received unexpected ping ack. Expecting "

    int-to-long v6, v3

    const/16 v9, 0x20

    shl-long/2addr v6, v9

    int-to-long v9, v0

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    or-long/2addr v6, v9

    iget-object v9, v1, Llv5$e;->b:Lmv5;

    sget-object v10, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {v9, v10, v6, v7}, Lmv5;->d(Lmv5$a;J)V

    iget-object v9, v1, Llv5$e;->e:Llv5;

    iget-object v9, v9, Llv5;->m:Ljava/lang/Object;

    if-nez v2, :cond_11

    monitor-enter v9

    :try_start_8
    iget-object v1, v1, Llv5$e;->e:Llv5;

    iget-object v1, v1, Llv5;->k:Lj13;

    invoke-virtual {v1, v3, v0, v8}, Lj13;->m0(IIZ)V

    monitor-exit v9

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_11
    monitor-enter v9

    :try_start_9
    iget-object v0, v1, Llv5$e;->e:Llv5;

    iget-object v1, v0, Llv5;->z:Lty3;

    if-eqz v1, :cond_13

    iget-wide v2, v1, Lty3;->a:J

    cmp-long v10, v2, v6

    if-nez v10, :cond_12

    iput-object v4, v0, Llv5;->z:Lty3;

    goto :goto_6

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    :cond_12
    sget-object v0, Llv5;->W:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    sget-object v0, Llv5;->W:Ljava/util/logging/Logger;

    const-string v1, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_5
    move-object v1, v4

    :goto_6
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_15

    monitor-enter v1

    :try_start_a
    iget-boolean v0, v1, Lty3;->d:Z

    if-eqz v0, :cond_14

    monitor-exit v1

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_14
    iput-boolean v8, v1, Lty3;->d:Z

    iget-object v0, v1, Lty3;->b:La98;

    invoke-virtual {v0}, La98;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lty3;->f:J

    iget-object v0, v1, Lty3;->c:Ljava/util/LinkedHashMap;

    iput-object v4, v1, Lty3;->c:Ljava/util/LinkedHashMap;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lem1$a;

    new-instance v5, Lry3;

    invoke-direct {v5, v0, v2, v3}, Lry3;-><init>(Lem1$a;J)V

    :try_start_b
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    sget-object v4, Lty3;->g:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "Failed to execute PingCallback"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_8
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_15
    :goto_9
    return v8

    :goto_a
    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :cond_16
    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_17
    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :pswitch_3
    move v8, v9

    invoke-virtual {v0, v1, v3, v6, v10}, Ley3$c;->g(Llv5$e;IBI)V

    return v8

    :pswitch_4
    move v8, v9

    invoke-virtual {v0, v1, v3, v6, v10}, Ley3$c;->n(Llv5$e;IBI)V

    return v8

    :pswitch_5
    move v8, v9

    invoke-virtual {v0, v1, v3, v10}, Ley3$c;->m(Llv5$e;II)V

    return v8

    :pswitch_6
    move v8, v9

    const/4 v1, 0x5

    if-ne v3, v1, :cond_19

    if-eqz v10, :cond_18

    iget-object v0, v0, Ley3$c;->b:Liy6;

    invoke-virtual {v0}, Liy6;->readInt()I

    invoke-virtual {v0}, Liy6;->readByte()B

    return v8

    :cond_18
    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_19
    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :pswitch_7
    move v8, v9

    invoke-virtual {v0, v1, v3, v6, v10}, Ley3$c;->f(Llv5$e;IBI)V

    return v8

    :pswitch_8
    move v8, v9

    invoke-virtual {v0, v1, v3, v6, v10}, Ley3$c;->b(Llv5$e;IBI)V

    return v8

    :cond_1a
    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :catch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Llv5$e;IBI)V
    .locals 8

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    and-int/lit8 v0, p3, 0x20

    if-nez v0, :cond_5

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v0}, Liy6;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {p2, p3, v0}, Ley3;->b(IBS)I

    move-result v6

    iget-object p3, p0, Ley3$c;->b:Liy6;

    iget-object v2, p1, Llv5$e;->b:Lmv5;

    sget-object v3, Lmv5$a;->INBOUND:Lmv5$a;

    iget-object v5, p3, Liy6;->c:Lbu0;

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lmv5;->b(Lmv5$a;ILbu0;IZ)V

    iget-object p4, p1, Llv5$e;->e:Llv5;

    iget-object v2, p4, Llv5;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p4, p4, Llv5;->p:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkv5;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez p4, :cond_3

    iget-object p4, p1, Llv5$e;->e:Llv5;

    invoke-virtual {p4, v4}, Llv5;->k(I)Z

    move-result p4

    iget-object v2, p1, Llv5$e;->e:Llv5;

    if-eqz p4, :cond_2

    iget-object p4, v2, Llv5;->m:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iget-object v2, p1, Llv5$e;->e:Llv5;

    iget-object v2, v2, Llv5;->k:Lj13;

    sget-object v3, Lq03;->STREAM_CLOSED:Lq03;

    invoke-virtual {v2, v4, v3}, Lj13;->h0(ILq03;)V

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v2, v6

    invoke-virtual {p3, v2, v3}, Liy6;->skip(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    sget-object p1, Lq03;->PROTOCOL_ERROR:Lq03;

    const-string p2, "Received data for unknown stream: "

    invoke-static {v4, p2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Llv5;->u(Lq03;)Lh88;

    move-result-object p3

    invoke-virtual {p3, p2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p2

    invoke-virtual {v2, v1, p1, p2}, Llv5;->q(ILq03;Lh88;)V

    goto :goto_3

    :cond_3
    int-to-long v2, v6

    invoke-virtual {p3, v2, v3}, Liy6;->c0(J)V

    new-instance v4, Lbu0;

    invoke-direct {v4}, Lbu0;-><init>()V

    iget-object p3, p3, Liy6;->c:Lbu0;

    invoke-virtual {v4, p3, v2, v3}, Lbu0;->H(Lbu0;J)V

    iget-object p3, p4, Lkv5;->n:Lkv5$b;

    iget-object p3, p3, Lkv5$b;->J:Llj8;

    sget-object p3, Lr46;->a:La34;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Llv5$e;->e:Llv5;

    iget-object p3, p3, Llv5;->m:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object p4, p4, Lkv5;->n:Lkv5$b;

    sub-int v2, p2, v6

    invoke-virtual {p4, v2, v4, v7}, Lkv5$b;->q(ILbu0;Z)V

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    iget-object p3, p1, Llv5$e;->e:Llv5;

    iget p4, p3, Llv5;->u:I

    add-int/2addr p4, p2

    iput p4, p3, Llv5;->u:I

    int-to-float p2, p4

    iget p4, p3, Llv5;->h:I

    int-to-float p4, p4

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p4, v2

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_4

    iget-object p2, p3, Llv5;->m:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    iget-object p3, p1, Llv5$e;->e:Llv5;

    iget-object p4, p3, Llv5;->k:Lj13;

    iget p3, p3, Llv5;->u:I

    int-to-long v2, p3

    invoke-virtual {p4, v1, v2, v3}, Lj13;->T(IJ)V

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p1, Llv5$e;->e:Llv5;

    iput v1, p1, Llv5;->u:I

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_4
    :goto_3
    iget-object p0, p0, Ley3$c;->b:Liy6;

    int-to-long p1, v0

    invoke-virtual {p0, p1, p2}, Liy6;->skip(J)V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_5
    const-string p0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Ley3$c;->b:Liy6;

    invoke-virtual {p0}, Liy6;->close()V

    return-void
.end method

.method public final e(ISBI)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p0, Ley3$c;->c:Ley3$a;

    iput p1, v0, Ley3$a;->f:I

    iput p1, v0, Ley3$a;->c:I

    iput-short p2, v0, Ley3$a;->g:S

    iput-byte p3, v0, Ley3$a;->d:B

    iput p4, v0, Ley3$a;->e:I

    iget-object p0, p0, Ley3$c;->d:Lix3$a;

    iget-object p1, p0, Lix3$a;->b:Liy6;

    iget-object p2, p0, Lix3$a;->a:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Liy6;->m()Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {p1}, Liy6;->readByte()B

    move-result p3

    and-int/lit16 p4, p3, 0xff

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-eq p4, v1, :cond_b

    and-int/lit16 v2, p3, 0x80

    if-ne v2, v1, :cond_3

    const/16 p3, 0x7f

    invoke-virtual {p0, p4, p3}, Lix3$a;->e(II)I

    move-result p3

    add-int/lit8 p4, p3, -0x1

    if-ltz p4, :cond_1

    sget-object v1, Lix3;->b:[Lzu3;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt p4, v2, :cond_1

    aget-object p3, v1, p4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lix3;->b:[Lzu3;

    array-length v1, v1

    sub-int/2addr p4, v1

    iget v1, p0, Lix3$a;->f:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p4

    if-ltz v1, :cond_2

    iget-object p4, p0, Lix3$a;->e:[Lzu3;

    array-length v2, p4

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    aget-object p3, p4, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "Header index too large "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/16 v1, 0x40

    if-ne p4, v1, :cond_4

    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p3

    invoke-static {p3}, Lix3;->a(Lgx0;)V

    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lzu3;

    invoke-direct {v0, p3, p4}, Lzu3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p0, v0}, Lix3$a;->c(Lzu3;)V

    goto :goto_0

    :cond_4
    and-int/lit8 v2, p3, 0x40

    if-ne v2, v1, :cond_5

    const/16 p3, 0x3f

    invoke-virtual {p0, p4, p3}, Lix3$a;->e(II)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lix3$a;->b(I)Lgx0;

    move-result-object p3

    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lzu3;

    invoke-direct {v0, p3, p4}, Lzu3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p0, v0}, Lix3$a;->c(Lzu3;)V

    goto/16 :goto_0

    :cond_5
    and-int/lit8 p3, p3, 0x20

    const/16 v1, 0x20

    if-ne p3, v1, :cond_8

    const/16 p3, 0x1f

    invoke-virtual {p0, p4, p3}, Lix3$a;->e(II)I

    move-result p3

    iput p3, p0, Lix3$a;->d:I

    if-ltz p3, :cond_7

    iget p4, p0, Lix3$a;->c:I

    if-gt p3, p4, :cond_7

    iget p4, p0, Lix3$a;->h:I

    if-ge p3, p4, :cond_0

    if-nez p3, :cond_6

    iget-object p3, p0, Lix3$a;->e:[Lzu3;

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lix3$a;->e:[Lzu3;

    array-length p3, p3

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lix3$a;->f:I

    const/4 p3, 0x0

    iput p3, p0, Lix3$a;->g:I

    iput p3, p0, Lix3$a;->h:I

    goto/16 :goto_0

    :cond_6
    sub-int/2addr p4, p3

    invoke-virtual {p0, p4}, Lix3$a;->a(I)I

    goto/16 :goto_0

    :cond_7
    const-string p1, "Invalid dynamic table size update "

    iget p0, p0, Lix3$a;->d:I

    invoke-static {p0, p1}, Ljn;->d(ILjava/lang/String;)V

    return-object v0

    :cond_8
    const/16 p3, 0x10

    if-eq p4, p3, :cond_a

    if-nez p4, :cond_9

    goto :goto_1

    :cond_9
    const/16 p3, 0xf

    invoke-virtual {p0, p4, p3}, Lix3$a;->e(II)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lix3$a;->b(I)Lgx0;

    move-result-object p3

    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lzu3;

    invoke-direct {v0, p3, p4}, Lzu3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p3

    invoke-static {p3}, Lix3;->a(Lgx0;)V

    invoke-virtual {p0}, Lix3$a;->d()Lgx0;

    move-result-object p4

    new-instance v0, Lzu3;

    invoke-direct {v0, p3, p4}, Lzu3;-><init>(Lgx0;Lgx0;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string p0, "index == 0"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v0

    :cond_c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public final f(Llv5$e;IBI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_c

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_1

    iget-object v4, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v4}, Liy6;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_2

    iget-object v5, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v5}, Liy6;->readInt()I

    invoke-virtual {v5}, Liy6;->readByte()B

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v4}, Ley3;->b(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v4, p3, p4}, Ley3$c;->e(ISBI)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p2, p1, Llv5$e;->b:Lmv5;

    sget-object p3, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {p2}, Lmv5;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p2, p2, Lmv5;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " HEADERS: streamId="

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " headers="

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " endStream="

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p1, Llv5$e;->e:Llv5;

    iget p2, p2, Llv5;->O:I

    const p3, 0x7fffffff

    if-eq p2, p3, :cond_6

    const-wide/16 p2, 0x0

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzu3;

    iget-object v6, v5, Lzu3;->a:Lgx0;

    invoke-virtual {v6}, Lgx0;->f()I

    move-result v6

    add-int/lit8 v6, v6, 0x20

    iget-object v5, v5, Lzu3;->b:Lgx0;

    invoke-virtual {v5}, Lgx0;->f()I

    move-result v5

    add-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-wide/32 v4, 0x7fffffff

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    iget-object p3, p1, Llv5$e;->e:Llv5;

    iget p3, p3, Llv5;->O:I

    if-le p2, p3, :cond_6

    sget-object v0, Lh88;->j:Lh88;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz v2, :cond_5

    const-string v4, "trailer"

    goto :goto_3

    :cond_5
    const-string v4, "header"

    :goto_3
    const-string v5, "Response "

    const-string v6, " metadata larger than "

    const-string v7, ": "

    invoke-static {p3, v5, v4, v6, v7}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    :cond_6
    iget-object p2, p1, Llv5$e;->e:Llv5;

    iget-object p2, p2, Llv5;->m:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p1, Llv5$e;->e:Llv5;

    iget-object p3, p3, Llv5;->p:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkv5;

    if-nez p3, :cond_7

    iget-object p0, p1, Llv5$e;->e:Llv5;

    invoke-virtual {p0, p4}, Llv5;->k(I)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, p1, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->k:Lj13;

    sget-object p3, Lq03;->STREAM_CLOSED:Lq03;

    invoke-virtual {p0, p4, p3}, Lj13;->h0(ILq03;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p3, Lkv5;->n:Lkv5$b;

    iget-object v0, v0, Lkv5$b;->J:Llj8;

    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Lkv5;->n:Lkv5$b;

    invoke-virtual {p3, p0, v2}, Lkv5$b;->r(Ljava/util/ArrayList;Z)V

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    iget-object p0, p1, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->k:Lj13;

    sget-object v2, Lq03;->CANCEL:Lq03;

    invoke-virtual {p0, p4, v2}, Lj13;->h0(ILq03;)V

    :cond_9
    iget-object p0, p3, Lkv5;->n:Lkv5$b;

    new-instance p3, Lla5;

    invoke-direct {p3}, Lla5;-><init>()V

    invoke-virtual {p0, v0, v1, p3}, Lt$b;->j(Lh88;ZLla5;)V

    :goto_4
    move v3, v1

    :cond_a
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_b

    iget-object p0, p1, Llv5$e;->e:Llv5;

    sget-object p1, Lq03;->PROTOCOL_ERROR:Lq03;

    const-string p2, "Received header for unknown stream: "

    invoke-static {p4, p2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Llv5;->u(Lq03;)Lh88;

    move-result-object p3

    invoke-virtual {p3, p2}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Llv5;->q(ILq03;Lh88;)V

    :cond_b
    return-void

    :goto_5
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final g(Llv5$e;IBI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v0}, Liy6;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v1}, Liy6;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Ley3;->b(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v0, p3, p4}, Ley3$c;->e(ISBI)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p2, p1, Llv5$e;->b:Lmv5;

    sget-object p3, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {p2}, Lmv5;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lmv5;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " PUSH_PROMISE: streamId="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " promisedStreamId="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " headers="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p1, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Llv5$e;->e:Llv5;

    iget-object p1, p1, Llv5;->k:Lj13;

    sget-object p2, Lq03;->PROTOCOL_ERROR:Lq03;

    invoke-virtual {p1, p4, p2}, Lj13;->h0(ILq03;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(Llv5$e;II)V
    .locals 12

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    const/4 p2, 0x0

    if-eqz p3, :cond_7

    iget-object p0, p0, Ley3$c;->b:Liy6;

    invoke-virtual {p0}, Liy6;->readInt()I

    move-result p0

    invoke-static {}, Lq03;->values()[Lq03;

    move-result-object v0

    array-length v2, v0

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lq03;->httpCode:I

    if-ne v5, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_6

    iget-object p0, p1, Llv5$e;->b:Lmv5;

    sget-object v0, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {p0, v0, p3, v4}, Lmv5;->e(Lmv5$a;ILq03;)V

    invoke-static {v4}, Llv5;->u(Lq03;)Lh88;

    move-result-object p0

    const-string v0, "Rst Stream"

    invoke-virtual {p0, v0}, Lh88;->b(Ljava/lang/String;)Lh88;

    move-result-object v7

    iget-object p0, v7, Lh88;->a:Lh88$a;

    sget-object v0, Lh88$a;->CANCELLED:Lh88$a;

    if-eq p0, v0, :cond_3

    sget-object v0, Lh88$a;->DEADLINE_EXCEEDED:Lh88$a;

    if-ne p0, v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move v9, p2

    goto :goto_4

    :cond_3
    :goto_3
    const/4 p2, 0x1

    goto :goto_2

    :goto_4
    iget-object p0, p1, Llv5$e;->e:Llv5;

    iget-object p2, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p1, Llv5$e;->e:Llv5;

    iget-object p0, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkv5;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lkv5;->n:Lkv5$b;

    iget-object p0, p0, Lkv5$b;->J:Llj8;

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Llv5$e;->e:Llv5;

    sget-object p0, Lq03;->REFUSED_STREAM:Lq03;

    if-ne v4, p0, :cond_4

    sget-object p0, Ldm1$a;->REFUSED:Ldm1$a;

    :goto_5
    move-object v8, p0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_4
    sget-object p0, Ldm1$a;->PROCESSED:Ldm1$a;

    goto :goto_5

    :goto_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p3

    invoke-virtual/range {v5 .. v11}, Llv5;->g(ILh88;Ldm1$a;ZLq03;Lla5;)V

    :cond_5
    monitor-exit p2

    return-void

    :goto_7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    const-string p0, "TYPE_RST_STREAM streamId == 0"

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_8
    const-string p0, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public final n(Llv5$e;IBI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_15

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string p0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_14

    new-instance p3, Lpr7;

    invoke-direct {p3}, Lpr7;-><init>()V

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x7

    if-ge v2, p2, :cond_6

    iget-object v5, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v5}, Liy6;->readShort()S

    move-result v5

    iget-object v6, p0, Ley3$c;->b:Liy6;

    invoke-virtual {v6}, Liy6;->readInt()I

    move-result v6

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 v3, 0x4000

    if-lt v6, v3, :cond_2

    const v3, 0xffffff

    if-gt v6, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    if-ltz v6, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    const-string p0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    if-eqz v6, :cond_5

    if-ne v6, p4, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_1
    :pswitch_3
    move v3, v5

    :goto_2
    :pswitch_4
    invoke-virtual {p3, v3, v6}, Lpr7;->a(II)V

    :goto_3
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_6
    iget-object p2, p1, Llv5$e;->b:Lmv5;

    sget-object v2, Lmv5$a;->INBOUND:Lmv5$a;

    invoke-virtual {p2, v2, p3}, Lmv5;->f(Lmv5$a;Lpr7;)V

    iget-object p2, p1, Llv5$e;->e:Llv5;

    iget-object v2, p2, Llv5;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget p2, p3, Lpr7;->a:I

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_7

    move v5, p4

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    if-eqz v5, :cond_8

    iget-object v5, p3, Lpr7;->b:[I

    aget v3, v5, v3

    iget-object v5, p1, Llv5$e;->e:Llv5;

    iput v3, v5, Llv5;->G:I

    goto :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_8
    :goto_5
    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_9

    move p2, p4

    goto :goto_6

    :cond_9
    move p2, v1

    :goto_6
    if-eqz p2, :cond_c

    iget-object p2, p3, Lpr7;->b:[I

    aget p2, p2, v4

    iget-object v3, p1, Llv5$e;->e:Llv5;

    iget-object v3, v3, Llv5;->l:Li06;

    if-ltz p2, :cond_b

    iget v4, v3, Li06;->c:I

    sub-int v4, p2, v4

    iput p2, v3, Li06;->c:I

    iget-object p2, v3, Li06;->a:Llv5;

    invoke-virtual {p2}, Llv5;->h()[Li06$b;

    move-result-object p2

    array-length v3, p2

    move v5, v1

    :goto_7
    if-ge v5, v3, :cond_a

    aget-object v6, p2, v5

    invoke-virtual {v6, v4}, Li06$b;->a(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    if-lez v4, :cond_c

    move p2, p4

    goto :goto_8

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Invalid initial window size: "

    invoke-static {p2, v3}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lfg;->c(Ljava/lang/String;)V

    :cond_c
    move p2, v1

    :goto_8
    iget-boolean v3, p1, Llv5$e;->d:Z

    if-eqz v3, :cond_e

    iget-object v3, p1, Llv5$e;->e:Llv5;

    iget-object v4, v3, Llv5;->j:Lp94$f;

    iget-object v5, v3, Llv5;->w:Lio/grpc/a;

    iget-object v4, v4, Lp94$f;->c:Lp94;

    iget-object v4, v4, Lp94;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgm1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "Filter %s returned null"

    invoke-static {v5, v7, v6}, Lo8;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    iput-object v5, v3, Llv5;->w:Lio/grpc/a;

    iget-object v3, p1, Llv5$e;->e:Llv5;

    iget-object v3, v3, Llv5;->j:Lp94$f;

    iget-object v4, v3, Lp94$f;->c:Lp94;

    iget-object v5, v4, Lp94;->j:Ln91;

    sget-object v6, Ln91$a;->INFO:Ln91$a;

    const-string v7, "READY"

    invoke-virtual {v5, v6, v7}, Ln91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object v4, v4, Lp94;->m:Lch8;

    new-instance v5, Lw94;

    invoke-direct {v5, v3}, Lw94;-><init>(Lp94$f;)V

    invoke-virtual {v4, v5}, Lch8;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p1, Llv5$e;->d:Z

    :cond_e
    iget-object v3, p1, Llv5$e;->e:Llv5;

    iget-object v3, v3, Llv5;->k:Lj13;

    invoke-virtual {v3, p3}, Lj13;->p0(Lpr7;)V

    if-eqz p2, :cond_f

    iget-object p2, p1, Llv5$e;->e:Llv5;

    iget-object p2, p2, Llv5;->l:Li06;

    invoke-virtual {p2}, Li06;->c()V

    :cond_f
    iget-object p1, p1, Llv5$e;->e:Llv5;

    invoke-virtual {p1}, Llv5;->r()Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p3, Lpr7;->a:I

    and-int/lit8 p2, p1, 0x2

    const/4 v2, -0x1

    if-eqz p2, :cond_10

    iget-object p2, p3, Lpr7;->b:[I

    aget p2, p2, p4

    goto :goto_a

    :cond_10
    move p2, v2

    :goto_a
    if-ltz p2, :cond_13

    iget-object p0, p0, Ley3$c;->d:Lix3$a;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_11

    iget-object p1, p3, Lpr7;->b:[I

    aget v2, p1, p4

    :cond_11
    iput v2, p0, Lix3$a;->c:I

    iput v2, p0, Lix3$a;->d:I

    iget p1, p0, Lix3$a;->h:I

    if-ge v2, p1, :cond_13

    if-nez v2, :cond_12

    iget-object p1, p0, Lix3$a;->e:[Lzu3;

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lix3$a;->e:[Lzu3;

    array-length p1, p1

    sub-int/2addr p1, p4

    iput p1, p0, Lix3$a;->f:I

    iput v1, p0, Lix3$a;->g:I

    iput v1, p0, Lix3$a;->h:I

    return-void

    :cond_12
    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lix3$a;->a(I)I

    :cond_13
    :goto_b
    return-void

    :goto_c
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_14
    const-string p0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_15
    const-string p0, "TYPE_SETTINGS streamId != 0"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ley3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
