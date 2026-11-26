.class public final Ld6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgnb;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a:Ld6b;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljib;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    const/4 v0, 0x3

    iget-object p0, p0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzr(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a:Ld6b;

    invoke-interface {p3, p2, v0}, Ljib;->g(Ljava/lang/Object;Lgnb;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzr(II)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    iget-object p0, p0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzo(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzn(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V

    return-void
.end method
