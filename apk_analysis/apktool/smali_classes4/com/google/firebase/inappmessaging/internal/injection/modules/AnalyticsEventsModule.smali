.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/AnalyticsEventsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAnalyticsConnectorEvents(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)Lkw1;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AnalyticsListener;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;",
            ")",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->getAnalyticsEventsFlowable()Lkw1;

    move-result-object p0

    return-object p0
.end method

.method public providesAnalyticsEventsManager(Lcom/google/firebase/analytics/connector/AnalyticsConnector;)Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    new-instance p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;-><init>(Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V

    return-object p0
.end method
