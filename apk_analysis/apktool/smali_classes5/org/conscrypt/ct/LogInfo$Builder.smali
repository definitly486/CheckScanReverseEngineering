.class public Lorg/conscrypt/ct/LogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/LogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private logId:[B

.field private operator:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field private state:I

.field private stateTimestamp:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/conscrypt/ct/LogInfo$Builder;)[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->logId:[B

    return-object p0
.end method

.method public static synthetic access$100(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->operator:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/conscrypt/ct/LogInfo$Builder;)I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->state:I

    return p0
.end method

.method public static synthetic access$500(Lorg/conscrypt/ct/LogInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->stateTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$600(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo$Builder;->description:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/conscrypt/ct/LogInfo;
    .locals 2

    new-instance v0, Lorg/conscrypt/ct/LogInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/ct/LogInfo;-><init>(Lorg/conscrypt/ct/LogInfo$Builder;Lorg/conscrypt/ct/LogInfo$1;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/conscrypt/ct/LogInfo$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setOperator(Ljava/lang/String;)Lorg/conscrypt/ct/LogInfo$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->operator:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/ct/LogInfo$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->publicKey:Ljava/security/PublicKey;

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->logId:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setState(IJ)Lorg/conscrypt/ct/LogInfo$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->state:I

    iput-wide p2, p0, Lorg/conscrypt/ct/LogInfo$Builder;->stateTimestamp:J

    return-object p0

    :cond_0
    const-string p0, "invalid state value"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lorg/conscrypt/ct/LogInfo$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
