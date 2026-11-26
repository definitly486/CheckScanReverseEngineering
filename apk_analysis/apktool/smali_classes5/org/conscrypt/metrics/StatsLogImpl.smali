.class public final Lorg/conscrypt/metrics/StatsLogImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/metrics/StatsLog;


# static fields
.field private static final INSTANCE:Lorg/conscrypt/metrics/StatsLog;

.field private static final sdkVersionBiggerThan32:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/metrics/StatsLogImpl;

    invoke-direct {v0}, Lorg/conscrypt/metrics/StatsLogImpl;-><init>()V

    sput-object v0, Lorg/conscrypt/metrics/StatsLogImpl;->INSTANCE:Lorg/conscrypt/metrics/StatsLog;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/conscrypt/Platform;->isSdkGreater(I)Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/metrics/StatsLogImpl;->sdkVersionBiggerThan32:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/conscrypt/metrics/StatsLog;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/StatsLogImpl;->INSTANCE:Lorg/conscrypt/metrics/StatsLog;

    return-object v0
.end method

.method private static logStoreStateToMetricsState(Lorg/conscrypt/ct/LogStore$State;)I
    .locals 2

    sget-object v0, Lorg/conscrypt/metrics/StatsLogImpl$1;->$SwitchMap$org$conscrypt$ct$LogStore$State:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method private static policyComplianceToMetrics(Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;)I
    .locals 1

    sget-object v0, Lorg/conscrypt/ct/PolicyCompliance;->COMPLY:Lorg/conscrypt/ct/PolicyCompliance;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/ct/VerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    sget-object p0, Lorg/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_SCTS:Lorg/conscrypt/ct/PolicyCompliance;

    if-eq p1, p0, :cond_3

    sget-object p0, Lorg/conscrypt/ct/PolicyCompliance;->NOT_ENOUGH_DIVERSE_SCTS:Lorg/conscrypt/ct/PolicyCompliance;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method private write(IIIIII)V
    .locals 0

    .line 41
    invoke-static/range {p1 .. p6}, Lorg/conscrypt/metrics/ConscryptStatsLog;->write(IIIIII)V

    return-void
.end method

.method private write(IIIIIIIII)V
    .locals 0

    .line 42
    invoke-static/range {p1 .. p9}, Lorg/conscrypt/metrics/ConscryptStatsLog;->write(IIIIIIIII)V

    return-void
.end method

.method private write(IZIIII[I)V
    .locals 0

    sget-boolean p0, Lorg/conscrypt/metrics/StatsLogImpl;->sdkVersionBiggerThan32:Z

    if-nez p0, :cond_0

    invoke-static {}, Lorg/conscrypt/metrics/ReflexiveStatsEvent;->newBuilder()Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0, p2}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeBoolean(Z)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0, p3}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0, p4}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0, p5}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0, p6}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->writeInt(I)Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;

    invoke-virtual {p0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->usePooledBuffer()V

    invoke-virtual {p0}, Lorg/conscrypt/metrics/ReflexiveStatsEvent$Builder;->build()Lorg/conscrypt/metrics/ReflexiveStatsEvent;

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/metrics/ReflexiveStatsLog;->write(Lorg/conscrypt/metrics/ReflexiveStatsEvent;)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p7}, Lorg/conscrypt/metrics/ConscryptStatsLog;->write(IZIIII[I)V

    return-void
.end method


# virtual methods
.method public countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    invoke-static {p2}, Lorg/conscrypt/metrics/Protocol;->forName(Ljava/lang/String;)Lorg/conscrypt/metrics/Protocol;

    move-result-object p2

    invoke-static {p3}, Lorg/conscrypt/metrics/CipherSuite;->forName(Ljava/lang/String;)Lorg/conscrypt/metrics/CipherSuite;

    move-result-object p3

    invoke-virtual {p2}, Lorg/conscrypt/metrics/Protocol;->getId()I

    move-result v3

    invoke-virtual {p3}, Lorg/conscrypt/metrics/CipherSuite;->getId()I

    move-result v4

    long-to-int v5, p4

    invoke-static {}, Lorg/conscrypt/Platform;->getStatsSource()Lorg/conscrypt/metrics/Source;

    move-result-object p2

    invoke-virtual {p2}, Lorg/conscrypt/metrics/Source;->getId()I

    move-result v6

    invoke-static {}, Lorg/conscrypt/Platform;->getUids()[I

    move-result-object v7

    const/16 v1, 0x13d

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/metrics/StatsLogImpl;->write(IZIIII[I)V

    return-void
.end method

.method public reportCTVerificationResult(Lorg/conscrypt/ct/LogStore;Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;)V
    .locals 22

    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->NOT_FOUND:Lorg/conscrypt/ct/LogStore$State;

    if-eq v0, v1, :cond_3

    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->MALFORMED:Lorg/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->NON_COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v3, 0x3dd

    const/4 v4, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lorg/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    sget-object v1, Lorg/conscrypt/ct/LogStore$State;->COMPLIANT:Lorg/conscrypt/ct/LogStore$State;

    if-ne v0, v1, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/conscrypt/metrics/StatsLogImpl;->policyComplianceToMetrics(Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;)I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getCompatVersion()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getMajorVersion()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Lorg/conscrypt/ct/LogStore;->getMinorVersion()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lorg/conscrypt/ct/VerificationResult;->numCertSCTs()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lorg/conscrypt/ct/VerificationResult;->numOCSPSCTs()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lorg/conscrypt/ct/VerificationResult;->numTlsSCTs()I

    move-result v21

    const/16 v13, 0x3dd

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;->getId()I

    move-result v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v13, 0x3dd

    const/4 v14, 0x5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v21}, Lorg/conscrypt/metrics/StatsLogImpl;->write(IIIIIIIII)V

    return-void
.end method

.method public updateCTLogListStatusChanged(Lorg/conscrypt/ct/LogStore;)V
    .locals 8

    invoke-interface {p1}, Lorg/conscrypt/ct/LogStore;->getState()Lorg/conscrypt/ct/LogStore$State;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/metrics/StatsLogImpl;->logStoreStateToMetricsState(Lorg/conscrypt/ct/LogStore$State;)I

    move-result v3

    invoke-interface {p1}, Lorg/conscrypt/ct/LogStore;->getCompatVersion()I

    move-result v4

    invoke-interface {p1}, Lorg/conscrypt/ct/LogStore;->getMinCompatVersionAvailable()I

    move-result v5

    invoke-interface {p1}, Lorg/conscrypt/ct/LogStore;->getMajorVersion()I

    move-result v6

    invoke-interface {p1}, Lorg/conscrypt/ct/LogStore;->getMinorVersion()I

    move-result v7

    const/16 v2, 0x3a6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/metrics/StatsLogImpl;->write(IIIIII)V

    return-void
.end method
