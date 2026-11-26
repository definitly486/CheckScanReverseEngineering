.class public final Lcom/my/tracker/obfuscated/n1;
.super Lcom/my/tracker/obfuscated/w0;
.source "SourceFile"


# instance fields
.field final a:Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;


# direct methods
.method public constructor <init>(Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/my/tracker/obfuscated/w0;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/obfuscated/n1;->a:Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/w0$b;
    .locals 7

    const-string v0, "OkHttpGetRequest error: error while sending data"

    const-string v1, "OkHttpGetRequest error: response code "

    const-string v2, "OkHttpGetRequest: send request to "

    invoke-static {}, Lcom/my/tracker/obfuscated/w0$b;->d()Lcom/my/tracker/obfuscated/w0$b;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    new-instance v2, Lb37$a;

    invoke-direct {v2}, Lb37$a;-><init>()V

    invoke-virtual {v2, p1}, Lb37$a;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "GET"

    invoke-virtual {v2, p1, v5}, Lb37$a;->c(Ljava/lang/String;Lg37;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Lb37$a;->a()Lb37;

    move-result-object p1

    iget-object p0, p0, Lcom/my/tracker/obfuscated/n1;->a:Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;

    invoke-interface {p0}, Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljy6;

    invoke-direct {v2, p0, p1}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2}, Ljy6;->execute()Lz47;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget p1, p0, Lz47;->e:I

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    const-string v1, "OkHttpGetRequest: response successfully received"

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/my/tracker/obfuscated/w0$b;->a:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, p0

    goto :goto_3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iput-boolean v4, v3, Lcom/my/tracker/obfuscated/w0$b;->a:Z

    :goto_0
    if-ne p1, v2, :cond_3

    const-string p1, "OkHttpGetRequest: processing server response"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lz47;->h:Lb57;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb57;->v()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v5, v3, Lcom/my/tracker/obfuscated/w0$b;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p1, "OkHttpGetRequest: response data is empty"

    invoke-static {p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lz47;->close()V

    return-object v3

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_2
    move-object p1, p0

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_2

    :goto_3
    :try_start_6
    invoke-static {v0, p1}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v4, v3, Lcom/my/tracker/obfuscated/w0$b;->a:Z

    iput-object v0, v3, Lcom/my/tracker/obfuscated/w0$b;->c:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lz47;->close()V

    :cond_4
    return-object v3

    :catchall_3
    move-exception p0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lz47;->close()V

    :cond_5
    throw p0
.end method
