.class public final Le8b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzcm;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Lcom/google/android/gms/internal/measurement/zzcm;)V
    .locals 0

    iput-object p2, p0, Le8b;->f:Lcom/google/android/gms/internal/measurement/zzcm;

    iput-object p1, p0, Le8b;->g:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Le8b;->g:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object p0, p0, Le8b;->f:Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzcp;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/zzcs;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Le8b;->f:Lcom/google/android/gms/internal/measurement/zzcm;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzcm;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
