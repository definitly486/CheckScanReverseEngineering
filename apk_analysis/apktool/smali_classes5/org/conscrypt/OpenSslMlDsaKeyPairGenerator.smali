.class public Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa87;,
        Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa;,
        Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa65;,
        Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa44;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize(I)V
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "ML-DSA only supports -1 for bits"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
