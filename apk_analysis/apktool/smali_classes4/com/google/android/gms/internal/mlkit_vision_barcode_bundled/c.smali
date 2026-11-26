.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljib;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

.field public final b:Lzd3;

.field public final c:Z


# direct methods
.method public constructor <init>(Lzd3;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V
    .locals 1

    sget-object v0, Lr7b;->a:Ll7b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->b:Lzd3;

    instance-of p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0}, Lb8b;->f()Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->b:Lzd3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzh()V

    sget-object p0, Lr7b;->a:Ll7b;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0}, Lb8b;->d()V

    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->c:Z

    if-eqz p0, :cond_0

    sget-object p0, Lr7b;->a:Ll7b;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;[BIILa2b;)V
    .locals 16

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v3

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->a()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    :cond_0
    move-object v6, v1

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-boolean v3, v1, Lb8b;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lb8b;->b()Lb8b;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    :cond_1
    move-object v7, v1

    move/from16 v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v0, v4, :cond_b

    invoke-static {v2, v0, v5}, Lc2b;->g([BILa2b;)I

    move-result v3

    iget v0, v5, La2b;->a:I

    iget-object v9, v5, La2b;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    const/16 v10, 0xb

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    const/4 v13, 0x2

    if-eq v0, v10, :cond_4

    and-int/lit8 v10, v0, 0x7

    if-ne v10, v13, :cond_3

    ushr-int/lit8 v1, v0, 0x3

    invoke-virtual {v9, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    sget-object v1, Llgb;->c:Llgb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object v1

    invoke-interface {v1}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lc2b;->l(Ljava/lang/Object;Ljib;[BIILa2b;)I

    move-result v3

    invoke-interface {v1, v0}, Ljib;->b(Ljava/lang/Object;)V

    iput-object v0, v5, La2b;->c:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->b:Ls9b;

    invoke-virtual {v7, v1, v0}, Lb8b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)V

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v0, v3

    move-object v1, v9

    goto :goto_0

    :cond_2
    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lc2b;->f(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;La2b;)I

    move-result v0

    move-object v2, v1

    move-object v1, v9

    move v4, v3

    goto :goto_0

    :cond_3
    invoke-static {v0, v2, v3, v4, v5}, Lc2b;->m(I[BIILa2b;)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v10, v0

    move-object v14, v1

    const/4 v15, 0x0

    :goto_1
    if-ge v3, v4, :cond_9

    invoke-static {v2, v3, v5}, Lc2b;->g([BILa2b;)I

    move-result v3

    iget v0, v5, La2b;->a:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v8, v0, 0x7

    if-eq v1, v13, :cond_7

    const/4 v13, 0x3

    if-eq v1, v13, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v14, :cond_6

    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    sget-object v1, Llgb;->c:Llgb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object v1

    invoke-interface {v1}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lc2b;->l(Ljava/lang/Object;Ljib;[BIILa2b;)I

    move-result v3

    invoke-interface {v1, v0}, Ljib;->b(Ljava/lang/Object;)V

    iput-object v0, v5, La2b;->c:Ljava/lang/Object;

    iget-object v1, v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->b:Ls9b;

    invoke-virtual {v7, v1, v0}, Lb8b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)V

    :goto_2
    const/4 v13, 0x2

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    if-ne v8, v1, :cond_8

    invoke-static {v2, v3, v5}, Lc2b;->a([BILa2b;)I

    move-result v3

    iget-object v0, v5, La2b;->c:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    goto :goto_2

    :cond_7
    if-nez v8, :cond_8

    invoke-static {v2, v3, v5}, Lc2b;->g([BILa2b;)I

    move-result v3

    iget v10, v5, La2b;->a:I

    invoke-virtual {v9, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    move-result-object v14

    goto :goto_2

    :cond_8
    :goto_3
    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    invoke-static {v0, v2, v3, v4, v5}, Lc2b;->m(I[BIILa2b;)I

    move-result v3

    goto :goto_2

    :cond_9
    move v0, v3

    if-eqz v15, :cond_a

    shl-int/lit8 v1, v10, 0x3

    const/4 v3, 0x2

    or-int/2addr v1, v3

    invoke-virtual {v6, v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->b(ILjava/lang/Object;)V

    :cond_a
    move-object v1, v14

    goto/16 :goto_0

    :cond_b
    if-ne v0, v4, :cond_c

    return-void

    :cond_c
    const-string v0, "Failed to parse the message."

    invoke-static {v0}, Lnz0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    iget-object v1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->c:Z

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0, p1}, Lb8b;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)I
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->c:Z

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lb8b;->a:Lvib;

    invoke-virtual {p0}, Lyjb;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final g(Ljava/lang/Object;Lgnb;)V
    .locals 4

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0}, Lb8b;->c()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhg;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzg()Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zzf()Z

    instance-of v2, v0, Lfcb;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza()I

    move-result v1

    check-cast v0, Lfcb;

    iget-object v0, v0, Lfcb;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ld6b;

    invoke-virtual {v2, v1, v0}, Ld6b;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;->zza()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ld6b;

    invoke-virtual {v2, v1, v0}, Ld6b;->b(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "Found invalid MessageSet item."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->a:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->b:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    move-object v2, p2

    check-cast v2, Ld6b;

    invoke-virtual {v2, v0, v1}, Ld6b;->b(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)I
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzb()I

    move-result v0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->c:Z

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-object p0, p0, Lb8b;->a:Lvib;

    iget p1, p0, Lyjb;->c:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Lyjb;->d(I)Lajb;

    move-result-object v3

    invoke-static {v3}, Lb8b;->i(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyjb;->b()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lb8b;->i(Ljava/util/Map$Entry;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/c;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzZ()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    move-result-object p0

    return-object p0
.end method
