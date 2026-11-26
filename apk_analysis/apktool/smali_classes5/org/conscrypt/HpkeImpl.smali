.class public abstract Lorg/conscrypt/HpkeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/HpkeSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/HpkeImpl$MlKem1024HkdfSha256ChaCha20Poly1305;,
        Lorg/conscrypt/HpkeImpl$MlKem1024HkdfSha256Aes256Gcm;,
        Lorg/conscrypt/HpkeImpl$MlKem1024HkdfSha256Aes128Gcm;,
        Lorg/conscrypt/HpkeImpl$MlKem768HkdfSha256ChaCha20Poly1305;,
        Lorg/conscrypt/HpkeImpl$MlKem768HkdfSha256Aes256Gcm;,
        Lorg/conscrypt/HpkeImpl$MlKem768HkdfSha256Aes128Gcm;,
        Lorg/conscrypt/HpkeImpl$HpkeMlKemImpl;,
        Lorg/conscrypt/HpkeImpl$XwingHkdfSha256ChaCha20Poly1305;,
        Lorg/conscrypt/HpkeImpl$XwingHkdfSha256Aes256Gcm;,
        Lorg/conscrypt/HpkeImpl$XwingHkdfSha256Aes128Gcm;,
        Lorg/conscrypt/HpkeImpl$HpkeXwingImpl;,
        Lorg/conscrypt/HpkeImpl$X25519_CHACHA20;,
        Lorg/conscrypt/HpkeImpl$X25519_AES_256;,
        Lorg/conscrypt/HpkeImpl$X25519_AES_128;,
        Lorg/conscrypt/HpkeImpl$HpkeX25519Impl;
    }
.end annotation


# static fields
.field private static final xwingKeyFactory:Lorg/conscrypt/OpenSslXwingKeyFactory;


# instance fields
.field private ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

.field private encapsulated:[B

.field private final hpkeSuite:Lorg/conscrypt/HpkeSuite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/OpenSslXwingKeyFactory;

    invoke-direct {v0}, Lorg/conscrypt/OpenSslXwingKeyFactory;-><init>()V

    sput-object v0, Lorg/conscrypt/HpkeImpl;->xwingKeyFactory:Lorg/conscrypt/OpenSslXwingKeyFactory;

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/HpkeSuite;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    iput-object p1, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    return-void
.end method

.method public static synthetic access$100()Lorg/conscrypt/OpenSslXwingKeyFactory;
    .locals 1

    sget-object v0, Lorg/conscrypt/HpkeImpl;->xwingKeyFactory:Lorg/conscrypt/OpenSslXwingKeyFactory;

    return-object v0
.end method

.method private checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V
    .locals 0

    if-nez p1, :cond_1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p0, p2

    if-gtz p0, :cond_0

    array-length p0, p3

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "PSK authentication not supported"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Asymmetric authentication not supported"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method private checkInitialised()V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Not initialised"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private checkIsRecipient()V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkInitialised()V

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Internal error"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private checkIsSender()V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkInitialised()V

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Internal error"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotInitialised()V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Already initialised"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public engineExport(I[B)[B
    .locals 4

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkInitialised()V

    iget-object v0, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    invoke-virtual {v0}, Lorg/conscrypt/HpkeSuite;->getKdf()Lorg/conscrypt/HpkeSuite$KDF;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/HpkeSuite$KDF;->maxExportLength()J

    move-result-wide v0

    if-ltz p1, :cond_0

    int-to-long v2, p1

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {p0, p2, p1}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_export(Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;[BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Export length must be between 0 and "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkNotInitialised()V

    invoke-direct {p0, p4, p5, p6}, Lorg/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    const-string p4, "null encapsulated data"

    invoke-static {p1, p4}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length p4, p1

    iget-object p5, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    invoke-virtual {p5}, Lorg/conscrypt/HpkeSuite;->getKem()Lorg/conscrypt/HpkeSuite$KEM;

    move-result-object p5

    invoke-virtual {p5}, Lorg/conscrypt/HpkeSuite$KEM;->getEncapsulatedLength()I

    move-result p5

    if-ne p4, p5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/conscrypt/HpkeImpl;->getPrivateRecipientKeyBytes(Ljava/security/PrivateKey;)[B

    move-result-object p2

    iget-object p4, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    invoke-static {p4, p2, p1, p3}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_recipient(Lorg/conscrypt/HpkeSuite;[B[B[B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object p1, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    return-void

    :cond_0
    const-string p0, "null recipient key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    array-length p1, p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid encapsulated length: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkNotInitialised()V

    invoke-direct {p0, p3, p4, p5}, Lorg/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/conscrypt/HpkeImpl;->getRecipientPublicKeyBytes(Ljava/security/PublicKey;)[B

    move-result-object p1

    iget-object p3, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    invoke-static {p3, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender(Lorg/conscrypt/HpkeSuite;[B[B)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    check-cast p2, Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object p2, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    return-void

    :cond_0
    const-string p0, "null recipient key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkNotInitialised()V

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3, p4, p5}, Lorg/conscrypt/HpkeImpl;->checkArgumentsForBaseModeOnly(Ljava/security/Key;[B[B)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/conscrypt/HpkeImpl;->getRecipientPublicKeyBytes(Ljava/security/PublicKey;)[B

    move-result-object p1

    iget-object p3, p0, Lorg/conscrypt/HpkeImpl;->hpkeSuite:Lorg/conscrypt/HpkeSuite;

    invoke-static {p3, p1, p2, p6}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_setup_base_mode_sender_with_seed_for_testing(Lorg/conscrypt/HpkeSuite;[B[B[B)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    check-cast p2, Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    iput-object p2, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    return-void

    :cond_0
    const-string p0, "null recipient key"

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    return-void
.end method

.method public engineOpen([B[B)[B
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkIsRecipient()V

    const-string v0, "null ciphertext"

    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_open(Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/conscrypt/HpkeDecryptException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/conscrypt/HpkeDecryptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSeal([B[B)[B
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkIsSender()V

    const-string v0, "null plaintext"

    invoke-static {p1, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->ctx:Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;

    invoke-static {p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_HPKE_CTX_seal(Lorg/conscrypt/NativeRef$EVP_HPKE_CTX;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getEncapsulated()[B
    .locals 0

    invoke-direct {p0}, Lorg/conscrypt/HpkeImpl;->checkIsSender()V

    iget-object p0, p0, Lorg/conscrypt/HpkeImpl;->encapsulated:[B

    return-object p0
.end method

.method public abstract getPrivateRecipientKeyBytes(Ljava/security/PrivateKey;)[B
.end method

.method public abstract getRecipientPublicKeyBytes(Ljava/security/PublicKey;)[B
.end method
