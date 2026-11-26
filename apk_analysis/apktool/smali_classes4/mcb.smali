.class public final Lmcb;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/zzcm;

.field public final synthetic h:Lvcb;


# direct methods
.method public constructor <init>(Lvcb;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/zzcm;)V
    .locals 0

    iput-object p2, p0, Lmcb;->f:Landroid/app/Activity;

    iput-object p3, p0, Lmcb;->g:Lcom/google/android/gms/internal/measurement/zzcm;

    iput-object p1, p0, Lmcb;->h:Lvcb;

    iget-object p1, p1, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lmcb;->h:Lvcb;

    iget-object v0, v0, Lvcb;->b:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v1, p0, Lmcb;->f:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzdd;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/zzdd;

    move-result-object v1

    iget-object v2, p0, Lmcb;->g:Lcom/google/android/gms/internal/measurement/zzcm;

    iget-wide v3, p0, Lcbb;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcp;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/zzdd;Lcom/google/android/gms/internal/measurement/zzcs;J)V

    return-void
.end method
