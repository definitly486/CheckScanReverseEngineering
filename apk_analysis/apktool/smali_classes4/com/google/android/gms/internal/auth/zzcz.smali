.class public final Lcom/google/android/gms/internal/auth/zzcz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcz;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/auth/zzcz;->d:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/auth/zzcz;->e:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzcz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/auth/zzcz;->d:Z

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/auth/zzcz;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcz;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/auth/zzcz;->e:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;ZZ)V

    return-object v0

    :cond_0
    const-string p0, "Cannot set GServices prefix and skip GServices"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;
    .locals 0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-instance p3, Lm2b;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-instance p3, Le2b;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v0, Lj2b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzhy;)Lcom/google/android/gms/internal/auth/zzdc;
    .locals 0

    new-instance p1, Lp2b;

    const-string p3, "getTokenRefactor__blocked_packages"

    invoke-direct {p1, p0, p3, p2}, Lcom/google/android/gms/internal/auth/zzdc;-><init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method
