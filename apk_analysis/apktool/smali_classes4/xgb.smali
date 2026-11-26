.class public final Lxgb;
.super Lr2b;
.source "SourceFile"


# instance fields
.field public final b:Lwhb;

.field public c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwhb;

    invoke-direct {v0, p1}, Lwhb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    iput-object v0, p0, Lxgb;->b:Lwhb;

    invoke-virtual {p0}, Lxgb;->a()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p1

    iput-object p1, p0, Lxgb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;
    .locals 1

    iget-object p0, p0, Lxgb;->b:Lwhb;

    invoke-virtual {p0}, Lwhb;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwhb;->a()Lu3b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzq()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lxgb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lxgb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zza()B

    move-result v0

    iget-object v1, p0, Lxgb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lxgb;->a()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v1

    iput-object v1, p0, Lxgb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return p0
.end method
