.class public Lorg/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;,
        Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    }
.end annotation


# static fields
.field private static final DASH:I = 0x2d

.field private static final PEM_MARKER:[B

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40

.field private static final VALUE_0:I = 0x30


# instance fields
.field private certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lorg/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PEM_MARKER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$1;-><init>(Lorg/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    new-instance v0, Lorg/conscrypt/OpenSSLX509CertificateFactory$2;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$2;-><init>(Lorg/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    return-void
.end method

.method public static synthetic access$000()[B
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-object v0
.end method

.method public static synthetic access$100([B)Z
    .locals 0

    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->isMaybePkcs7([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200()[B
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->PEM_MARKER:[B

    return-object v0
.end method

.method private static isMaybePkcs7([B)Z
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5

    aget-byte v0, p0, v1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    const/4 v5, 0x6

    if-gt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x81

    if-ne v3, v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/16 v2, 0x82

    if-ne v3, v2, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x83

    if-ne v3, v2, :cond_4

    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const/16 v2, 0x84

    if-ne v3, v2, :cond_5

    move v2, v5

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-byte p0, p0, v2

    if-ne p0, v5, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CRL;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CRLException;

    invoke-direct {p1, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 0

    .line 53
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 0

    .line 52
    invoke-static {p1, p2}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Certificate not X.509 type at index "

    invoke-static {v0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-direct {p1, p0}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
