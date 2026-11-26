.class public final Lorg/conscrypt/OpenSslEdDsaKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EdDSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "EdDSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 3

    const/16 p0, 0x20

    new-array v0, p0, [B

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->ED25519_keypair([B[B)V

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/conscrypt/OpenSslEdDsaPublicKey;

    invoke-direct {v2, v0}, Lorg/conscrypt/OpenSslEdDsaPublicKey;-><init>([B)V

    new-instance v0, Lorg/conscrypt/OpenSslEdDsaPrivateKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSslEdDsaPrivateKey;-><init>([B)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    const/16 p0, 0xff

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "EdDSA only supports key size 255"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 11
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "No AlgorithmParameterSpec classes are supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
