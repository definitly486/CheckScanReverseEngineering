.class public final Lvcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lpbb;

    invoke-direct {v0, p0, p2, p1}, Lpbb;-><init>(Lvcb;Landroid/os/Bundle;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lucb;

    invoke-direct {v0, p0, p1}, Lucb;-><init>(Lvcb;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lhcb;

    invoke-direct {v0, p0, p1}, Lhcb;-><init>(Lvcb;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lacb;

    invoke-direct {v0, p0, p1}, Lacb;-><init>(Lvcb;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcm;-><init>()V

    new-instance v1, Lmcb;

    invoke-direct {v1, p0, p1, v0}, Lmcb;-><init>(Lvcb;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzcm;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcm;->zze(J)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lvbb;

    invoke-direct {v0, p0, p1}, Lvbb;-><init>(Lvcb;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ln5b;

    invoke-direct {v0, p0, p1}, Ln5b;-><init>(Lvcb;Landroid/app/Activity;)V

    iget-object p0, p0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzez;->a(Lcbb;)V

    return-void
.end method
