.class public final Lcom/google/android/gms/internal/play_billing/zzv;
.super Lcom/google/android/gms/internal/play_billing/zzo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzo;-><init>()V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/play_billing/zzv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final zzd(Ljava/lang/Object;)Z
    .locals 2

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzo;->g:Ly14;

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzo;->h:Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Ly14;->S(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzo;->b(Lcom/google/android/gms/internal/play_billing/zzo;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
