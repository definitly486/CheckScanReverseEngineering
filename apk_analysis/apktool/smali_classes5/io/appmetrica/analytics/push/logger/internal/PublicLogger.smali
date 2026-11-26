.class public final Lio/appmetrica/analytics/push/logger/internal/PublicLogger;
.super Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "AppMetricaPush"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
