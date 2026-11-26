.class public Lorg/conscrypt/ct/VerifiedSCT$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/VerifiedSCT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private logInfo:Lorg/conscrypt/ct/LogInfo;

.field private sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

.field private status:Lorg/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ct/SignedCertificateTimestamp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

    return-void
.end method

.method public static synthetic access$000(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->sct:Lorg/conscrypt/ct/SignedCertificateTimestamp;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/conscrypt/ct/VerifiedSCT$Builder;)Lorg/conscrypt/ct/LogInfo;
    .locals 0

    iget-object p0, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->logInfo:Lorg/conscrypt/ct/LogInfo;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/conscrypt/ct/VerifiedSCT;
    .locals 2

    new-instance v0, Lorg/conscrypt/ct/VerifiedSCT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/ct/VerifiedSCT;-><init>(Lorg/conscrypt/ct/VerifiedSCT$Builder;Lorg/conscrypt/ct/VerifiedSCT$1;)V

    return-object v0
.end method

.method public setLogInfo(Lorg/conscrypt/ct/LogInfo;)Lorg/conscrypt/ct/VerifiedSCT$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->logInfo:Lorg/conscrypt/ct/LogInfo;

    return-object p0
.end method

.method public setStatus(Lorg/conscrypt/ct/VerifiedSCT$Status;)Lorg/conscrypt/ct/VerifiedSCT$Builder;
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/ct/VerifiedSCT$Builder;->status:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p0
.end method
