.class public abstract Lorg/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLContextImpl$TLSv13;,
        Lorg/conscrypt/OpenSSLContextImpl$TLSv1;,
        Lorg/conscrypt/OpenSSLContextImpl$TLSv11;,
        Lorg/conscrypt/OpenSSLContextImpl$TLSv12;
    }
.end annotation


# static fields
.field private static defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final clientSessionContext:Lorg/conscrypt/ClientSessionContext;

.field private final protocols:[Ljava/lang/String;

.field private final serverSessionContext:Lorg/conscrypt/ServerSessionContext;

.field sslParameters:Lorg/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    .line 84
    new-instance p1, Lorg/conscrypt/ClientSessionContext;

    invoke-direct {p1}, Lorg/conscrypt/ClientSessionContext;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    .line 85
    new-instance p1, Lorg/conscrypt/ServerSessionContext;

    invoke-direct {p1}, Lorg/conscrypt/ServerSessionContext;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    const-class p2, Lorg/conscrypt/DefaultSSLContextImpl;

    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    sget-object v0, Lorg/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/conscrypt/ClientSessionContext;

    invoke-direct {v0}, Lorg/conscrypt/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    new-instance v1, Lorg/conscrypt/ServerSessionContext;

    invoke-direct {v1}, Lorg/conscrypt/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lorg/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    move-object v2, p0

    check-cast v2, Lorg/conscrypt/DefaultSSLContextImpl;

    sput-object v2, Lorg/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;

    :goto_0
    move-object v6, v0

    move-object v7, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/ClientSessionContext;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    sget-object v1, Lorg/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLContextImpl;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/ServerSessionContext;

    iput-object v1, p0, Lorg/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    goto :goto_0

    :goto_1
    new-instance v2, Lorg/conscrypt/SSLParametersImpl;

    sget-object v0, Lorg/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v0}, Lorg/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    sget-object v0, Lorg/conscrypt/OpenSSLContextImpl;->defaultSslContextImpl:Lorg/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v0}, Lorg/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lorg/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v2, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPreferred()Lorg/conscrypt/OpenSSLContextImpl;
    .locals 1

    new-instance v0, Lorg/conscrypt/OpenSSLContextImpl$TLSv13;

    invoke-direct {v0}, Lorg/conscrypt/OpenSSLContextImpl$TLSv13;-><init>()V

    return-object v0
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 31
    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/SSLParametersImpl;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 34
    new-instance v0, Lorg/conscrypt/ConscryptEngine;

    invoke-direct {v0, p0}, Lorg/conscrypt/ConscryptEngine;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapEngine(Lorg/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    const-string p0, "SSLContext is not initialized."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/SSLParametersImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    new-instance v0, Lorg/conscrypt/ConscryptEngine;

    invoke-direct {v0, p1, p2, p0}, Lorg/conscrypt/ConscryptEngine;-><init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapEngine(Lorg/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SSLContext is not initialized."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    return-object p0
.end method

.method public engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    return-object p0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;

    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0

    :cond_0
    const-string p0, "SSLContext is not initialized."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/conscrypt/OpenSSLSocketFactoryImpl;

    iget-object p0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lorg/conscrypt/SSLParametersImpl;)V

    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSocketFactoryIfNeeded(Lorg/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SSLContext is not initialized."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 7

    new-instance v0, Lorg/conscrypt/SSLParametersImpl;

    iget-object v4, p0, Lorg/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    iget-object v5, p0, Lorg/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    iget-object v6, p0, Lorg/conscrypt/OpenSSLContextImpl;->protocols:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLContextImpl;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    return-void
.end method
