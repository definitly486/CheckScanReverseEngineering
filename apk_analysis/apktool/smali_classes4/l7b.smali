.class public final Ll7b;
.super Lf7b;
.source "SourceFile"


# virtual methods
.method public final a(Lgnb;Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls9b;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    iget-object v0, p0, Ls9b;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    iget p0, p0, Ls9b;->b:I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ld6b;

    add-long v2, v0, v0

    const/16 p2, 0x3f

    shr-long/2addr v0, p2

    xor-long/2addr v0, v2

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    return-void

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    return-void

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    return-void

    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    return-void

    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    return-void

    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    return-void

    :pswitch_6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    return-void

    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Llgb;->c:Llgb;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object p2

    check-cast p1, Ld6b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V

    return-void

    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Llgb;->c:Llgb;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object p2

    check-cast p1, Ld6b;

    invoke-virtual {p1, p0, v0, p2}, Ld6b;->a(ILjava/lang/Object;Ljib;)V

    return-void

    :pswitch_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzp(ILjava/lang/String;)V

    return-void

    :pswitch_a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd(IZ)V

    return-void

    :pswitch_b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    return-void

    :pswitch_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    return-void

    :pswitch_d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    return-void

    :pswitch_e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    return-void

    :pswitch_f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    return-void

    :pswitch_10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    return-void

    :pswitch_11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ld6b;

    iget-object p1, p1, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
