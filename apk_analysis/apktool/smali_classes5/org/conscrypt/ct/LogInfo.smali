.class public Lorg/conscrypt/ct/LogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/LogInfo$Builder;
    }
.end annotation


# static fields
.field public static final STATE_PENDING:I = 0x1

.field public static final STATE_QUALIFIED:I = 0x2

.field public static final STATE_READONLY:I = 0x4

.field public static final STATE_REJECTED:I = 0x6

.field public static final STATE_RETIRED:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_USABLE:I = 0x3


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final operator:Ljava/lang/String;

.field private final publicKey:Ljava/security/PublicKey;

.field private final state:I

.field private final stateTimestamp:J

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/conscrypt/ct/LogInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$000(Lorg/conscrypt/ct/LogInfo$Builder;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$100(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$200(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$300(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$000(Lorg/conscrypt/ct/LogInfo$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/LogInfo;->logId:[B

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$100(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$400(Lorg/conscrypt/ct/LogInfo$Builder;)I

    move-result v0

    iput v0, p0, Lorg/conscrypt/ct/LogInfo;->state:I

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$500(Lorg/conscrypt/ct/LogInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$600(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$200(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/LogInfo;->url:Ljava/lang/String;

    invoke-static {p1}, Lorg/conscrypt/ct/LogInfo$Builder;->access$300(Lorg/conscrypt/ct/LogInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/ct/LogInfo$Builder;Lorg/conscrypt/ct/LogInfo$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lorg/conscrypt/ct/LogInfo;-><init>(Lorg/conscrypt/ct/LogInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/conscrypt/ct/LogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/conscrypt/ct/LogInfo;

    iget v1, p0, Lorg/conscrypt/ct/LogInfo;->state:I

    iget v3, p1, Lorg/conscrypt/ct/LogInfo;->state:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/conscrypt/ct/LogInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/conscrypt/ct/LogInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    iget-object v3, p1, Lorg/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    iget-wide v5, p1, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->logId:[B

    iget-object p1, p1, Lorg/conscrypt/ct/LogInfo;->logId:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getID()[B
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->logId:[B

    return-object p0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/ct/LogInfo;->state:I

    return p0
.end method

.method public getStateAt(J)I
    .locals 2

    iget-wide v0, p0, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget p0, p0, Lorg/conscrypt/ct/LogInfo;->state:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStateTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lorg/conscrypt/ct/LogInfo;->logId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/ct/LogInfo;->description:Ljava/lang/String;

    iget-object v3, p0, Lorg/conscrypt/ct/LogInfo;->url:Ljava/lang/String;

    iget v0, p0, Lorg/conscrypt/ct/LogInfo;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lorg/conscrypt/ct/LogInfo;->stateTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lorg/conscrypt/ct/LogInfo;->operator:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 2

    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/conscrypt/ct/LogInfo;->getID()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lorg/conscrypt/ct/CertificateEntry;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object p0, p0, Lorg/conscrypt/ct/LogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0

    :cond_1
    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :catch_1
    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0

    :catch_2
    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0

    :catch_3
    sget-object p0, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method
