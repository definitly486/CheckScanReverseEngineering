.class public Lorg/conscrypt/ECParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "SourceFile"


# instance fields
.field private curve:Lorg/conscrypt/OpenSSLECGroupContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lorg/conscrypt/NativeRef$EC_GROUP;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EC_KEY_marshal_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Unsupported format: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/ECParameters;->engineGetEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Ljava/security/spec/ECParameterSpec;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/security/spec/ECGenParameterSpec;

    iget-object p0, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Unsupported class: "

    invoke-static {p1, v0}, Lln;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    const-string v0, "Unknown EC curve: "

    instance-of v1, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    return-void

    :cond_0
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Unknown EC curve name: "

    invoke-static {v0, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v1, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    return-void

    :cond_2
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "Only ECParameterSpec and ECGenParameterSpec are supported"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .locals 4

    .line 85
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->EC_KEY_parse_curve_name([B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Lorg/conscrypt/OpenSSLECGroupContext;

    new-instance v2, Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {p1, v2}, Lorg/conscrypt/OpenSSLECGroupContext;-><init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V

    iput-object p1, p0, Lorg/conscrypt/ECParameters;->curve:Lorg/conscrypt/OpenSSLECGroupContext;

    return-void

    .line 87
    :cond_0
    const-string p0, "Error reading ASN.1 encoding"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 88
    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    const-string p0, "Unsupported format: "

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/ECParameters;->engineInit([B)V

    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .locals 0

    const-string p0, "Conscrypt EC AlgorithmParameters"

    return-object p0
.end method
