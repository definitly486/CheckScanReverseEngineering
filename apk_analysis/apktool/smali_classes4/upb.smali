.class public final Lupb;
.super Lu1;
.source "SourceFile"


# instance fields
.field public final c:Ljb5;


# direct methods
.method public constructor <init>(Ljb5;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu1;-><init>(IB)V

    iput-object p1, p0, Lupb;->c:Ljb5;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lsc0;

    iget-object p0, p0, Lupb;->c:Ljb5;

    invoke-virtual {p0}, Ljb5;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lxva;->c()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "play-services-mlkit-barcode-scanning"

    goto :goto_0

    :cond_0
    const-string v1, "barcode-scanning"

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    move-result-object v1

    sget-object v2, Ls8c;->h:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    const-string v2, "com.google.mlkit.dynamite.barcode"

    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v3, 0xc306c20

    if-lt v2, v3, :cond_2

    :goto_1
    new-instance v2, Ls8c;

    invoke-direct {v2, v0, p1, v1}, Ls8c;-><init>(Landroid/content/Context;Lsc0;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    goto :goto_2

    :cond_2
    new-instance v2, Lwbc;

    invoke-direct {v2, v0, p1, v1}, Lwbc;-><init>(Landroid/content/Context;Lsc0;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    :goto_2
    new-instance v0, Lm1c;

    invoke-direct {v0, p0, p1, v2, v1}, Lm1c;-><init>(Ljb5;Lsc0;Lv3c;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V

    return-object v0
.end method
