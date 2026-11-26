.class public final Lio/appmetrica/analytics/push/logger/internal/DebugLogger;
.super Lio/appmetrica/analytics/logger/common/BaseDebugLogger;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/push/logger/internal/DebugLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/logger/internal/DebugLogger;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/logger/internal/DebugLogger;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/logger/internal/DebugLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/DebugLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "AppMetricaPushDebug"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/logger/common/BaseDebugLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method
