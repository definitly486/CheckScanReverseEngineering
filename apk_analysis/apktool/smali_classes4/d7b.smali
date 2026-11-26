.class public final Ld7b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/Runnable;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Ld7b;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Ld7b;->g:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ld7b;->g:Lcom/google/android/gms/internal/measurement/zzez;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v1, p0, Ld7b;->f:Ljava/lang/Runnable;

    new-instance v2, Ly6b;

    invoke-direct {v2, p0, v1}, Ly6b;-><init>(Ld7b;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcp;->retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/zzcv;)V

    return-void
.end method
