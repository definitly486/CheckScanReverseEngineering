.class public final Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;
.super Lio/appmetrica/analytics/logger/common/BaseDebugLogger;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;

    invoke-direct {v0}, Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/DebugLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "AppMetricaDebug"

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/logger/common/BaseDebugLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dumpJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p2, "Exception during dumping JSONObject"

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/logger/common/BaseDebugLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
