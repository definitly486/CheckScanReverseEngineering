.class public Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$MlKem;
.super Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$MlKem768;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSslMlKemKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MlKem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ML-KEM"

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSslMlKemKeyPairGenerator$MlKem768;-><init>(Ljava/lang/String;)V

    return-void
.end method
