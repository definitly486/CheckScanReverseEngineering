.class Lorg/conscrypt/Java7ExtendedSSLSession;
.super Ljavax/net/ssl/ExtendedSSLSession;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/ConscryptSession;


# instance fields
.field protected final delegate:Lorg/conscrypt/ExternalSession;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ExternalSession;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/ExtendedSSLSession;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    return-void
.end method


# virtual methods
.method public final getApplicationBufferSize()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getApplicationBufferSize()I

    move-result p0

    return p0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCreationTime()J
    .locals 2

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getId()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getId()[B

    move-result-object p0

    return-object p0
.end method

.method public final getLastAccessedTime()J
    .locals 2

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public final getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getLocalSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPacketBufferSize()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPacketBufferSize()I

    move-result p0

    return p0
.end method

.method public final getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lorg/conscrypt/Java7ExtendedSSLSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public final getPeerHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPeerPort()I
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerPort()I

    move-result p0

    return p0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public final getPeerSignedCertificateTimestamp()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object p0

    return-object p0
.end method

.method public final getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestedServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusResponses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getStatusResponses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0, p1}, Lorg/conscrypt/ExternalSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValueNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->getValueNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->invalidate()V

    return-void
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {p0}, Lorg/conscrypt/ExternalSession;->isValid()Z

    move-result p0

    return p0
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1, p2}, Lorg/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/Java7ExtendedSSLSession;->delegate:Lorg/conscrypt/ExternalSession;

    invoke-virtual {v0, p0, p1}, Lorg/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-void
.end method
