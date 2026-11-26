.class public final Lorg/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/VerifiedSCT$Builder;,
        Lorg/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field private final logInfo:Lorg/conscrypt/ct/LogInfo;

.field private final sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

.field private final status:Lorg/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method private constructor <init>(Lorg/conscrypt/ct/VerifiedSCT$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$000(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$100(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$100(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$200(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/LogInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$000(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/VerifiedSCT;->sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$100(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/VerifiedSCT;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    invoke-static {p1}, Lorg/conscrypt/ct/VerifiedSCT$Builder;->access$200(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/LogInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/ct/VerifiedSCT;->logInfo:Lorg/conscrypt/ct/LogInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/ct/VerifiedSCT$Builder;Lorg/conscrypt/ct/VerifiedSCT$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/conscrypt/ct/VerifiedSCT;-><init>(Lorg/conscrypt/ct/VerifiedSCT$Builder;)V

    return-void
.end method


# virtual methods
.method public getLogInfo()Lorg/conscrypt/ct/LogInfo;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT;->logInfo:Lorg/conscrypt/ct/LogInfo;

    return-object p0
.end method

.method public getSct()Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT;->sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

    return-object p0
.end method

.method public getStatus()Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    sget-object v0, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
