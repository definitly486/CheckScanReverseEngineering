.class Lorg/conscrypt/HpkeImpl$HpkeXwingImpl;
.super Lorg/conscrypt/HpkeImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/HpkeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HpkeXwingImpl"
.end annotation


# direct methods
.method public constructor <init>(Lorg/conscrypt/HpkeSuite;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/conscrypt/HpkeImpl;-><init>(Lorg/conscrypt/HpkeSuite;)V

    return-void
.end method


# virtual methods
.method public getPrivateRecipientKeyBytes(Ljava/security/PrivateKey;)[B
    .locals 0

    invoke-static {}, Lorg/conscrypt/HpkeImpl;->access$100()Lorg/conscrypt/OpenSslXwingKeyFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSslXwingKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0

    instance-of p1, p0, Lorg/conscrypt/OpenSslXwingPrivateKey;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/conscrypt/OpenSslXwingPrivateKey;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslXwingPrivateKey;->getRaw()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Unexpected private key class"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecipientPublicKeyBytes(Ljava/security/PublicKey;)[B
    .locals 0

    invoke-static {}, Lorg/conscrypt/HpkeImpl;->access$100()Lorg/conscrypt/OpenSslXwingKeyFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSslXwingKeyFactory;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object p0

    instance-of p1, p0, Lorg/conscrypt/OpenSslXwingPublicKey;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/conscrypt/OpenSslXwingPublicKey;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSslXwingPublicKey;->getRaw()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Unexpected public key class"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
