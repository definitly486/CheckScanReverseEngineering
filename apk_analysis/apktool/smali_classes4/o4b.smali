.class public abstract Lo4b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# virtual methods
.method public final clear()V
    .locals 0

    check-cast p0, Lcya;

    iget-object p0, p0, Lcya;->b:Lyxa;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzs()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p0, Lcya;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcya;->b:Lyxa;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzx(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p0, Lcya;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcya;->b:Lyxa;

    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzy(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    check-cast p0, Lcya;

    iget-object p0, p0, Lcya;->b:Lyxa;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzh()I

    move-result p0

    return p0
.end method
