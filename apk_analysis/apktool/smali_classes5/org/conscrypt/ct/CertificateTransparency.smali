.class public Lorg/conscrypt/ct/CertificateTransparency;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private logStore:Lorg/conscrypt/ct/LogStore;

.field private policy:Lorg/conscrypt/ct/Policy;

.field private statsLog:Lorg/conscrypt/metrics/StatsLog;

.field private verifier:Lorg/conscrypt/ct/Verifier;


# direct methods
.method public constructor <init>(Lorg/conscrypt/ct/LogStore;Lorg/conscrypt/ct/Policy;Lorg/conscrypt/ct/Verifier;Lorg/conscrypt/metrics/StatsLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/conscrypt/ct/CertificateTransparency;->logStore:Lorg/conscrypt/ct/LogStore;

    iput-object p2, p0, Lorg/conscrypt/ct/CertificateTransparency;->policy:Lorg/conscrypt/ct/Policy;

    iput-object p3, p0, Lorg/conscrypt/ct/CertificateTransparency;->verifier:Lorg/conscrypt/ct/Verifier;

    iput-object p4, p0, Lorg/conscrypt/ct/CertificateTransparency;->statsLog:Lorg/conscrypt/metrics/StatsLog;

    return-void
.end method


# virtual methods
.method public checkCT(Ljava/util/List;[B[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/conscrypt/ct/CertificateTransparency;->logStore:Lorg/conscrypt/ct/LogStore;

    invoke-interface {v0}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lorg/conscrypt/ct/CertificateTransparency;->statsLog:Lorg/conscrypt/metrics/StatsLog;

    iget-object p2, p0, Lorg/conscrypt/ct/CertificateTransparency;->logStore:Lorg/conscrypt/ct/LogStore;

    invoke-virtual {p0, p4}, Lorg/conscrypt/ct/CertificateTransparency;->reasonCTVerificationRequired(Ljava/lang/String;)Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, p3, p0}, Lorg/conscrypt/metrics/StatsLog;->reportCTVerificationResult(Lorg/conscrypt/ct/LogStore;Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ct/CertificateTransparency;->verifier:Lorg/conscrypt/ct/Verifier;

    invoke-virtual {v0, p1, p3, p2}, Lorg/conscrypt/ct/Verifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lorg/conscrypt/ct/VerificationResult;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object p3, p0, Lorg/conscrypt/ct/CertificateTransparency;->policy:Lorg/conscrypt/ct/Policy;

    invoke-interface {p3, p2, p1}, Lorg/conscrypt/ct/Policy;->doesResultConformToPolicy(Lorg/conscrypt/ct/VerificationResult;Ljava/security/cert/X509Certificate;)Lorg/conscrypt/ct/PolicyCompliance;

    move-result-object p1

    iget-object p3, p0, Lorg/conscrypt/ct/CertificateTransparency;->statsLog:Lorg/conscrypt/metrics/StatsLog;

    iget-object v0, p0, Lorg/conscrypt/ct/CertificateTransparency;->logStore:Lorg/conscrypt/ct/LogStore;

    invoke-virtual {p0, p4}, Lorg/conscrypt/ct/CertificateTransparency;->reasonCTVerificationRequired(Ljava/lang/String;)Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object p0

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/conscrypt/metrics/StatsLog;->reportCTVerificationResult(Lorg/conscrypt/ct/LogStore;Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;)V

    sget-object p0, Lorg/conscrypt/ct/PolicyCompliance;->COMPLY:Lorg/conscrypt/ct/PolicyCompliance;

    if-ne p1, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Certificate chain does not conform to required transparency policy: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCTVerificationRequired(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reasonCTVerificationRequired(Ljava/lang/String;)Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;
    .locals 0

    invoke-static {p1}, Lorg/conscrypt/Platform;->reasonCTVerificationRequired(Ljava/lang/String;)Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;

    move-result-object p0

    return-object p0
.end method
