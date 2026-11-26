.class public final Lorg/conscrypt/OpenSslSlhDsaKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# static fields
.field static final pkcs8Preamble:[B

.field static final x509Preamble:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->x509Preamble:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->pkcs8Preamble:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x3t
        0x14t
        0x3t
        0x21t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        0x52t
        0x2t
        0x1t
        0x0t
        0x30t
        0xbt
        0x6t
        0x9t
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x3t
        0x14t
        0x4t
        0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method private makePrivateKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPrivateKey;
    .locals 2

    array-length p0, p1

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid raw private key"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid raw private key length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v1, " != 64"

    invoke-static {v0, v1, p1}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makePublicKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPublicKey;
    .locals 2

    array-length p0, p1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaPublicKey;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid raw public key"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid raw public key length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    const-string v1, " != 32"

    invoke-static {v0, v1, p1}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->makePrivateKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    sget-object v1, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->pkcs8Preamble:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->makePrivateKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Only PKCS#8 format for SLH-DSA-SHA2-128S is supported"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "Encoding must be in PKCS#8 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
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

    :cond_4
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    const-string v1, "raw"

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->makePublicKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    sget-object v1, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->x509Preamble:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->makePublicKeyFromRaw([B)Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Only X.509 format for SLH-DSA-SHA2-128S is supported"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "Encoding must be in X.509 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
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

    :cond_4
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 2
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

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    instance-of p0, p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    const-class v0, Ljava/security/spec/EncodedKeySpec;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_3
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

    :cond_4
    const-string p1, "keySpec == null"

    invoke-static {p1}, Ln1;->c(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p1, "key == null"

    invoke-static {p1}, Ln1;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    if-nez v1, :cond_3

    instance-of v1, p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    :try_start_1
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSslSlhDsaKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    const-string p0, "Unable to translate key into SLH-DSA key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object p1

    :cond_4
    const-string p0, "key == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v0
.end method
