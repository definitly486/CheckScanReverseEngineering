.class public abstract Lcom/my/tracker/obfuscated/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/my/tracker/obfuscated/s;

.field private static b:Z


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/my/tracker/obfuscated/e0;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/my/tracker/obfuscated/t;

    invoke-direct {v0}, Lcom/my/tracker/obfuscated/t;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Lcom/my/tracker/obfuscated/t;->a(Landroid/content/Context;)Lcom/my/tracker/obfuscated/s;

    move-result-object p0

    sput-object p0, Lcom/my/tracker/obfuscated/e0;->a:Lcom/my/tracker/obfuscated/s;

    if-nez p0, :cond_1

    .line 47
    const-string p0, "DigitalGovCertsUtils: can\'t init digital gov certs \u2013 certData is null"

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    .line 48
    sput-boolean p0, Lcom/my/tracker/obfuscated/e0;->b:Z

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)V
    .locals 2

    sget-object v0, Lcom/my/tracker/obfuscated/e0;->a:Lcom/my/tracker/obfuscated/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, v0, Lcom/my/tracker/obfuscated/s;->b:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DigitalGovCertsUtils: can\'t setSSLSocketFactory to httpsURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
