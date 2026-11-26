.class public abstract Lcom/google/android/gms/internal/measurement/zzsy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzsx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/measurement/zzsd;
.end method

.method public b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzj(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsy;->a()Lcom/google/android/gms/internal/measurement/zzsd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsx;->zzj(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public final zzk(Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsy;->a()Lcom/google/android/gms/internal/measurement/zzsd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzsx;->zzk(Landroid/net/Uri;)V

    return-void
.end method

.method public final zzl(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzsy;->a()Lcom/google/android/gms/internal/measurement/zzsd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzsy;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzsy;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/measurement/zzsx;->zzl(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method
