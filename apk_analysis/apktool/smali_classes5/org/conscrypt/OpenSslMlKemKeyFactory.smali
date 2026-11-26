.class public abstract Lorg/conscrypt/OpenSslMlKemKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSslMlKemKeyFactory$MlKem1024;,
        Lorg/conscrypt/OpenSslMlKemKeyFactory$MlKem768;,
        Lorg/conscrypt/OpenSslMlKemKeyFactory$MlKem;
    }
.end annotation


# static fields
.field static final pkcs8PreambleMlKem1024:[B

.field static final pkcs8PreambleMlKem768:[B

.field static final x509PreambleMlKem1024:[B

.field static final x509PreambleMlKem768:[B


# instance fields
.field private final defaultAlgorithm:Lorg/conscrypt/MlKemAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x16

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem768:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem1024:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem768:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem1024:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x4t
        -0x4et
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
        0x4t
        0x2t
        0x3t
        -0x7et
        0x4t
        -0x5ft
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x30t
        -0x7et
        0x6t
        0x32t
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
        0x4t
        0x3t
        0x3t
        -0x7et
        0x6t
        0x21t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x30t
        0x54t
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
        0x4t
        0x2t
        0x4t
        0x42t
        -0x80t
        0x40t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x30t
        0x54t
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
        0x4t
        0x3t
        0x4t
        0x42t
        -0x80t
        0x40t
    .end array-data
.end method

.method private constructor <init>(Lorg/conscrypt/MlKemAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlKemAlgorithm;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/MlKemAlgorithm;Lorg/conscrypt/OpenSslMlKemKeyFactory$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslMlKemKeyFactory;-><init>(Lorg/conscrypt/MlKemAlgorithm;)V

    return-void
.end method

.method private makePrivateKeyFromSeed([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPrivateKey;
    .locals 3

    invoke-virtual {p0, p2}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length p0, p1

    const/16 v1, 0x40

    const-string v2, "Invalid raw private key"

    if-ne p0, v1, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSslMlKemPrivateKey;-><init>([BLorg/conscrypt/MlKemAlgorithm;)V
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

.method private makePublicKeyFromRaw([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPublicKey;
    .locals 2

    invoke-virtual {p0, p2}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p1

    invoke-virtual {p2}, Lorg/conscrypt/MlKemAlgorithm;->publicKeySize()I

    move-result v0

    if-ne p0, v0, :cond_0

    :try_start_0
    new-instance p0, Lorg/conscrypt/OpenSslMlKemPublicKey;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSslMlKemPublicKey;-><init>([BLorg/conscrypt/MlKemAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Invalid raw public key"

    invoke-direct {p1, p2, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    array-length p1, p1

    invoke-virtual {p2}, Lorg/conscrypt/MlKemAlgorithm;->publicKeySize()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid raw public key length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, Lrs2;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePrivateKeyFromSeed([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPrivateKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    sget-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem768:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePrivateKeyFromSeed([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPrivateKey;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->pkcs8PreambleMlKem1024:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePrivateKeyFromSeed([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPrivateKey;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Only PKCS#8 format for ML-KEM-768 and ML-KEM-1024 is supported"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string p0, "Encoding must be in PKCS#8 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_4
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

    :cond_5
    const-string p0, "keySpec == null"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget-object v0, p0, Lorg/conscrypt/OpenSslMlKemKeyFactory;->defaultAlgorithm:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePublicKeyFromRaw([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    sget-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem768:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePublicKeyFromRaw([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPublicKey;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lorg/conscrypt/OpenSslMlKemKeyFactory;->x509PreambleMlKem1024:[B

    invoke-static {p1, v1}, Lorg/conscrypt/ArrayUtils;->startsWith([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v0, v1

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    sget-object v0, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_1024:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->makePublicKeyFromRaw([BLorg/conscrypt/MlKemAlgorithm;)Lorg/conscrypt/OpenSslMlKemPublicKey;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Only X.509 format for ML-KEM-768 and ML-KEM-1024 is supported"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string p0, "Encoding must be in X.509 format"

    invoke-static {p0}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_4
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

    :cond_5
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

    const-string v2, "ML-KEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, p1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    const-class v2, Ljava/security/spec/EncodedKeySpec;

    const-string v3, "Key algorithm mismatch"

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlKemPublicKey;->getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

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

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlKemPublicKey;->getRaw()[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/conscrypt/KeySpecUtil;->makeRawKeySpec([BLjava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v3}, Ln1;->c(Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v1, p1, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlKemPrivateKey;->getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

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

    invoke-virtual {v1}, Lorg/conscrypt/OpenSslMlKemPrivateKey;->getSeed()[B

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
    const-string p0, "Key must be an ML-KEM key"

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

    instance-of v0, p1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    const/4 v1, 0x0

    const-string v2, "Key algorithm mismatch"

    if-eqz v0, :cond_1

    check-cast p1, Lorg/conscrypt/OpenSslMlKemPublicKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSslMlKemPublicKey;->getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {v2}, Lti0;->e(Ljava/lang/String;)V

    return-object v1

    :cond_1
    instance-of v0, p1, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSslMlKemPrivateKey;->getMlKemAlgorithm()Lorg/conscrypt/MlKemAlgorithm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z

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

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

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

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSslMlKemKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lr01;->f(Ljava/lang/Throwable;)V

    return-object v1

    :cond_5
    const-string p0, "Unable to translate key into ML-KEM key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract supportsAlgorithm(Lorg/conscrypt/MlKemAlgorithm;)Z
.end method
