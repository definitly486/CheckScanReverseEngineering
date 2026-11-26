.class public Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa;
.super Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa65;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MlDsa"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ML-DSA"

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSslMlDsaKeyPairGenerator$MlDsa65;-><init>(Ljava/lang/String;)V

    return-void
.end method
