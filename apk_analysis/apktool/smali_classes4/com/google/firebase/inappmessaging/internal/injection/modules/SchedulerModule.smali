.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/SchedulerModule;
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
.method public providesComputeScheduler()Lhe7;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    sget-object p0, Lne7;->b:Lhe7;

    return-object p0
.end method

.method public providesIOScheduler()Lhe7;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    sget-object p0, Lne7;->c:Lhe7;

    return-object p0
.end method

.method public providesMainThreadScheduler()Lhe7;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p0

    return-object p0
.end method
