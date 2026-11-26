.class public final Lu1b;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;II)V
    .locals 0

    iput-object p1, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;-><init>()V

    iput p2, p0, Lu1b;->d:I

    iput p3, p0, Lu1b;->e:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->d()I

    move-result v0

    iget v1, p0, Lu1b;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lu1b;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->d()I

    move-result v0

    iget p0, p0, Lu1b;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->f()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lu1b;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zza(IILjava/lang/String;)I

    iget v0, p0, Lu1b;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lu1b;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu1b;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    .locals 1

    iget v0, p0, Lu1b;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zze(III)V

    iget v0, p0, Lu1b;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lu1b;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object p0

    return-object p0
.end method
