.class public Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# virtual methods
.method public final h()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->h()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    sget-object v1, Lb8b;->d:Lb8b;

    if-eq v0, v1, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {v0}, Lb8b;->b()Lb8b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    :cond_0
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->i()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-nez v0, :cond_0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object v1

    :cond_0
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {v0}, Lb8b;->d()V

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object p0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzec;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0
.end method
