.class public Lorg/conscrypt/OpenSslSignatureSlhDsa;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# instance fields
.field private buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

.field private privateKey:Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

.field private publicKey:Lorg/conscrypt/OpenSslSlhDsaPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lorg/conscrypt/ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 0

    check-cast p1, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->privateKey:Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->publicKey:Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 0

    check-cast p1, Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->publicKey:Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->privateKey:Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public engineSign()[B
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->privateKey:Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/conscrypt/ExposedByteArrayOutputStream;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-object v2, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->privateKey:Lorg/conscrypt/OpenSslSlhDsaPrivateKey;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSslSlhDsaPrivateKey;->getRaw()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/conscrypt/NativeCrypto;->SLHDSA_SHA2_128S_sign([BI[B)[B

    move-result-object v0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string v0, "No privateKey provided"

    invoke-direct {p0, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineUpdate(B)V
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 3

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->publicKey:Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/conscrypt/ExposedByteArrayOutputStream;->array()[B

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-object v2, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->publicKey:Lorg/conscrypt/OpenSslSlhDsaPublicKey;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSslSlhDsaPublicKey;->getRaw()[B

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/conscrypt/NativeCrypto;->SLHDSA_SHA2_128S_verify([BI[B[B)I

    move-result p1

    iget-object p0, p0, Lorg/conscrypt/OpenSslSignatureSlhDsa;->buffer:Lorg/conscrypt/ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "No publicKey provided"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
