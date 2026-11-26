.class public final Lorg/conscrypt/OpenSSLECDHKeyAgreement;
.super Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/conscrypt/OpenSSLBaseDHKeyAgreement<",
        "Lorg/conscrypt/OpenSSLKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeKey([BLjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p2, Lorg/conscrypt/OpenSSLKey;

    check-cast p3, Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->computeKey([BLorg/conscrypt/OpenSSLKey;Lorg/conscrypt/OpenSSLKey;)I

    move-result p0

    return p0
.end method

.method public computeKey([BLorg/conscrypt/OpenSSLKey;Lorg/conscrypt/OpenSSLKey;)I
    .locals 0

    invoke-virtual {p2}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-virtual {p3}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p2}, Lorg/conscrypt/NativeCrypto;->ECDH_compute_key([BILorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->convertPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p0

    return-object p0
.end method

.method public convertPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->convertPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p0

    return-object p0
.end method

.method public convertPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOutputSize(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLECDHKeyAgreement;->getOutputSize(Lorg/conscrypt/OpenSSLKey;)I

    move-result p0

    return p0
.end method

.method public getOutputSize(Lorg/conscrypt/OpenSSLKey;)I
    .locals 2

    new-instance p0, Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_degree(Lorg/conscrypt/NativeRef$EC_GROUP;)I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method
