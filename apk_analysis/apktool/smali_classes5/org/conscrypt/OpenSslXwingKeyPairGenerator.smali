.class public final Lorg/conscrypt/OpenSslXwingKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XWING"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3

    const/16 p0, 0x20

    new-array p0, p0, [B

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->XWING_public_key_from_seed([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/conscrypt/OpenSslXwingPublicKey;

    invoke-direct {v2, v0}, Lorg/conscrypt/OpenSslXwingPublicKey;-><init>([B)V

    new-instance v0, Lorg/conscrypt/OpenSslXwingPrivateKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSslXwingPrivateKey;-><init>([B)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(I)V
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "XWING only supports -1 for bits"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
