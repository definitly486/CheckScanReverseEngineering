.class public Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private final foregroundSubject:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    new-instance v0, Lhi0;

    invoke-direct {v0}, Lhi0;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lhi0;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->lambda$onActivityPaused$0()V

    return-void
.end method

.method private synthetic lambda$onActivityPaused$0()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    return-void
.end method


# virtual methods
.method public foregroundFlowable()Lkw1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lhi0;

    sget-object v0, Ln00;->BUFFER:Ln00;

    invoke-virtual {p0, v0}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object p0

    invoke-virtual {p0}, Lgg3;->d()Lkh3;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    new-instance v0, Lka;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lka;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    iget-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "went foreground"

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lhi0;

    const-string p1, "ON_FOREGROUND"

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
