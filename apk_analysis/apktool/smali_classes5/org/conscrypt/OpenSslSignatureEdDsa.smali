.class public Lorg/conscrypt/OpenSslSignatureEdDsa;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# instance fields
.field private final buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

.field private ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

.field private key:Lorg/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/conscrypt/ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    return-void
.end method

.method private static verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 2

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    const/16 v1, 0x3b5

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Non-ED25519 key used to initialize ED25519 signature."

    invoke-static {p0}, Lti0;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3

    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSslSignatureEdDsa;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    new-instance p1, Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JLorg/conscrypt/NativeRef$EVP_PKEY;)J

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3

    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSslSignatureEdDsa;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    new-instance p1, Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Lorg/conscrypt/NativeCrypto;->EVP_DigestVerifyInit(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JLorg/conscrypt/NativeRef$EVP_PKEY;)J

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public engineSign()[B
    .locals 4

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/conscrypt/ExposedByteArrayOutputStream;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/conscrypt/NativeCrypto;->EVP_DigestSign(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)[B

    move-result-object v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "No key provided"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate(B)V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 7

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v1, :cond_0

    array-length v3, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/conscrypt/ExposedByteArrayOutputStream;->array()[B

    move-result-object v4

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_DigestVerify(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII[BII)Z

    move-result p1

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureEdDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return p1

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "No key provided"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
