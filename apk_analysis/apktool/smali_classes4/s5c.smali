.class public final Ls5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzbh;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zznl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls5c;->b:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p3, p0, Ls5c;->c:Z

    iput-object p4, p0, Ls5c;->d:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p1, p0, Ls5c;->e:Lcom/google/android/gms/measurement/internal/zznl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ls5c;->e:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-nez v1, :cond_0

    iget-object p0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    const-string v0, "Discarding data. Failed to send event to service"

    invoke-static {p0, v0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Ls5c;->b:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Ls5c;->c:Z

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ls5c;->d:Lcom/google/android/gms/measurement/internal/zzbh;

    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zznl;->k(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznl;->g()V

    return-void
.end method
