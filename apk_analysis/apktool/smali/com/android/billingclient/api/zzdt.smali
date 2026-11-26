.class final Lcom/android/billingclient/api/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Lq29;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Ld39;->b(Landroid/content/Context;)V

    invoke-static {}, Ld39;->a()Ld39;

    move-result-object p1

    sget-object v0, Lkx0;->e:Lkx0;

    invoke-virtual {p1, v0}, Ld39;->c(Lkx0;)Lu29;

    move-result-object p1

    const-string v0, "PLAY_BILLING_LIBRARY"

    const-string v1, "proto"

    new-instance v2, Liy2;

    invoke-direct {v2, v1}, Liy2;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/billingclient/api/zzds;

    invoke-direct {v1}, Lcom/android/billingclient/api/zzds;-><init>()V

    invoke-virtual {p1, v0, v2, v1}, Lu29;->a(Ljava/lang/String;Liy2;Ld29;)Lw29;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzdt;->zzb:Lq29;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzdt;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzdt;->zza:Z

    const-string v1, "BillingLogger"

    if-eqz v0, :cond_0

    const-string p0, "Skipping logging since initialization failed."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/billingclient/api/zzdt;->zzb:Lq29;

    invoke-static {p1}, Lry;->b(Ljava/lang/Object;)Lry;

    move-result-object p1

    invoke-interface {p0, p1}, Lq29;->a(Lry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "logging failed."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
