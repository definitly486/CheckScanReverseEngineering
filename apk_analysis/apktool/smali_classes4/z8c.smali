.class public final Lz8c;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzp;II)V
    .locals 0

    iput-object p1, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;-><init>()V

    iput p2, p0, Lz8c;->d:I

    iput p3, p0, Lz8c;->e:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->d()I

    move-result v0

    iget v1, p0, Lz8c;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lz8c;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->d()I

    move-result v0

    iget p0, p0, Lz8c;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->f()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lz8c;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzf;->zza(IILjava/lang/String;)I

    iget v0, p0, Lz8c;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lz8c;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz8c;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    .locals 1

    iget v0, p0, Lz8c;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzf;->zzc(III)V

    iget v0, p0, Lz8c;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lz8c;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    move-result-object p0

    return-object p0
.end method
