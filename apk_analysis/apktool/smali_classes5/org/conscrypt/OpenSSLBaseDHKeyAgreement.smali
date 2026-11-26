.class public abstract Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/crypto/KeyAgreementSpi;"
    }
.end annotation


# instance fields
.field private mExpectedResultLength:I

.field private mPrivateKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private checkCompleted()V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Key agreement not completed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract computeKey([BLjava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTT;TT;)I"
        }
    .end annotation
.end method

.method public abstract convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PublicKey;",
            ")TT;"
        }
    .end annotation
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    instance-of p2, p1, Ljava/security/PublicKey;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->convertPublicKey(Ljava/security/PublicKey;)Ljava/lang/Object;

    move-result-object p1

    iget p2, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->computeKey([BLjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    return-object v1

    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    iget p0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Engine produced a longer than expected result. Expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-string p0, "Engine returned -1"

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not a public key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "key == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-object v1

    :cond_5
    const-string p0, "DH only has one phase"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1

    :cond_6
    const-string p0, "Not initialized"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public engineGenerateSecret([BI)I
    .locals 3

    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length v2, v1

    if-gt v2, v0, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length p0, p0

    return p0

    :cond_0
    new-instance p1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    iget-object p0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    array-length p0, p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Needed: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", available: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    .line 53
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateSecret()[B
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->checkCompleted()V

    .line 51
    iget-object p0, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mResult:[B

    return-object p0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of p2, p1, Ljava/security/PrivateKey;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->convertPrivateKey(Ljava/security/PrivateKey;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->getOutputSize(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mExpectedResultLength:I

    iput-object p1, p0, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->mPrivateKey:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not a private key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "key == null"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p0, p1, p3}, Lorg/conscrypt/OpenSSLBaseDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void

    .line 52
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No algorithm parameters supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getOutputSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
