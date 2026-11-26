.class public final enum Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum APP_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum DOMAIN_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

.field public static final enum UNKNOWN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;


# instance fields
.field final id:I


# direct methods
.method private static synthetic $values()[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .locals 3

    sget-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->UNKNOWN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    sget-object v1, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->APP_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    sget-object v2, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->DOMAIN_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    filled-new-array {v0, v1, v2}, [Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->UNKNOWN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    new-instance v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "APP_OPT_IN"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->APP_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    new-instance v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-string v3, "DOMAIN_OPT_IN"

    invoke-direct {v0, v3, v1, v2}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->DOMAIN_OPT_IN:Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    invoke-static {}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->$values()[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->$VALUES:[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .locals 1

    const-class v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->$VALUES:[Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    invoke-virtual {v0}, [Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->id:I

    return p0
.end method
