.class public Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa44;
.super Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MlDsa44"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ML-DSA-44"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;-><init>(Ljava/lang/String;Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$1;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    const/16 p0, 0x20

    new-array p0, p0, [B

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->MLDSA44_public_key_from_seed([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/conscrypt/OpenSslMlDsaPublicKey;

    sget-object v3, Lorg/conscrypt/MlDsaAlgorithm;->ML_DSA_44:Lorg/conscrypt/MlDsaAlgorithm;

    invoke-direct {v2, v0, v3}, Lorg/conscrypt/OpenSslMlDsaPublicKey;-><init>([BLorg/conscrypt/MlDsaAlgorithm;)V

    new-instance v0, Lorg/conscrypt/OpenSslMlDsaPrivateKey;

    invoke-direct {v0, p0, v3}, Lorg/conscrypt/OpenSslMlDsaPrivateKey;-><init>([BLorg/conscrypt/MlDsaAlgorithm;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method
