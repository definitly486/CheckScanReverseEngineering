.class public final Lcom/google/android/gms/internal/play_billing/zzu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/play_billing/zzr;)Lcom/google/android/gms/internal/play_billing/zzdk;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzp;-><init>()V

    new-instance v1, Lzdc;

    invoke-direct {v1, v0}, Lzdc;-><init>(Lcom/google/android/gms/internal/play_billing/zzp;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzp;->b:Lzdc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;

    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzr;->zza(Lcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lohb;

    invoke-direct {v0, p0}, Lohb;-><init>(Ljava/lang/Throwable;)V

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzo;->g:Ly14;

    const/4 v2, 0x0

    iget-object v3, v1, Lzdc;->c:Lpdc;

    invoke-virtual {p0, v3, v2, v0}, Ly14;->S(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzo;->b(Lcom/google/android/gms/internal/play_billing/zzo;)V

    :cond_0
    return-object v1
.end method
