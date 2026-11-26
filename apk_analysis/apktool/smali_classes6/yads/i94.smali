.class public final Lyads/i94;
.super Lyads/dr;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t45;

.field public final b:Lyads/fn4;

.field public final c:Lyads/ta3;

.field public final d:Lyads/xa3;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3

    new-instance v0, Lyads/t45;

    invoke-direct {v0}, Lyads/t45;-><init>()V

    new-instance v1, Lyads/fn4;

    invoke-direct {v1}, Lyads/fn4;-><init>()V

    new-instance v2, Lyads/ta3;

    invoke-direct {v2}, Lyads/ta3;-><init>()V

    invoke-direct {p0}, Lyads/dr;-><init>()V

    iput-object v0, p0, Lyads/i94;->a:Lyads/t45;

    iput-object v1, p0, Lyads/i94;->b:Lyads/fn4;

    iput-object v2, p0, Lyads/i94;->c:Lyads/ta3;

    new-instance v0, Lyads/xa3;

    invoke-direct {v0, p1}, Lyads/xa3;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v0, p0, Lyads/i94;->d:Lyads/xa3;

    return-void
.end method

.method public static final a(Lyads/i94;Ljava/util/Map;Lyads/r75;)Lyads/sa3;
    .locals 4

    invoke-virtual {p0, p2, p1}, Lyads/i94;->b(Lyads/r75;Ljava/util/Map;)Lyads/sa3;

    move-result-object p1

    iget-object p0, p0, Lyads/i94;->c:Lyads/ta3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    iget-object v0, p1, Lyads/sa3;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lyads/sa3;->e:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lyads/sa3;->e:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v0}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    new-array v1, p0, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    new-array v1, p0, [B

    :goto_1
    new-instance p0, Lyads/sa3;

    iget v0, p1, Lyads/sa3;->a:I

    iget-object p1, p1, Lyads/sa3;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lyads/sa3;-><init>(ILjava/util/List;[B)V

    new-instance v2, Lyads/en4;

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v0, v1, v3, p1}, Lyads/en4;-><init>(I[BZLjava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p2, v2}, Lyads/x75;->a(JLyads/r75;Lyads/en4;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/r75;Ljava/util/Map;)Lyads/sa3;
    .locals 2

    .line 81
    sget-object v0, Lyads/u94;->a:Lyads/u94;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-boolean v1, Lyads/u94;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    .line 83
    invoke-static {p0, p2, p1}, Lyads/i94;->a(Lyads/i94;Ljava/util/Map;Lyads/r75;)Lyads/sa3;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2}, Lyads/i94;->b(Lyads/r75;Ljava/util/Map;)Lyads/sa3;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v0

    throw p0
.end method

.method public final b(Lyads/r75;Ljava/util/Map;)Lyads/sa3;
    .locals 6

    const-string v0, "Content-Type"

    iget-object v1, p0, Lyads/i94;->b:Lyads/fn4;

    invoke-virtual {v1, p1}, Lyads/fn4;->a(Lyads/r75;)Lyads/en4;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lyads/i94;->a:Lyads/t45;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v1, Lyads/en4;->c:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v2, Lyads/q83;

    invoke-direct {v2, v0, p2}, Lyads/q83;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/sa3;

    iget p2, v1, Lyads/en4;->a:I

    iget-object v0, v1, Lyads/en4;->b:[B

    invoke-direct {p1, p2, p0, v0}, Lyads/sa3;-><init>(ILjava/util/List;[B)V

    return-object p1

    :cond_1
    iget-object p0, p0, Lyads/i94;->d:Lyads/xa3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lyads/r75;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lyads/r75;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v3, p1, Lyads/r75;->o:Lyads/am0;

    iget v3, v3, Lyads/am0;->a:I

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v5, "https"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lyads/xa3;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p0, :cond_2

    move-object p2, v1

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p2, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, p2, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    iget p0, p1, Lyads/r75;->c:I

    if-eqz p0, :cond_6

    if-ne p0, v4, :cond_5

    const-string p0, "POST"

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Lyads/r75;->b()[B

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "GET"

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_a

    iget p1, p1, Lyads/r75;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 p1, 0x64

    if-gt p1, p0, :cond_8

    const/16 p1, 0xc8

    if-lt p0, p1, :cond_9

    :cond_8
    const/16 p1, 0xcc

    if-eq p0, p1, :cond_9

    const/16 p1, 0x130

    if-eq p0, p1, :cond_9

    :try_start_1
    new-instance p1, Lyads/sa3;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lyads/xa3;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    new-instance v2, Lyads/wa3;

    invoke-direct {v2, v1}, Lyads/wa3;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, p0, p2, v0, v2}, Lyads/sa3;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    move v3, v4

    goto :goto_3

    :cond_9
    :try_start_2
    new-instance p1, Lyads/sa3;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lyads/xa3;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, p2, v2}, Lyads/sa3;-><init>(ILjava/util/ArrayList;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_a
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-nez v3, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw p0
.end method
