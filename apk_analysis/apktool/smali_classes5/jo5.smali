.class public Ljo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# virtual methods
.method public final getApplicationBufferSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCreationTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getId()[B
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final getLastAccessedTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPacketBufferSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This method is deprecated and marked for removal. Use the getPeerCertificates() method instead."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public final getPeerPort()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValueNames()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    return-void
.end method

.method public final isValid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
