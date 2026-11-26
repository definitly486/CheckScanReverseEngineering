.class public final synthetic Lqz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lqz1;->b:I

    iput-object p1, p0, Lqz1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lqz1;->b:I

    iget-object v0, v0, Lqz1;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lnl3;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-static {v0, v1}, Landroidx/compose/material3/SearchBarDefaults;->b(Lnl3;Landroidx/compose/ui/focus/FocusState;)Lj59;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Lta6;

    move-object/from16 v1, p1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lnb6;->b()Lwd6;

    move-result-object v0

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-object v0, v0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v2, Lez2;

    invoke-direct {v2}, Lez2;-><init>()V

    iget-object v2, v2, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    sget-object v2, Lgc6;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "body"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-nez v4, :cond_1

    goto/16 :goto_f

    :cond_1
    const-string v2, "level"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    const-string v2, "info"

    :cond_3
    sget-object v3, Lhc6;->Companion:Lhc6$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lhc6;->a()Lg03;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lhc6;

    invoke-virtual {v6}, Lhc6;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_5
    move-object v5, v1

    :goto_2
    check-cast v5, Lhc6;

    if-nez v5, :cond_6

    sget-object v5, Lhc6;->INFO:Lhc6;

    :cond_6
    const-string v2, "attributes"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/util/Map;

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_8

    sget-object v2, Lmx2;->b:Lmx2;

    :cond_8
    move-object v6, v2

    const-string v2, "timeUnixNano"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_9

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v7, 0xf4240

    mul-long/2addr v7, v2

    :cond_a
    sget-object v2, Lgc6;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-lez v3, :cond_b

    move-wide v11, v7

    goto :goto_5

    :cond_b
    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    :goto_5
    invoke-virtual {v2, v9, v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object v15, v2

    const-string v2, "observedTimeUnixNano"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_d

    check-cast v2, Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v2, v1

    :goto_6
    if-nez v2, :cond_e

    move-object/from16 v16, v15

    goto :goto_7

    :cond_e
    move-object/from16 v16, v2

    :goto_7
    const-string v2, "featureFlagKeys"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_f

    check-cast v2, Ljava/util/List;

    goto :goto_8

    :cond_f
    move-object v2, v1

    :goto_8
    if-nez v2, :cond_10

    sget-object v2, Lkx2;->b:Lkx2;

    :cond_10
    move-object v13, v2

    const-string v2, "traceFlags"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_11

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    goto :goto_9

    :cond_11
    move-object v9, v1

    :goto_9
    new-instance v3, Lgc6;

    const-string v2, "traceId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_12

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    goto :goto_a

    :cond_12
    move-object v7, v1

    :goto_a
    const-string v2, "spanId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_13

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_b

    :cond_13
    move-object v8, v1

    :goto_b
    const-string v2, "distinctId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_14

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    goto :goto_c

    :cond_14
    move-object v10, v1

    :goto_c
    const-string v2, "sessionId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v11, v2, Ljava/lang/String;

    if-eqz v11, :cond_15

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    goto :goto_d

    :cond_15
    move-object v11, v1

    :goto_d
    const-string v2, "screenName"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v12, v2, Ljava/lang/String;

    if-eqz v12, :cond_16

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    goto :goto_e

    :cond_16
    move-object v12, v1

    :goto_e
    const-string v2, "appState"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_17
    move-object v14, v1

    invoke-direct/range {v3 .. v16}, Lgc6;-><init>(Ljava/lang/String;Lhc6;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    :cond_18
    :goto_f
    return-object v1

    :pswitch_1
    check-cast v0, Ldm3;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/ContextualFlowColumnOverflow$Companion;->a(Ldm3;Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)Lbm3;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
