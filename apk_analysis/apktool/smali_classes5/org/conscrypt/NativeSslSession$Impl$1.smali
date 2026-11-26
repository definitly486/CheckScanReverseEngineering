.class Lorg/conscrypt/NativeSslSession$Impl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/conscrypt/NativeSslSession$Impl;->toSSLSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/NativeSslSession$Impl;


# direct methods
.method public constructor <init>(Lorg/conscrypt/NativeSslSession$Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getCipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCreationTime()J
    .locals 2

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-static {p0}, Lorg/conscrypt/NativeSslSession$Impl;->access$300(Lorg/conscrypt/NativeSslSession$Impl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getId()[B

    move-result-object p0

    return-object p0
.end method

.method public getLastAccessedTime()J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPacketBufferSize()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getPeerHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPeerPort()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getPeerPort()I

    move-result p0

    return p0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public invalidate()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/NativeSslSession$Impl$1;->this$0:Lorg/conscrypt/NativeSslSession$Impl;

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession$Impl;->isValid()Z

    move-result p0

    return p0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
