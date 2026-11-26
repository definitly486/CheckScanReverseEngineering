.class public final synthetic Lec6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lfc6;

.field public final synthetic d:Lbc6;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lfc6;Lbc6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec6;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lec6;->c:Lfc6;

    iput-object p3, p0, Lec6;->d:Lbc6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lec6;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lec6;->c:Lfc6;

    iget-object p0, p0, Lec6;->d:Lbc6;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v3, v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, v1, Lfc6;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lfc6;->e:Lbc6;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lbc6;->c()Z

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v5, "PostHog"

    invoke-static {v2, v5, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "StrictMode"

    invoke-static {v2, v5, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v5, Lev4;

    invoke-direct {v5}, Lev4;-><init>()V

    invoke-virtual {v5, v2}, Lev4;->a(Ljava/lang/String;)Lyu4;

    move-result-object v5

    if-nez v5, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "level"

    iget-object v8, v5, Lyu4;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v5, Lyu4;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, ""

    if-eqz v7, :cond_6

    :try_start_4
    invoke-static {v7}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_6
    move-object v7, v8

    :cond_7
    iget-object v9, v5, Lyu4;->e:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_9

    invoke-static {v9}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    move-object v8, v9

    :cond_9
    :goto_1
    const-string v9, "payload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v5, Lyu4;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/GregorianCalendar;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_2

    :cond_a
    iget-object v5, v1, Lfc6;->b:Lta6;

    iget-object v5, v5, Lnb6;->I:Lqb6;

    invoke-interface {v5}, Lqb6;->currentTimeMillis()J

    move-result-wide v7

    :goto_2
    new-instance v5, Lcom/posthog/internal/replay/RRPluginEvent;

    const-string v9, "rrweb/console@1"

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/posthog/internal/replay/RRPluginEvent;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Lbc6;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    :try_start_5
    iget-boolean v5, v1, Lfc6;->c:Z

    if-nez v5, :cond_0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_c
    :goto_4
    sget-object p0, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_7

    :catchall_2
    move-object v2, v0

    goto :goto_6

    :goto_5
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-static {v3, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_4
    :goto_6
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_d
    :goto_7
    return-void
.end method
