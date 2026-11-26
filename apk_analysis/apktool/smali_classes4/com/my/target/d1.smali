.class public final Lcom/my/target/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/d1$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/net/HttpURLConnection;I)Lcom/my/target/d1$a;
    .locals 6

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-instance p0, Lcom/my/target/d1$a;

    const-string p1, "empty redirection"

    invoke-direct {p0, v0, p2, v2, p1}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt p1, v3, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    invoke-static {p0}, Ly14;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/my/target/d1$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "im="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ar="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rt="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v0, p2, v2, p0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_5
    :goto_1
    new-instance p1, Lcom/my/target/d1$a;

    invoke-direct {p1, v4, p2, p0, v2}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    new-instance p1, Lcom/my/target/d1$a;

    invoke-direct {p1, v1, p2, p0, v2}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static b(Ljava/lang/String;Lln9;)Lcom/my/target/d1$a;
    .locals 10

    new-instance v0, Lcom/my/target/d1$a;

    const/4 v1, 0x0

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    const/4 v4, 0x1

    if-eqz p0, :cond_9

    const/16 v5, 0xa

    if-gt v2, v5, :cond_9

    const-string v0, "tryResolveUrl: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x5dfa5fa

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v8, 0x2710

    :try_start_1
    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v8, "GET"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v8, "User-Agent"

    const-string v9, "http.agent"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v8, "connection"

    const-string v9, "close"

    invoke-virtual {v0, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ly14;->m(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1, v0}, Lln9;->c(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v3

    goto :goto_3

    :catchall_0
    move-exception v8

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2

    :catchall_1
    move-exception v8

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v8

    move-object v0, v3

    goto :goto_2

    :goto_1
    new-instance v9, Lcom/my/target/d1$a;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v6, v7, v3, v8}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    new-instance v9, Lcom/my/target/d1$a;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v5, v7, v3, v8}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez v9, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_0
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    const/16 v9, 0xcc

    if-ne v8, v9, :cond_1

    goto :goto_6

    :cond_1
    const/16 v9, 0x12e

    if-eq v8, v9, :cond_3

    const/16 v9, 0x12d

    if-eq v8, v9, :cond_3

    const/16 v9, 0x12f

    if-ne v8, v9, :cond_2

    goto :goto_5

    :cond_2
    :try_start_4
    new-instance p0, Lcom/my/target/d1$a;

    const-string v9, "Unsupported response code"

    invoke-direct {p0, v6, v8, v3, v9}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v9, p0

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_8

    :cond_3
    :goto_5
    invoke-static {p0, v0, v8}, Lcom/my/target/d1;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;I)Lcom/my/target/d1$a;

    move-result-object p0

    goto :goto_4

    :cond_4
    :goto_6
    invoke-virtual {p1, v0}, Lln9;->a(Ljava/net/HttpURLConnection;)V

    new-instance v9, Lcom/my/target/d1$a;

    invoke-direct {v9, v1, v8, p0, v3}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :goto_7
    new-instance v0, Lcom/my/target/d1$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v6, v7, v3, p0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :goto_8
    new-instance v0, Lcom/my/target/d1$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v5, v7, v3, p0}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_5
    :goto_9
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-object v0, v9

    :goto_a
    iget-object p0, v0, Lcom/my/target/d1$a;->b:Ljava/lang/String;

    iget v5, v0, Lcom/my/target/d1$a;->a:I

    if-ne v5, v4, :cond_7

    invoke-static {p0}, Ly14;->x(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move-object p0, v3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/my/target/d1$a;->a()Z

    move-result p0

    if-eqz p0, :cond_a

    if-le v2, v4, :cond_a

    new-instance p0, Lcom/my/target/d1$a;

    iget-object p1, v0, Lcom/my/target/d1$a;->b:Ljava/lang/String;

    iget v0, v0, Lcom/my/target/d1$a;->c:I

    invoke-direct {p0, v4, v0, p1, v3}, Lcom/my/target/d1$a;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    return-object v0
.end method
