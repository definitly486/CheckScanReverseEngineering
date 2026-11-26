.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

.field public final b:Ls9b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ls9b;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p3, Ls9b;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Null messageDefaultInstance"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->b:Ls9b;

    return-void

    :cond_2
    const-string p0, "Null containingTypeDefaultInstance"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0
.end method
