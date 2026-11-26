.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/RateLimitModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# static fields
.field private static final APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY:Ljava/lang/String; = "APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAppForegroundRateLimit()Lcom/google/firebase/inappmessaging/model/RateLimit;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
    .end annotation

    invoke-static {}, Lcom/google/firebase/inappmessaging/model/RateLimit;->builder()Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;->setLimit(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;

    move-result-object p0

    const-string v0, "APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY"

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;->setLimiterKey(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;

    move-result-object p0

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;->setTimeToLiveMillis(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;->build()Lcom/google/firebase/inappmessaging/model/RateLimit;

    move-result-object p0

    return-object p0
.end method
