.class public final synthetic Lpda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldha;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lpp9;

.field public final synthetic f:Le5a;


# direct methods
.method public synthetic constructor <init>(Ldha;Ljava/lang/String;ILpp9;Le5a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpda;->b:Ldha;

    iput-object p2, p0, Lpda;->c:Ljava/lang/String;

    iput p3, p0, Lpda;->d:I

    iput-object p4, p0, Lpda;->e:Lpp9;

    iput-object p5, p0, Lpda;->f:Le5a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Lpda;->b:Ldha;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ldha;->b()V

    :cond_0
    sget-object v0, Lcom/my/target/e2;->f:Lcom/my/target/d1;

    sget-object v3, Lcom/my/target/e2;->h:Lln9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/my/target/d1$a;

    const/4 v4, 0x0

    const/16 v5, -0xa

    iget-object v6, v1, Lpda;->c:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move v8, v4

    move-object v5, v6

    :goto_0
    const-string v10, ", error="

    const/4 v11, 0x2

    if-eqz v5, :cond_d

    iget v12, v1, Lpda;->d:I

    if-gt v8, v12, :cond_d

    const-string v0, "tryResolveUrl: "

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x5dfa5fa

    const/4 v12, 0x4

    const/4 v13, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    move-object v14, v0

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x2710

    :try_start_1
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v15, "http.agent"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "connection"

    const-string v15, "close"

    invoke-virtual {v14, v0, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Ly14;->m(Ljava/net/HttpURLConnection;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v14}, Lln9;->c(Ljava/net/HttpURLConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v14}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v14, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v14, v7

    goto :goto_3

    :goto_2
    new-instance v15, Lcom/my/target/d1$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v11, v13, v7, v0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    new-instance v15, Lcom/my/target/d1$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v12, v13, v7, v0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-nez v15, :cond_8

    :try_start_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_2
    const/16 v15, 0xc8

    if-eq v0, v15, :cond_6

    const/16 v15, 0xcc

    if-eq v0, v15, :cond_6

    const/16 v15, 0x194

    if-eq v0, v15, :cond_6

    const/16 v15, 0x193

    if-ne v0, v15, :cond_3

    goto :goto_6

    :cond_3
    const/16 v15, 0x12e

    if-eq v0, v15, :cond_5

    const/16 v15, 0x12d

    if-eq v0, v15, :cond_5

    const/16 v15, 0x12f

    if-ne v0, v15, :cond_4

    goto :goto_5

    :cond_4
    :try_start_4
    new-instance v15, Lcom/my/target/d1$a;

    const-string v9, "Unsupported response code"

    invoke-direct {v15, v11, v0, v7, v9}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_5
    :goto_5
    invoke-static {v5, v14, v0}, Lcom/my/target/d1;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;I)Lcom/my/target/d1$a;

    move-result-object v0

    move-object v15, v0

    goto :goto_9

    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v14}, Lln9;->a(Ljava/net/HttpURLConnection;)V

    :cond_7
    new-instance v9, Lcom/my/target/d1$a;

    invoke-direct {v9, v4, v0, v5, v7}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v15, v9

    goto :goto_9

    :goto_7
    new-instance v9, Lcom/my/target/d1$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v11, v13, v7, v0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :goto_8
    new-instance v9, Lcom/my/target/d1$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v12, v13, v7, v0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_8
    :goto_9
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object v9, v15

    :goto_a
    iget-object v0, v9, Lcom/my/target/d1$a;->b:Ljava/lang/String;

    iget-object v11, v9, Lcom/my/target/d1$a;->d:Ljava/lang/String;

    iget v12, v9, Lcom/my/target/d1$a;->c:I

    invoke-virtual {v9}, Lcom/my/target/d1$a;->a()Z

    move-result v13

    iget v14, v9, Lcom/my/target/d1$a;->a:I

    if-nez v13, :cond_a

    const-string v0, "tryResolveUrl error: result="

    const-string v9, ", code="

    invoke-static {v14, v12, v0, v9, v10}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/my/target/d1$a;

    invoke-direct {v0, v4, v12, v5, v11}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_d

    :cond_a
    const/4 v5, 0x1

    if-ne v14, v5, :cond_c

    invoke-static {v0}, Ly14;->x(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_c

    :cond_b
    move-object v5, v0

    :goto_b
    move-object v0, v9

    goto :goto_d

    :cond_c
    :goto_c
    move-object v5, v7

    goto :goto_b

    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/my/target/d1$a;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v5, 0x1

    if-le v8, v5, :cond_e

    new-instance v3, Lcom/my/target/d1$a;

    iget-object v4, v0, Lcom/my/target/d1$a;->b:Ljava/lang/String;

    iget v0, v0, Lcom/my/target/d1$a;->c:I

    invoke-direct {v3, v5, v0, v4, v7}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :cond_e
    invoke-virtual {v0}, Lcom/my/target/d1$a;->a()Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "responseCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/my/target/d1$a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/my/target/d1$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b5c

    iget-object v5, v1, Lpda;->e:Lpp9;

    invoke-virtual {v5, v11, v4, v3}, Lpp9;->d(IILjava/lang/String;)V

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ldha;->a()V

    :cond_f
    iget-object v1, v1, Lpda;->f:Le5a;

    if-nez v1, :cond_10

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ldha;->a()V

    goto :goto_e

    :cond_10
    invoke-virtual {v0}, Lcom/my/target/d1$a;->a()Z

    move-result v3

    if-nez v3, :cond_11

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ldha;->a()V

    :cond_11
    new-instance v2, Lek8;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v1, v0}, Lek8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lw4a;->c(Ljava/lang/Runnable;)V

    :cond_12
    :goto_e
    return-void
.end method
