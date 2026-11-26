.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# static fields
.field private static final TRANSPORT_NAME:Ljava/lang/String; = "FIREBASE_INAPPMESSAGING"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lq29;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->lambda$providesMetricsLoggerClient$1(Lq29;[B)V

    return-void
.end method

.method public static synthetic b([B)[B
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->lambda$providesMetricsLoggerClient$0([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$providesMetricsLoggerClient$0([B)[B
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$providesMetricsLoggerClient$1(Lq29;[B)V
    .locals 0

    invoke-static {p1}, Lry;->b(Ljava/lang/Object;)Lry;

    move-result-object p1

    invoke-interface {p0, p1}, Lq29;->a(Lry;)V

    return-void
.end method

.method public static providesMetricsLoggerClient(Lcom/google/firebase/FirebaseApp;Lt29;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;
    .locals 8
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    new-instance v0, Ldc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ldc;-><init>(I)V

    invoke-interface {p1, v0}, Lt29;->b(Ldc;)Lw29;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    new-instance v1, Ldi;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Ldi;-><init>(Ljava/lang/Object;I)V

    move-object v3, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;-><init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
