.class public final Lj9b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/zzcm;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcm;)V
    .locals 0

    iput-object p2, p0, Lj9b;->f:Landroid/os/Bundle;

    iput-object p3, p0, Lj9b;->g:Lcom/google/android/gms/internal/measurement/zzcm;

    iput-object p1, p0, Lj9b;->h:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lj9b;->h:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v1, p0, Lj9b;->f:Landroid/os/Bundle;

    iget-object v2, p0, Lj9b;->g:Lcom/google/android/gms/internal/measurement/zzcm;

    iget-wide v3, p0, Lcbb;->b:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcp;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzcs;J)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lj9b;->g:Lcom/google/android/gms/internal/measurement/zzcm;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcm;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
