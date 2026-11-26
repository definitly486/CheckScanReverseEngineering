.class public final Lcom/google/android/gms/internal/play_billing/zzij;
.super Lcom/google/android/gms/internal/play_billing/zzgl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->c:Lcom/google/android/gms/internal/play_billing/zzgp;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzim;->l(Lcom/google/android/gms/internal/play_billing/zzim;)Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
