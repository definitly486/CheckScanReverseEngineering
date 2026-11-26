.class public Lorg/conscrypt/OpenSSLEvpCipherAES$AES;
.super Lorg/conscrypt/OpenSSLEvpCipherAES;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES$ECB;,
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES$CTR;,
        Lorg/conscrypt/OpenSSLEvpCipherAES$AES$CBC;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLEvpCipherAES;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method


# virtual methods
.method public checkSupportedKeySize(I)V
    .locals 2

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const/16 p0, 0x18

    if-eq p1, p0, :cond_1

    const/16 p0, 0x20

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Unsupported key size: "

    const-string v1, " bytes"

    invoke-static {p1, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
