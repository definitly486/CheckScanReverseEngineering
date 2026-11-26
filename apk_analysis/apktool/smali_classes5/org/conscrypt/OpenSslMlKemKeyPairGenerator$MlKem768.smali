.class public Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$MlKem768;
.super Lorg/conscrypt/OpenSslMlKemKeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSslMlKemKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MlKem768"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ML-KEM-768"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSslMlKemKeyPairGenerator;-><init>(Ljava/lang/String;Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$1;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSslMlKemKeyPairGenerator;-><init>(Ljava/lang/String;Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$1;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    const/16 p0, 0x40

    new-array p0, p0, [B

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->MLKEM768_public_key_from_seed([B)[B

    move-result-object v0

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/conscrypt/OpenSslMlKemPublicKey;

    sget-object v3, Lorg/conscrypt/MlKemAlgorithm;->ML_KEM_768:Lorg/conscrypt/MlKemAlgorithm;

    invoke-direct {v2, v0, v3}, Lorg/conscrypt/OpenSslMlKemPublicKey;-><init>([BLorg/conscrypt/MlKemAlgorithm;)V

    new-instance v0, Lorg/conscrypt/OpenSslMlKemPrivateKey;

    invoke-direct {v0, p0, v3}, Lorg/conscrypt/OpenSslMlKemPrivateKey;-><init>([BLorg/conscrypt/MlKemAlgorithm;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method
