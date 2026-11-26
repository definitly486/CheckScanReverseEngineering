.class public Lorg/conscrypt/metrics/NoopStatsLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/metrics/StatsLog;


# static fields
.field private static final INSTANCE:Lorg/conscrypt/metrics/StatsLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/metrics/NoopStatsLog;

    invoke-direct {v0}, Lorg/conscrypt/metrics/NoopStatsLog;-><init>()V

    sput-object v0, Lorg/conscrypt/metrics/NoopStatsLog;->INSTANCE:Lorg/conscrypt/metrics/StatsLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/conscrypt/metrics/StatsLog;
    .locals 1

    sget-object v0, Lorg/conscrypt/metrics/NoopStatsLog;->INSTANCE:Lorg/conscrypt/metrics/StatsLog;

    return-object v0
.end method


# virtual methods
.method public countTlsHandshake(ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public reportCTVerificationResult(Lorg/conscrypt/ct/LogStore;Lorg/conscrypt/ct/VerificationResult;Lorg/conscrypt/ct/PolicyCompliance;Lorg/conscrypt/metrics/CertificateTransparencyVerificationReason;)V
    .locals 0

    return-void
.end method

.method public updateCTLogListStatusChanged(Lorg/conscrypt/ct/LogStore;)V
    .locals 0

    return-void
.end method
