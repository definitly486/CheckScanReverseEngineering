.class public abstract Lorg/conscrypt/OpenSslMlDsaKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSslMlDsaKeyFactory$MlDsa87;,
        Lorg/conscrypt/OpenSslMlDsaKeyFactory$MlDsa65;,
        Lorg/conscrypt/OpenSslMlDsaKeyFactory$MlDsa44;,
        Lorg/conscrypt/OpenSslMlDsaKeyFactory$MlDsa;
    }
.end annotation


# instance fields
.field private final defaultAlgorithm:Lorg/conscrypt/MlDsaAlgorithm;


# direct methods
.method private constructor <init>(Lorg/conscrypt/MlDsaAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlDsaAlgorithm;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/MlDsaAlgorithm;Lorg/conscrypt/OpenSslMlDsaKeyFactory$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;-><init>(Lorg/conscrypt/MlDsaAlgorithm;)V

    return-void
.end method

.method public static getMlDsaAlgorithm(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/MlDsaAlgorithm;
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p0

    const/16 v0, 0x3c7

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_0
    const/16 v0, 0x3c8

    if-ne p0, v0, :cond_1

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_1
    const/16 v0, 0x3c9

    if-ne p0, v0, :cond_2

    sget-object p0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    return-object p0

    :cond_2
    const-string p0, "Unsupported key type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPKeyType(Lorg/conscrypt/MlDsaAlgorithm;)I
    .locals 1

    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3c7

    return p0

    :cond_0
    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_65:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x3c8

    return p0

    :cond_1
    sget-object v0, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_87:Lorg/conscrypt/MlDsaAlgorithm;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x3c9

    return p0

    :cond_2
    const-string v0, "Unsupported algorithm: "

    invoke-static {p0, v0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private makePrivateKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSslMlDsaPrivateKey;
    .locals 1

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getMlDsaAlgorithm(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;Lorg/conscrypt/MlDsaAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid private key"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v0}, Lrs2;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private makePrivateKeyFromSeed([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSslMlDsaPrivateKey;
    .locals 3

    invoke-virtual {p0, p2}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length p0, p1

    const/16 v1, 0x20

    const-string v2, "Invalid raw private key"

    if-ne p0, v1, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;-><init>([BLorg/conscrypt/MlDsaAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v2, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v2}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p2}, Lrs2;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private makePublicKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSslMlDsaPublicKey;
    .locals 1

    invoke-static {p1}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->getMlDsaAlgorithm(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlDsaPublicKey;-><init>(Lorg/conscrypt/OpenSSLKey;Lorg/conscrypt/MlDsaAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid public key"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v0}, Lrs2;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private makePublicKeyFromRaw([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSslMlDsaPublicKey;
    .locals 3

    invoke-virtual {p0, p2}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length p0, p1

    invoke-virtual {p2}, Lorg/conscrypt/MlDsaAlgorithm;->publicKeySize()I

    move-result v1

    const-string v2, "Invalid raw public key"

    if-ne p0, v1, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSslMlDsaPublicKey;-><init>([BLorg/conscrypt/MlDsaAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v2, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v2}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {p2}, Lrs2;->e(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->makePrivateKeyFromSeed([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    const/16 v1, 0x3c8

    const/16 v2, 0x3c9

    const/16 v3, 0x3c7

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-static {p1, v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_private_key_info([B[I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->makePrivateKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to parse key. Only ML-DSA-44, ML-DSA-65 and ML-DSA-87 are currently supported. Please use ML-DSA \'seed format\' as specified and recommended in RFC 9881."

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string p0, "Encoding must be in PKCS#8 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Currently only EncodedKeySpec is supported; was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->makePublicKeyFromRaw([BLorg/conscrypt/MlDsaAlgorithm;)Lorg/conscrypt/OpenSslMlDsaPublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    const/16 v1, 0x3c8

    const/16 v2, 0x3c9

    const/16 v3, 0x3c7

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    invoke-static {p1, v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_from_subject_public_key_info([B[I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->makePublicKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSslMlDsaPublicKey;

    move-result-object p0
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to parse key. Only ML-DSA-44, ML-DSA-65 and ML-DSA-87 are currently supported."

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string p0, "Encoding must be in X.509 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Currently only EncodedKeySpec is supported; was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ML-DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, p1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    const-class v2, Ljava/security/spec/EncodedKeySpec;

    const-string v3, "Key algorithm mismatch"

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v1, p1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getSeed()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key type and key spec combination; key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", keySpec="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "Key must be an ML-DSA key"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_7
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_8
    const-string p0, "key == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3

    instance-of v0, p1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    const/4 v1, 0x0

    const-string v2, "Key algorithm mismatch"

    if-eqz v0, :cond_1

    check-cast p1, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslMlDsaPublicKey;->getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v2}, Lti0;->e(Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v0, p1, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;->getMlDsaAlgorithm()Lorg/conscrypt/MlDsaAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    invoke-static {v2}, Lti0;->e(Ljava/lang/String;)V

    return-object v1

    :cond_3
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PKCS#8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X.509"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    :try_start_1
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1

    :cond_5
    const-string p0, "Unable to translate key into ML-DSA key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract supportsAlgorithm(Lorg/conscrypt/MlDsaAlgorithm;)Z
.end method
