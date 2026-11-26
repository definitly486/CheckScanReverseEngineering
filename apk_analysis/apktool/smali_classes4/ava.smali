.class public final Lava;
.super Lcom/google/android/gms/internal/fido/zzat;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/android/gms/internal/fido/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzat;II)V
    .locals 0

    iput-object p1, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzat;-><init>()V

    iput p2, p0, Lava;->d:I

    iput p3, p0, Lava;->e:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->d()I

    move-result v0

    iget v1, p0, Lava;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lava;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->d()I

    move-result v0

    iget p0, p0, Lava;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzaq;->f()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lava;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/fido/zzam;->zza(IILjava/lang/String;)I

    iget v0, p0, Lava;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lava;->e:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lava;->zzf(II)Lcom/google/android/gms/internal/fido/zzat;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/fido/zzat;
    .locals 1

    iget v0, p0, Lava;->e:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/fido/zzam;->zze(III)V

    iget v0, p0, Lava;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lava;->f:Lcom/google/android/gms/internal/fido/zzat;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzat;->zzf(II)Lcom/google/android/gms/internal/fido/zzat;

    move-result-object p0

    return-object p0
.end method
