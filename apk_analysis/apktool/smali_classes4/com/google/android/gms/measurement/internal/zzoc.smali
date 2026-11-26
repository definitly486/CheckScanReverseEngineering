.class public final Lcom/google/android/gms/measurement/internal/zzoc;
.super Lqhb;
.source "SourceFile"


# instance fields
.field public c:Lcom/google/android/gms/internal/measurement/zzcl;

.field public d:Z

.field public final e:Lf9c;

.field public final f:Lc9c;

.field public final g:Lbm2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 0

    invoke-direct {p0, p1}, Lqhb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->d:Z

    new-instance p1, Lf9c;

    invoke-direct {p1, p0}, Lf9c;-><init>(Lcom/google/android/gms/measurement/internal/zzoc;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lf9c;

    new-instance p1, Lc9c;

    invoke-direct {p1, p0}, Lc9c;-><init>(Lcom/google/android/gms/measurement/internal/zzoc;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->f:Lc9c;

    new-instance p1, Lbm2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lbm2;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoc;->g:Lbm2;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoc;->c:Lcom/google/android/gms/internal/measurement/zzcl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoc;->c:Lcom/google/android/gms/internal/measurement/zzcl;

    :cond_0
    return-void
.end method

.method public final zze()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
