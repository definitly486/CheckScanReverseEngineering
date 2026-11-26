.class public final Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private enabled:Z

.field private final sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepository;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->enabled:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->enabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    invoke-interface {p0}, Lcom/google/firebase/sessions/SharedSessionRepository;->appBackground()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->enabled:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    invoke-interface {p0}, Lcom/google/firebase/sessions/SharedSessionRepository;->appForeground()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onAppDelete()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;->enabled:Z

    return-void
.end method
