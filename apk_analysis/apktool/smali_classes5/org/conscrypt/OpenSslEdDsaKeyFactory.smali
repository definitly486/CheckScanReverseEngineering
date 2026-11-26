.class public final Lorg/conscrypt/OpenSslEdDsaKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1

    if-eqz p1, :cond_1

    instance-of p0, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/conscrypt/OpenSslEdDsaPrivateKey;

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslEdDsaPrivateKey;-><init>(Ljava/security/spec/EncodedKeySpec;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Must use PKCS8EncodedKeySpec or Raw EncodedKeySpec; was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1

    if-eqz p1, :cond_1

    instance-of p0, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz p0, :cond_0

    new-instance p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;-><init>(Ljava/security/spec/EncodedKeySpec;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Must use X509EncodedKeySpec or Raw EncodedKeySpec; was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 3
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

    const-string v2, "EdDSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ed25519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.3.101.112"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Key must be an EdDSA or Ed25519 key"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSslEdDsaKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p0, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    const-class v0, Ljava/security/spec/EncodedKeySpec;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p1

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslEdDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p1, p0, Lorg/conscrypt/OpenSslEdDsaPrivateKey;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Lorg/conscrypt/OpenSslEdDsaPrivateKey;

    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p1

    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslEdDsaPrivateKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key type and key spec combination; key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", keySpec="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    const-string p0, "Key is destroyed"

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
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    instance-of v1, p1, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    if-nez v1, :cond_5

    instance-of v1, p1, Lorg/conscrypt/OpenSslEdDsaPrivateKey;

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    instance-of v1, p1, Ljava/security/PrivateKey;

    const-string v2, "Key does not support encoding"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PKCS#8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSslEdDsaKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    invoke-static {v2}, Lti0;->e(Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X.509"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_1
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSslEdDsaKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    invoke-static {v2}, Lti0;->e(Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Key must be XEC public or private key; was "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p1

    :cond_6
    const-string p0, "key == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v0
.end method
