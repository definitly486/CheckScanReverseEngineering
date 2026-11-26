.class public Lorg/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;
.super Lorg/conscrypt/OpenSSLAeadCipherAES;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLAeadCipherAES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM_SIV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM_SIV$AES_256;,
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM_SIV$AES_128;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLAeadCipherAES;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method


# virtual methods
.method public allowsNonceReuse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 0

    sget-object p0, Lorg/conscrypt/OpenSSLCipher$Mode;->GCM_SIV:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "Mode must be GCM-SIV"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkSupportedTagLength(I)V
    .locals 0

    const/16 p0, 0x80

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Tag length must be 128 bits"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEVP_AEAD(I)J
    .locals 0

    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_aead_aes_128_gcm_siv()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/16 p0, 0x20

    if-ne p1, p0, :cond_1

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_aead_aes_256_gcm_siv()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-string p0, "Unexpected key length: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method
