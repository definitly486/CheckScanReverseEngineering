.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljib;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljib<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:[I

.field public static final m:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Lzd3;

.field public final k:Lf7b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l:[I

    :try_start_0
    new-instance v0, Lvkb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;[IIILzd3;Ll7b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->d:I

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->g:[I

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->h:I

    iput p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->i:I

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->j:Lzd3;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k:Lf7b;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    return-void
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " for "

    const-string v3, " not found. Known fields are "

    const-string v4, "Field "

    invoke-static {v4, p1, v2, p0, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->i()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static r(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->a()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    :cond_0
    return-object v0
.end method

.method public static s(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static u(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static w(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 14

    const/4 v6, 0x0

    const v7, 0xfffff

    move v3, v6

    move v8, v3

    move v2, v7

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->h:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->g:[I

    aget v4, v4, v8

    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget v10, v9, v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v7

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v2, v12

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v13, v3

    move v3, v2

    move v2, v4

    move v4, v13

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_2
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_8

    const/16 v12, 0x11

    if-eq v9, v12, :cond_8

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_5

    const/16 v5, 0x44

    if-eq v9, v5, :cond_5

    const/16 v5, 0x31

    if-eq v9, v5, :cond_6

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    div-int/lit8 v4, v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    add-int/2addr v4, v4

    aget-object v0, v0, v4

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    const/4 v0, 0x0

    throw v0

    :cond_5
    invoke-virtual {p0, v10, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljib;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_6
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    move v9, v6

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Ljib;->a(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljib;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {v0}, Lb8b;->f()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_4
    return v6

    :cond_c
    return v5
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->g()V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->e()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzc()V

    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzb()V

    goto :goto_1

    :cond_2
    aget v0, v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljib;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljib;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->j:Lzd3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzh()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k:Lf7b;

    check-cast p0, Ll7b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0}, Lb8b;->d()V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v2

    aget v5, v1, v0

    int-to-long v8, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v7, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lqlb;->h(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lqlb;->h(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-static {p1, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)V

    :cond_2
    invoke-static {v8, v9, p1, v1}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_4

    if-lez v4, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v1

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-gtz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-static {v8, v9, p1, v2}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->i(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object v1, Lqlb;->c:Ldta;

    iget-object v6, v1, Ldta;->a:Lsun/misc/Unsafe;

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_8
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_9
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lqlb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_a
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_b
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_c
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_e
    move-object v7, p1

    invoke-virtual {p0, v0, v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->i(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_f
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lqlb;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_10
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lqlb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_11
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_12
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lqlb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_13
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lqlb;->h(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_14
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lqlb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_15
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lqlb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_16
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lqlb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->l(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_17
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object v6, Lqlb;->c:Ldta;

    invoke-virtual {v6, p2, v8, v9}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ldta;->i(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v7

    goto/16 :goto_0

    :cond_7
    move-object v7, p1

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->r(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz p0, :cond_8

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void

    :cond_9
    move-object v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mutating immutable message: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;[BIILa2b;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->q(Ljava/lang/Object;[BIIILa2b;)I

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v5, v6}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {v2, p2, v5, v6}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v3, v2, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v5, v6}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, p2, v5, v6}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v5, v6}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, p2, v5, v6}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    iget-object v2, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_3
    return v0

    :cond_3
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz p0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    invoke-virtual {p0, p1}, Lb8b;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v4, v5}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v4, v5}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lqlb;->c:Ldta;

    invoke-virtual {v2, p1, v4, v5}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz p0, :cond_3

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-object p0, p0, Lb8b;->a:Lvib;

    invoke-virtual {p0}, Lyjb;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final g(Ljava/lang/Object;Lgnb;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-object v3, v2, Lb8b;->a:Lvib;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lb8b;->c()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    const v9, 0xfffff

    move v4, v9

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v11, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v12, v11

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k:Lf7b;

    if-ge v2, v12, :cond_e

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v14

    aget v15, v11, v2

    const/16 v16, 0x0

    const/16 v7, 0x11

    const/16 v17, 0x1

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    if-gt v14, v7, :cond_3

    add-int/lit8 v7, v2, 0x2

    aget v7, v11, v7

    move-object/from16 v18, v3

    and-int v3, v7, v9

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    int-to-long v4, v3

    invoke-virtual {v10, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_2
    move v4, v3

    :cond_2
    ushr-int/lit8 v3, v7, 0x14

    shl-int v3, v17, v3

    move v7, v5

    move v5, v3

    move v3, v4

    move v4, v7

    move-object/from16 v7, v18

    goto :goto_3

    :cond_3
    move-object/from16 v18, v3

    move v3, v4

    move v4, v5

    move-object/from16 v7, v18

    const/4 v5, 0x0

    :goto_3
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v9

    move-object/from16 v9, v18

    check-cast v9, Ls9b;

    iget v9, v9, Ls9b;->b:I

    if-gt v9, v15, :cond_6

    invoke-virtual {v13, v6, v7}, Lf7b;->a(Lgnb;Ljava/util/Map$Entry;)V

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    :goto_4
    move/from16 v9, v19

    goto :goto_3

    :cond_4
    move-object/from16 v7, v16

    goto :goto_4

    :cond_5
    move/from16 v19, v9

    :cond_6
    and-int v9, v12, v19

    int-to-long v12, v9

    const/16 v9, 0x3f

    packed-switch v14, :pswitch_data_0

    :cond_7
    :goto_5
    const/4 v14, 0x0

    goto/16 :goto_c

    :pswitch_0
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v9

    move-object v10, v6

    check-cast v10, Ld6b;

    invoke-virtual {v10, v15, v5, v9}, Ld6b;->a(ILjava/lang/Object;Ljib;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v5, v6

    check-cast v5, Ld6b;

    add-long v12, v10, v10

    shr-long v9, v10, v9

    xor-long/2addr v9, v12

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    add-int v10, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v10

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    goto/16 :goto_5

    :pswitch_6
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    goto/16 :goto_5

    :pswitch_7
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v9

    move-object v10, v6

    check-cast v10, Ld6b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iget-object v10, v10, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v10, v15, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_8

    check-cast v5, Ljava/lang/String;

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzp(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v9, v6

    check-cast v9, Ld6b;

    iget-object v9, v9, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v9, v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {v0, v15, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v1, v12, v13}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    goto/16 :goto_5

    :cond_9
    div-int/lit8 v2, v2, 0x3

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    add-int/2addr v2, v2

    aget-object v0, v0, v2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    throw v16

    :pswitch_13
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v6

    check-cast v13, Ld6b;

    invoke-virtual {v13, v5, v12, v10}, Ld6b;->a(ILjava/lang/Object;Ljib;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :pswitch_14
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move/from16 v14, v17

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->b(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_15
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_16
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->B(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_17
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->A(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_18
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->u(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_19
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->c(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->s(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1b
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->v(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1c
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->w(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1d
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->y(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1e
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->d(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_1f
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->z(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_20
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->x(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_21
    move/from16 v14, v17

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->t(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_5

    :pswitch_22
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->b(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_23
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_24
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->B(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_25
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->A(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_26
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->u(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_27
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->c(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_28
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v6

    check-cast v10, Ld6b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v14, v11, :cond_7

    iget-object v11, v10, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v11, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :pswitch_29
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v14, 0x0

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v14, v11, :cond_7

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Ld6b;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iget-object v12, v12, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v12, v5, v11, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :pswitch_2a
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    move-object v10, v6

    check-cast v10, Ld6b;

    iget-object v10, v10, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    instance-of v11, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    if-eqz v11, :cond_b

    move-object v11, v9

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    const/4 v14, 0x0

    :goto_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v14, v12, :cond_7

    invoke-interface {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;->zza()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_a

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzp(ILjava/lang/String;)V

    goto :goto_a

    :cond_a
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v10, v5, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v14, v11, :cond_7

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v5, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzp(ILjava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :pswitch_2b
    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->s(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_2c
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->v(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_2d
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->w(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_2e
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->y(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_2f
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->d(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_30
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->z(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_31
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->x(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_32
    const/4 v14, 0x0

    aget v5, v11, v2

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v5, v9, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->t(ILjava/util/List;Lgnb;Z)V

    goto/16 :goto_c

    :pswitch_33
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v9

    move-object v10, v6

    check-cast v10, Ld6b;

    invoke-virtual {v10, v15, v5, v9}, Ld6b;->a(ILjava/lang/Object;Ljib;)V

    goto/16 :goto_c

    :pswitch_34
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    move-object v0, v6

    check-cast v0, Ld6b;

    add-long v12, v10, v10

    shr-long v9, v10, v9

    xor-long/2addr v9, v12

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto/16 :goto_c

    :pswitch_35
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    add-int v9, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v9

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    goto/16 :goto_c

    :pswitch_36
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v0, v6

    check-cast v0, Ld6b;

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    goto/16 :goto_c

    :pswitch_37
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto/16 :goto_c

    :pswitch_38
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    goto/16 :goto_c

    :pswitch_39
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzs(II)V

    goto/16 :goto_c

    :pswitch_3a
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    goto/16 :goto_c

    :pswitch_3b
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v9

    move-object v10, v6

    check-cast v10, Ld6b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iget-object v10, v10, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v10, v15, v5, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V

    goto/16 :goto_c

    :pswitch_3c
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_c

    check-cast v0, Ljava/lang/String;

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzp(ILjava/lang/String;)V

    goto/16 :goto_c

    :cond_c
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V

    goto/16 :goto_c

    :pswitch_3d
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v0, Lqlb;->c:Ldta;

    invoke-virtual {v0, v1, v12, v13}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzd(IZ)V

    goto/16 :goto_c

    :pswitch_3e
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto/16 :goto_c

    :pswitch_3f
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v0, v6

    check-cast v0, Ld6b;

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    goto :goto_c

    :pswitch_40
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzj(II)V

    goto :goto_c

    :pswitch_41
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v0, v6

    check-cast v0, Ld6b;

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto :goto_c

    :pswitch_42
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v0, v6

    check-cast v0, Ld6b;

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzu(IJ)V

    goto :goto_c

    :pswitch_43
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v0, Lqlb;->c:Ldta;

    invoke-virtual {v0, v1, v12, v13}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v0

    move-object v5, v6

    check-cast v5, Ld6b;

    iget-object v5, v5, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzf(II)V

    goto :goto_c

    :pswitch_44
    const/4 v14, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v0, Lqlb;->c:Ldta;

    invoke-virtual {v0, v1, v12, v13}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v9

    move-object v0, v6

    check-cast v0, Ld6b;

    iget-object v0, v0, Ld6b;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v0, v15, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzh(IJ)V

    :cond_d
    :goto_c
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    move v5, v4

    move/from16 v9, v19

    move v4, v3

    move-object v3, v7

    goto/16 :goto_1

    :cond_e
    move-object/from16 v18, v3

    const/16 v16, 0x0

    :goto_d
    if-eqz v3, :cond_10

    invoke-virtual {v13, v6, v3}, Lf7b;->a(Lgnb;Ljava/util/Map$Entry;)V

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_d

    :cond_f
    move-object/from16 v3, v16

    goto :goto_d

    :cond_10
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zzl(Lgnb;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final h(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v7, 0xfffff

    move v3, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v9, v5

    if-ge v2, v9, :cond_1d

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v10

    add-int/lit8 v11, v2, 0x2

    aget v12, v5, v2

    aget v5, v5, v11

    and-int v11, v5, v7

    const/16 v13, 0x11

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    if-gt v10, v13, :cond_2

    if-eq v11, v3, :cond_1

    if-ne v11, v7, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v11

    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v11

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v14, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v9, v7

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza()I

    move-result v11

    if-lt v10, v11, :cond_3

    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zzW:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdy;->zza()I

    :cond_3
    int-to-long v6, v9

    const/16 v16, 0x3f

    const/4 v9, 0x4

    const/16 v11, 0x8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->a(Ljib;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v7

    :goto_4
    add-int/2addr v8, v5

    goto/16 :goto_1a

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v6

    add-long v9, v6, v6

    shr-long v6, v6, v16

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    xor-long/2addr v6, v9

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v6

    :goto_5
    add-int/2addr v6, v5

    add-int/2addr v8, v6

    goto/16 :goto_1a

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v6

    add-int v7, v6, v6

    shr-int/lit8 v6, v6, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    xor-int/2addr v6, v7

    invoke-static {v6, v5, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v11, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v9, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v6

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6, v5, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    :goto_6
    add-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int/2addr v8, v7

    goto/16 :goto_1a

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->k(ILjava/lang/Object;Ljib;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto :goto_6

    :cond_4
    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzz(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v14, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v9, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v11, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->s(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->w(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v9, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v11, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_1a

    :pswitch_12
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v6, v2, 0x3

    iget-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    add-int/2addr v6, v6

    aget-object v6, v7, v6

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1a

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :pswitch_13
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v10, 0x0

    goto :goto_8

    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v9, v7, :cond_7

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    shl-int/lit8 v14, v12, 0x3

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v14

    add-int/2addr v14, v14

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->a(Ljib;)I

    move-result v11

    add-int/2addr v11, v14

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    add-int/2addr v8, v10

    goto/16 :goto_1a

    :pswitch_14
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_15
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->l(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_16
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v11

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v9

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_18
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_19
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->n(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1a
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v9

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v11

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1e
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->o(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_1f
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_20
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v9

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_21
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v11

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_6

    :pswitch_22
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8

    :goto_9
    const/4 v7, 0x0

    goto :goto_b

    :cond_8
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->m(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    :goto_a
    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    :cond_9
    :goto_b
    add-int/2addr v8, v7

    goto/16 :goto_1a

    :pswitch_23
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    goto :goto_9

    :cond_a
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->l(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto :goto_a

    :pswitch_24
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    goto :goto_9

    :cond_b
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto :goto_a

    :pswitch_27
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_9

    :cond_c
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->n(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto :goto_a

    :pswitch_28
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_9

    :cond_d
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    mul-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v9

    invoke-static {v9, v9, v7}, Lah;->b(III)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :pswitch_29
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    const/4 v9, 0x0

    goto :goto_f

    :cond_e
    shl-int/lit8 v9, v12, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v9

    mul-int/2addr v9, v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    if-eqz v12, :cond_f

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzex;->zza()I

    move-result v11

    invoke-static {v11, v11, v9}, Lah;->b(III)I

    move-result v9

    goto :goto_e

    :cond_f
    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->a(Ljib;)I

    move-result v11

    invoke-static {v11, v11, v9}, Lah;->b(III)I

    move-result v9

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_10
    :goto_f
    add-int/2addr v8, v9

    goto/16 :goto_1a

    :pswitch_2a
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_9

    :cond_11
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    mul-int/2addr v7, v6

    instance-of v9, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    if-eqz v9, :cond_13

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v6, :cond_9

    invoke-interface {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzey;->zza()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    if-eqz v11, :cond_12

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v10

    invoke-static {v10, v10, v7}, Lah;->b(III)I

    move-result v7

    goto :goto_11

    :cond_12
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzz(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v7

    move v7, v10

    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_13
    const/4 v9, 0x0

    :goto_12
    if-ge v9, v6, :cond_9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    if-eqz v11, :cond_14

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v10

    invoke-static {v10, v10, v7}, Lah;->b(III)I

    move-result v7

    goto :goto_13

    :cond_14
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzz(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v10, v7

    move v7, v10

    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :pswitch_2b
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    :goto_14
    const/4 v6, 0x0

    goto :goto_15

    :cond_15
    shl-int/lit8 v6, v12, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    add-int/2addr v6, v14

    mul-int/2addr v6, v5

    :goto_15
    add-int/2addr v8, v6

    goto/16 :goto_1a

    :pswitch_2c
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_9

    :cond_16
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_a

    :pswitch_2f
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_17

    goto/16 :goto_9

    :cond_17
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->o(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    goto/16 :goto_a

    :pswitch_30
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_18

    goto :goto_14

    :cond_18
    shl-int/lit8 v6, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->j(Ljava/util/List;)I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v7

    goto :goto_15

    :pswitch_31
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->a(Ljib;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    add-long v9, v5, v5

    shr-long v5, v5, v16

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    xor-long/2addr v5, v9

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v5

    :goto_16
    add-int/2addr v5, v0

    add-int/2addr v8, v5

    :cond_19
    :goto_17
    move-object/from16 v0, p0

    goto/16 :goto_1a

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v6, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    xor-int/2addr v5, v6

    invoke-static {v5, v0, v8}, Lah;->b(III)I

    move-result v8

    goto :goto_17

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v11, v8}, Lah;->b(III)I

    move-result v8

    :cond_1a
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1a

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v9, v8}, Lah;->b(III)I

    move-result v8

    goto :goto_18

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v5

    goto :goto_16

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5, v0, v8}, Lah;->b(III)I

    move-result v8

    goto :goto_17

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    :goto_19
    add-int/2addr v6, v5

    add-int/2addr v6, v0

    add-int/2addr v8, v6

    goto/16 :goto_17

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v6

    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->k(ILjava/lang/Object;Ljib;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    if-eqz v6, :cond_1b

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v6

    goto :goto_19

    :cond_1b
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzz(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_16

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v14, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v9, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v11, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzB(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v9, v8}, Lah;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v11, v8}, Lah;->b(III)I

    move-result v8

    :cond_1c
    :goto_1a
    add-int/lit8 v2, v2, 0x3

    const v7, 0xfffff

    goto/16 :goto_0

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->zza()I

    move-result v2

    add-int/2addr v2, v8

    iget-boolean v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz v0, :cond_20

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-object v1, v0, Lb8b;->a:Lvib;

    iget v1, v1, Lyjb;->c:I

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_1b
    iget-object v3, v0, Lb8b;->a:Lvib;

    if-ge v6, v1, :cond_1e

    invoke-virtual {v3, v6}, Lyjb;->d(I)Lajb;

    move-result-object v3

    iget-object v4, v3, Lajb;->b:Ljava/lang/Comparable;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    iget-object v3, v3, Lajb;->c:Ljava/lang/Object;

    invoke-static {v4, v3}, Lb8b;->a(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)I

    move-result v3

    add-int v17, v3, v17

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_1e
    invoke-virtual {v3}, Lyjb;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lb8b;->a(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)I

    move-result v1

    add-int v17, v1, v17

    goto :goto_1c

    :cond_1f
    add-int v2, v2, v17

    :cond_20
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget p0, p0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->p(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, p2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0, v6}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p1, p1, 0x2

    aget p0, v0, p1

    and-int/2addr p0, v3

    int-to-long p0, p0

    invoke-static {v1, p0, p1, p2}, Lqlb;->h(IJLjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v6}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final k(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lqlb;->h(IJLjava/lang/Object;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result p0

    and-int p1, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result p0

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_0
    invoke-static {p2, v0, v1}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v0, v1}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v0, v1}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-static {p2, v0, v1}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v1}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, v0, v1}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_a
    sget-object p0, Lqlb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->o(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p2, v0, v1}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p2, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p2, v0, v1}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p2, v0, v1}, Lqlb;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lqlb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->c(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lqlb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p2, v2, v3}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v6

    :cond_3
    return v5

    nop

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

.method public final n(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Lqlb;->e(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Ljava/lang/Object;[BIIILa2b;)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    move/from16 v1, p3

    const/4 v4, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    const v16, 0xfffff

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    const/16 v18, 0x0

    if-ge v1, v5, :cond_91

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_0

    invoke-static {v1, v3, v14, v6}, Lc2b;->h(I[BILa2b;)I

    move-result v14

    iget v1, v6, La2b;->a:I

    :cond_0
    move v6, v14

    move v14, v1

    ushr-int/lit8 v1, v14, 0x3

    const/16 p3, 0x3

    iget v11, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->d:I

    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->c:I

    if-le v1, v4, :cond_2

    div-int/lit8 v7, v7, 0x3

    if-lt v1, v3, :cond_1

    if-gt v1, v11, :cond_1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->t(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v11, v3

    goto :goto_2

    :cond_2
    if-lt v1, v3, :cond_3

    if-gt v1, v11, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->t(II)I

    move-result v4

    move v11, v4

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_2
    const-wide/16 v20, 0x0

    const/4 v4, -0x1

    if-ne v11, v4, :cond_4

    move/from16 v10, p5

    move-object/from16 v5, p6

    move/from16 v22, v4

    move v3, v6

    move/from16 v27, v9

    move-object/from16 v33, v12

    move-object v9, v13

    move-object/from16 v24, v15

    const/4 v6, 0x1

    const/4 v11, 0x0

    move v13, v1

    move v15, v14

    move-object v14, v2

    move-object/from16 v2, p2

    goto/16 :goto_53

    :cond_4
    and-int/lit8 v7, v14, 0x7

    add-int/lit8 v17, v11, 0x1

    aget v4, v12, v17

    const/16 v17, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->u(I)I

    move-result v3

    move/from16 v23, v1

    and-int v1, v4, v16

    move/from16 v24, v6

    int-to-long v5, v1

    const/high16 v25, 0x20000000

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    move-wide/from16 v27, v5

    const-string v6, ""

    const-string v29, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    const-string v30, "Protocol message had invalid UTF-8."

    const/16 v5, 0x11

    if-gt v3, v5, :cond_27

    add-int/lit8 v5, v11, 0x2

    aget v5, v12, v5

    ushr-int/lit8 v26, v5, 0x14

    shl-int v26, v17, v26

    and-int v5, v5, v16

    if-eq v5, v8, :cond_7

    move-object/from16 v33, v12

    move/from16 v12, v16

    move/from16 v35, v3

    move/from16 v34, v4

    if-eq v8, v12, :cond_5

    int-to-long v3, v8

    invoke-virtual {v13, v2, v3, v4, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    if-ne v5, v12, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    int-to-long v3, v5

    invoke-virtual {v13, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :goto_3
    move v9, v3

    move v12, v5

    goto :goto_4

    :cond_7
    move/from16 v35, v3

    move/from16 v34, v4

    move-object/from16 v33, v12

    move v12, v8

    :goto_4
    packed-switch v35, :pswitch_data_0

    move/from16 v3, p3

    if-ne v7, v3, :cond_8

    or-int v13, v9, v26

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v23, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v24

    const/16 v22, -0x1

    invoke-static/range {v3 .. v9}, Lc2b;->k(Ljava/lang/Object;Ljib;[BIIILa2b;)I

    move-result v4

    move-object v8, v5

    move-object v5, v3

    move-object v3, v9

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v6

    const v16, 0xfffff

    and-int v6, v6, v16

    int-to-long v6, v6

    invoke-virtual {v1, v2, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    move/from16 v5, p4

    move-object v6, v3

    move v1, v4

    move-object v3, v8

    move v7, v11

    move v8, v12

    move v9, v13

    move/from16 v4, v23

    goto/16 :goto_0

    :cond_8
    const/16 v22, -0x1

    move-object/from16 v8, p2

    move-object v1, v2

    move/from16 v5, v17

    move/from16 v2, v24

    move/from16 v24, v12

    move-object v12, v13

    move/from16 v13, v23

    move/from16 v23, v9

    move-object/from16 v9, p6

    goto/16 :goto_19

    :pswitch_0
    move-object/from16 v8, p2

    move-object/from16 v3, p6

    move/from16 v4, v24

    const/16 v22, -0x1

    if-nez v7, :cond_9

    or-int v9, v9, v26

    invoke-static {v8, v4, v3}, Lc2b;->j([BILa2b;)I

    move-result v7

    iget-wide v4, v3, La2b;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v5

    move-object v1, v13

    move/from16 v13, v23

    move-wide/from16 v3, v27

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v1, v7

    :goto_5
    move-object v3, v8

    :goto_6
    move v7, v11

    move v8, v12

    :goto_7
    move v4, v13

    goto/16 :goto_0

    :cond_9
    move-object v6, v3

    move-object v3, v13

    move/from16 v13, v23

    move-object v1, v2

    move v2, v4

    move/from16 v23, v9

    move/from16 v24, v12

    move/from16 v5, v17

    move-object v12, v3

    move-object v9, v6

    goto/16 :goto_19

    :pswitch_1
    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move v5, v9

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v4, v24

    move-wide/from16 v9, v27

    const/16 v22, -0x1

    if-nez v7, :cond_a

    or-int v1, v5, v26

    invoke-static {v8, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v4

    iget v5, v6, La2b;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v5

    invoke-virtual {v3, v2, v9, v10, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move/from16 v5, p4

    move v9, v1

    move v1, v4

    goto :goto_5

    :cond_a
    move-object v1, v2

    move v2, v4

    :goto_9
    move/from16 v23, v5

    move-object v9, v6

    move/from16 v24, v12

    move/from16 v5, v17

    :goto_a
    move-object v12, v3

    goto/16 :goto_19

    :pswitch_2
    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move v5, v9

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v4, v24

    move-wide/from16 v9, v27

    const/16 v22, -0x1

    if-nez v7, :cond_a

    invoke-static {v8, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v1

    iget v4, v6, La2b;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->x(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v7

    const/high16 v15, -0x80000000

    and-int v15, v34, v15

    if-eqz v15, :cond_c

    if-eqz v7, :cond_c

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_d

    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v3

    int-to-long v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->b(ILjava/lang/Object;)V

    :goto_b
    move v9, v5

    move-object v3, v8

    move v7, v11

    move v8, v12

    move v4, v13

    :goto_c
    move/from16 v5, p4

    goto/16 :goto_0

    :cond_c
    :goto_d
    or-int v5, v5, v26

    invoke-virtual {v3, v2, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move v5, v9

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v4, v24

    move-wide/from16 v9, v27

    const/4 v1, 0x2

    const/16 v22, -0x1

    if-ne v7, v1, :cond_a

    or-int v1, v5, v26

    invoke-static {v8, v4, v6}, Lc2b;->a([BILa2b;)I

    move-result v4

    iget-object v5, v6, La2b;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v8, p2

    move-object/from16 v6, p6

    move v5, v9

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v4, v24

    const/4 v9, 0x2

    const/16 v22, -0x1

    if-ne v7, v9, :cond_d

    or-int v9, v5, v26

    move-object v3, v1

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    move/from16 v5, p4

    move-object v10, v3

    move-object v3, v8

    move-object/from16 v8, p1

    invoke-static/range {v1 .. v6}, Lc2b;->l(Ljava/lang/Object;Ljib;[BIILa2b;)I

    move-result v2

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v5

    const v16, 0xfffff

    and-int v5, v5, v16

    int-to-long v5, v5

    invoke-virtual {v10, v8, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->k(ILjava/lang/Object;)V

    move/from16 v5, p4

    move-object v3, v1

    move v1, v2

    move-object v6, v4

    move-object v2, v8

    goto/16 :goto_6

    :cond_d
    move-object v1, v8

    move-object v8, v2

    move v2, v4

    move-object v9, v8

    move-object v8, v1

    move-object v1, v9

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move-object v8, v2

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v2, v24

    const/4 v5, 0x2

    const/16 v22, -0x1

    move/from16 v23, v9

    move-wide/from16 v9, v27

    if-ne v7, v5, :cond_20

    and-int v5, v34, v25

    if-eqz v5, :cond_1f

    invoke-static {v1, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v2

    iget v5, v4, La2b;->a:I

    if-ltz v5, :cond_1e

    or-int v7, v23, v26

    if-nez v5, :cond_e

    iput-object v6, v4, La2b;->c:Ljava/lang/Object;

    move/from16 p3, v7

    move/from16 v24, v12

    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_e
    or-int v6, v2, v5

    array-length v15, v1

    sub-int v17, v15, v2

    sub-int v17, v17, v5

    sget-object v18, Lwmb;->a:Lpmb;

    or-int v6, v6, v17

    if-ltz v6, :cond_1d

    add-int v6, v2, v5

    new-array v5, v5, [C

    const/4 v15, 0x0

    :goto_e
    move/from16 v17, v2

    if-ge v2, v6, :cond_f

    aget-byte v2, v1, v17

    if-ltz v2, :cond_f

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v15, 0x1

    int-to-char v2, v2

    aput-char v2, v5, v15

    move/from16 v2, v17

    move/from16 v15, v18

    goto :goto_e

    :cond_f
    move/from16 v2, v17

    :goto_f
    if-ge v2, v6, :cond_1c

    move/from16 v17, v2

    add-int/lit8 v2, v17, 0x1

    move/from16 p3, v7

    aget-byte v7, v1, v17

    if-ltz v7, :cond_11

    add-int/lit8 v17, v15, 0x1

    int-to-char v7, v7

    aput-char v7, v5, v15

    :goto_10
    move/from16 v15, v17

    if-ge v2, v6, :cond_10

    aget-byte v7, v1, v2

    if-ltz v7, :cond_10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v17, v15, 0x1

    int-to-char v7, v7

    aput-char v7, v5, v15

    goto :goto_10

    :cond_10
    move/from16 v7, p3

    goto :goto_f

    :cond_11
    move/from16 v24, v12

    const/16 v12, -0x20

    if-ge v7, v12, :cond_14

    if-ge v2, v6, :cond_13

    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v17, v17, 0x2

    aget-byte v2, v1, v2

    move/from16 v18, v2

    const/16 v2, -0x3e

    if-lt v7, v2, :cond_12

    invoke-static/range {v18 .. v18}, Lhn1;->e(B)Z

    move-result v2

    if-nez v2, :cond_12

    and-int/lit8 v2, v7, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v18, 0x3f

    or-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v5, v15

    move/from16 v7, p3

    move v15, v12

    move/from16 v2, v17

    :goto_11
    move/from16 v12, v24

    goto :goto_f

    :cond_12
    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_13
    const/16 v19, 0x0

    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_14
    const/16 v12, -0x10

    if-ge v7, v12, :cond_19

    add-int/lit8 v12, v6, -0x1

    if-ge v2, v12, :cond_18

    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v20, v17, 0x2

    aget-byte v2, v1, v2

    add-int/lit8 v17, v17, 0x3

    aget-byte v20, v1, v20

    invoke-static {v2}, Lhn1;->e(B)Z

    move-result v21

    if-nez v21, :cond_17

    move/from16 v21, v6

    const/16 v6, -0x60

    move/from16 v23, v12

    const/16 v12, -0x20

    if-ne v7, v12, :cond_15

    if-lt v2, v6, :cond_17

    move v7, v12

    :cond_15
    const/16 v12, -0x13

    if-ne v7, v12, :cond_16

    if-ge v2, v6, :cond_17

    move v7, v12

    :cond_16
    invoke-static/range {v20 .. v20}, Lhn1;->e(B)Z

    move-result v6

    if-nez v6, :cond_17

    and-int/lit8 v6, v7, 0xf

    and-int/lit8 v2, v2, 0x3f

    and-int/lit8 v7, v20, 0x3f

    shl-int/lit8 v6, v6, 0xc

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v5, v15

    move/from16 v7, p3

    move/from16 v2, v17

    move/from16 v6, v21

    move/from16 v15, v23

    goto :goto_11

    :cond_17
    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_18
    const/16 v19, 0x0

    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_19
    move/from16 v21, v6

    add-int/lit8 v6, v21, -0x2

    if-ge v2, v6, :cond_1b

    add-int/lit8 v6, v17, 0x2

    aget-byte v2, v1, v2

    add-int/lit8 v12, v17, 0x3

    aget-byte v6, v1, v6

    add-int/lit8 v17, v17, 0x4

    aget-byte v12, v1, v12

    invoke-static {v2}, Lhn1;->e(B)Z

    move-result v18

    if-nez v18, :cond_1a

    shl-int/lit8 v18, v7, 0x1c

    add-int/lit8 v20, v2, 0x70

    add-int v20, v20, v18

    shr-int/lit8 v18, v20, 0x1e

    if-nez v18, :cond_1a

    invoke-static {v6}, Lhn1;->e(B)Z

    move-result v18

    if-nez v18, :cond_1a

    invoke-static {v12}, Lhn1;->e(B)Z

    move-result v18

    if-nez v18, :cond_1a

    and-int/lit8 v7, v7, 0x7

    and-int/lit8 v2, v2, 0x3f

    and-int/lit8 v6, v6, 0x3f

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v7, v7, 0x12

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v7

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v2, v6

    or-int/2addr v2, v12

    ushr-int/lit8 v6, v2, 0xa

    const v7, 0xd7c0

    add-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v15

    add-int/lit8 v6, v15, 0x1

    and-int/lit16 v2, v2, 0x3ff

    const v7, 0xdc00

    add-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v5, v6

    add-int/lit8 v15, v15, 0x2

    move/from16 v7, p3

    move/from16 v2, v17

    move/from16 v6, v21

    goto/16 :goto_11

    :cond_1a
    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    const/4 v6, 0x0

    return v6

    :cond_1b
    const/4 v6, 0x0

    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v6

    :cond_1c
    move/from16 v21, v6

    move/from16 p3, v7

    move/from16 v24, v12

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v6, v15}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v4, La2b;->c:Ljava/lang/Object;

    move/from16 v2, v21

    :goto_12
    move/from16 v5, p3

    goto :goto_13

    :cond_1d
    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer length=%d, index=%d, size=%d"

    invoke-static {v1, v0}, Li8;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1e
    const/4 v6, 0x0

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v6

    :cond_1f
    move/from16 v24, v12

    or-int v5, v23, v26

    invoke-static {v1, v2, v4}, Lc2b;->e([BILa2b;)I

    move-result v2

    :goto_13
    iget-object v6, v4, La2b;->c:Ljava/lang/Object;

    invoke-virtual {v3, v8, v9, v10, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v1

    move v1, v2

    move-object v6, v4

    move v9, v5

    move-object v2, v8

    :goto_14
    move v7, v11

    move v4, v13

    move/from16 v8, v24

    goto/16 :goto_c

    :cond_20
    move/from16 v24, v12

    :cond_21
    move-object v5, v8

    move-object v8, v1

    move-object v1, v5

    move-object v12, v3

    move-object v9, v4

    move/from16 v5, v17

    goto/16 :goto_19

    :pswitch_6
    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move-object v8, v2

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v2, v24

    const/16 v22, -0x1

    move/from16 v23, v9

    move/from16 v24, v12

    move-wide/from16 v9, v27

    if-nez v7, :cond_21

    or-int v3, v23, v26

    invoke-static {v1, v2, v4}, Lc2b;->j([BILa2b;)I

    move-result v2

    iget-wide v5, v4, La2b;->b:J

    cmp-long v5, v5, v20

    if-eqz v5, :cond_22

    move/from16 v5, v17

    goto :goto_15

    :cond_22
    const/4 v5, 0x0

    :goto_15
    sget-object v6, Lqlb;->c:Ldta;

    invoke-virtual {v6, v8, v9, v10, v5}, Ldta;->e(Ljava/lang/Object;JZ)V

    move/from16 v5, p4

    move v9, v3

    move-object v6, v4

    move v7, v11

    move v4, v13

    move-object v3, v1

    move v1, v2

    move-object v2, v8

    :goto_16
    move/from16 v8, v24

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move-object v8, v2

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v2, v24

    const/4 v5, 0x5

    const/16 v22, -0x1

    move/from16 v23, v9

    move/from16 v24, v12

    move-wide/from16 v9, v27

    if-ne v7, v5, :cond_21

    add-int/lit8 v5, v2, 0x4

    or-int v6, v23, v26

    invoke-static {v2, v1}, Lc2b;->b(I[B)I

    move-result v2

    invoke-virtual {v3, v8, v9, v10, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v3, v1

    move v1, v5

    move v9, v6

    move-object v2, v8

    move v7, v11

    move/from16 v8, v24

    move/from16 v5, p4

    move-object v6, v4

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v1, p2

    move-object/from16 v4, p6

    move-object v8, v2

    move-object v3, v13

    move/from16 v5, v17

    move/from16 v13, v23

    move/from16 v2, v24

    const/16 v22, -0x1

    move/from16 v23, v9

    move/from16 v24, v12

    move-wide/from16 v9, v27

    if-ne v7, v5, :cond_23

    add-int/lit8 v7, v2, 0x8

    or-int v12, v23, v26

    invoke-static {v2, v1}, Lc2b;->n(I[B)J

    move-result-wide v5

    move-object v2, v8

    move-object v8, v1

    move-object v1, v3

    move-wide/from16 v36, v9

    move-object v9, v4

    move-wide/from16 v3, v36

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v1, v7

    move-object v3, v8

    move-object v6, v9

    move v7, v11

    move v9, v12

    :goto_17
    move v4, v13

    goto :goto_16

    :cond_23
    move-object v9, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v4

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v8, p2

    move-object v1, v2

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v2, v24

    move-wide/from16 v4, v27

    const/16 v22, -0x1

    move/from16 v23, v9

    move/from16 v24, v12

    move-object/from16 v9, p6

    if-nez v7, :cond_24

    or-int v6, v23, v26

    invoke-static {v8, v2, v9}, Lc2b;->g([BILa2b;)I

    move-result v2

    iget v7, v9, La2b;->a:I

    invoke-virtual {v3, v1, v4, v5, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v2

    move-object v2, v1

    move v1, v3

    move-object v3, v9

    move v9, v6

    move-object v6, v3

    move/from16 v5, p4

    move-object v3, v8

    :goto_18
    move v7, v11

    goto :goto_17

    :cond_24
    move-object v12, v3

    :cond_25
    const/4 v5, 0x1

    goto/16 :goto_19

    :pswitch_a
    move-object/from16 v8, p2

    move-object v1, v2

    move-object v3, v13

    move/from16 v13, v23

    move/from16 v2, v24

    move-wide/from16 v4, v27

    const/16 v22, -0x1

    move/from16 v23, v9

    move/from16 v24, v12

    move-object/from16 v9, p6

    if-nez v7, :cond_24

    or-int v7, v23, v26

    invoke-static {v8, v2, v9}, Lc2b;->j([BILa2b;)I

    move-result v10

    move-wide/from16 v27, v4

    iget-wide v5, v9, La2b;->b:J

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v3, v27

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    move v1, v10

    move v4, v13

    move/from16 v8, v24

    move v9, v7

    move v7, v11

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v8, p2

    move-object v1, v2

    move/from16 v2, v24

    move-wide/from16 v3, v27

    const/4 v5, 0x5

    const/16 v22, -0x1

    move/from16 v24, v12

    move-object v12, v13

    move/from16 v13, v23

    move/from16 v23, v9

    move-object/from16 v9, p6

    if-ne v7, v5, :cond_25

    add-int/lit8 v5, v2, 0x4

    or-int v6, v23, v26

    invoke-static {v2, v8}, Lc2b;->b(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sget-object v7, Lqlb;->c:Ldta;

    invoke-virtual {v7, v1, v3, v4, v2}, Ldta;->l(Ljava/lang/Object;JF)V

    move-object v2, v9

    move v9, v6

    move-object v6, v2

    move-object v2, v1

    move v1, v5

    move-object v3, v8

    goto/16 :goto_14

    :pswitch_c
    move-object/from16 v8, p2

    move-object v1, v2

    move/from16 v5, v17

    move/from16 v2, v24

    move-wide/from16 v3, v27

    const/16 v22, -0x1

    move/from16 v24, v12

    move-object v12, v13

    move/from16 v13, v23

    move/from16 v23, v9

    move-object/from16 v9, p6

    if-ne v7, v5, :cond_26

    add-int/lit8 v7, v2, 0x8

    or-int v10, v23, v26

    invoke-static {v2, v8}, Lc2b;->n(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sget-object v1, Lqlb;->c:Ldta;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Ldta;->i(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move v1, v7

    move-object v3, v8

    move-object v6, v9

    move v9, v10

    goto/16 :goto_18

    :cond_26
    :goto_19
    move/from16 v10, p5

    move v3, v2

    move v6, v5

    move-object v2, v8

    move-object v5, v9

    move-object v9, v12

    move/from16 v27, v23

    move/from16 v8, v24

    move-object/from16 v24, v15

    move v15, v14

    move-object v14, v1

    goto/16 :goto_53

    :cond_27
    move-object v10, v1

    move-object v1, v2

    move/from16 v35, v3

    move/from16 v34, v4

    move-object/from16 v33, v12

    move-object v12, v13

    move/from16 v13, v23

    move/from16 v2, v24

    move-wide/from16 v3, v27

    const/16 v22, -0x1

    const/16 v5, 0x1b

    const/16 v23, 0xa

    move/from16 v2, v35

    if-ne v2, v5, :cond_2b

    const/4 v5, 0x2

    if-ne v7, v5, :cond_2a

    invoke-virtual {v12, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_28

    :goto_1a
    move/from16 v5, v23

    goto :goto_1b

    :cond_28
    add-int v23, v5, v5

    goto :goto_1a

    :goto_1b
    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v2

    invoke-virtual {v12, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29
    move-object v6, v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v14

    move/from16 v4, v24

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v7}, Lc2b;->c(Ljib;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v1

    move v5, v2

    move-object/from16 v6, p6

    move v7, v11

    move v4, v13

    move-object v2, v14

    move v14, v5

    goto/16 :goto_c

    :cond_2a
    move v5, v14

    move-object v14, v1

    move/from16 v26, v8

    move/from16 v27, v9

    move-object v9, v12

    move-object v12, v0

    move v8, v5

    move/from16 v0, v24

    move-object/from16 v5, p2

    move-object/from16 v24, v15

    move/from16 v15, p4

    goto/16 :goto_47

    :cond_2b
    move v5, v14

    move-object v14, v1

    const/16 v1, 0x31

    if-gt v2, v1, :cond_74

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v1, v34

    int-to-long v8, v1

    invoke-virtual {v12, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v10

    if-nez v10, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2c

    :goto_1c
    move/from16 v10, v23

    goto :goto_1d

    :cond_2c
    add-int v23, v10, v10

    goto :goto_1c

    :goto_1d
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v1

    invoke-virtual {v12, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2d
    move-object v10, v1

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v2, :pswitch_data_1

    const/4 v3, 0x3

    if-ne v7, v3, :cond_30

    and-int/lit8 v1, v5, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    invoke-interface {v2}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move v8, v5

    move/from16 v4, v24

    const/16 v17, 0x1

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lc2b;->k(Ljava/lang/Object;Ljib;[BIIILa2b;)I

    move-result v9

    move-object/from16 v36, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v36

    invoke-interface {v2, v7}, Ljib;->b(Ljava/lang/Object;)V

    iput-object v7, v6, La2b;->c:Ljava/lang/Object;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    if-ge v9, v5, :cond_2f

    move/from16 v24, v4

    invoke-static {v3, v9, v6}, Lc2b;->g([BILa2b;)I

    move-result v4

    iget v7, v6, La2b;->a:I

    if-ne v8, v7, :cond_2e

    move v6, v1

    invoke-interface {v2}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lc2b;->k(Ljava/lang/Object;Ljib;[BIIILa2b;)I

    move-result v9

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Ljib;->b(Ljava/lang/Object;)V

    iput-object v4, v6, La2b;->c:Ljava/lang/Object;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, v24

    goto :goto_1e

    :cond_2e
    move/from16 v4, v24

    :cond_2f
    move v2, v4

    move-object v1, v6

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    move-object v12, v0

    move v15, v5

    move v0, v9

    :goto_1f
    move-object v5, v3

    goto/16 :goto_45

    :cond_30
    move v8, v5

    const/16 v17, 0x1

    move-object/from16 v5, p2

    move-object/from16 v1, p6

    move-object/from16 v28, v12

    move/from16 v2, v24

    move-object v12, v0

    move-object/from16 v24, v15

    move/from16 v15, p4

    goto/16 :goto_44

    :pswitch_d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v8, v5

    move/from16 v4, v24

    const/4 v9, 0x2

    const/16 v17, 0x1

    move/from16 v5, p4

    if-ne v7, v9, :cond_33

    check-cast v10, Ltdb;

    invoke-static {v3, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v2

    iget v7, v6, La2b;->a:I

    add-int/2addr v7, v2

    :goto_20
    if-ge v2, v7, :cond_31

    invoke-static {v3, v2, v6}, Lc2b;->j([BILa2b;)I

    move-result v2

    move-object/from16 v23, v1

    move v9, v2

    iget-wide v1, v6, La2b;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Ltdb;->c(J)V

    move v2, v9

    move-object/from16 v1, v23

    goto :goto_20

    :cond_31
    move-object/from16 v23, v1

    if-ne v2, v7, :cond_32

    move-object v1, v6

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    move-object v12, v0

    move v0, v2

    move v2, v4

    :goto_21
    move v15, v5

    goto :goto_1f

    :cond_32
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_33
    if-nez v7, :cond_35

    check-cast v10, Ltdb;

    invoke-static {v3, v4, v6}, Lc2b;->j([BILa2b;)I

    move-result v1

    move v7, v1

    iget-wide v1, v6, La2b;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Ltdb;->c(J)V

    :goto_22
    move v1, v7

    if-ge v1, v5, :cond_34

    invoke-static {v3, v1, v6}, Lc2b;->g([BILa2b;)I

    move-result v2

    iget v7, v6, La2b;->a:I

    if-ne v8, v7, :cond_34

    invoke-static {v3, v2, v6}, Lc2b;->j([BILa2b;)I

    move-result v1

    move v7, v1

    iget-wide v1, v6, La2b;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Ltdb;->c(J)V

    goto :goto_22

    :cond_34
    :goto_23
    move v2, v4

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    move-object v12, v0

    move v0, v1

    :goto_24
    move v15, v5

    move-object v1, v6

    goto/16 :goto_1f

    :cond_35
    move v2, v4

    move-object v1, v6

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    move-object v12, v0

    :goto_25
    move v15, v5

    :goto_26
    move-object v5, v3

    goto/16 :goto_44

    :pswitch_e
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v23, v1

    move v8, v5

    move/from16 v4, v24

    const/4 v9, 0x2

    const/16 v17, 0x1

    move/from16 v5, p4

    if-ne v7, v9, :cond_38

    check-cast v10, Lhab;

    invoke-static {v3, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v1

    iget v2, v6, La2b;->a:I

    add-int/2addr v2, v1

    :goto_27
    if-ge v1, v2, :cond_36

    invoke-static {v3, v1, v6}, Lc2b;->g([BILa2b;)I

    move-result v1

    iget v7, v6, La2b;->a:I

    invoke-static {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v7

    invoke-virtual {v10, v7}, Lhab;->c(I)V

    goto :goto_27

    :cond_36
    if-ne v1, v2, :cond_37

    goto :goto_23

    :cond_37
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_38
    if-nez v7, :cond_35

    check-cast v10, Lhab;

    invoke-static {v3, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v1

    iget v2, v6, La2b;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lhab;->c(I)V

    :goto_28
    if-ge v1, v5, :cond_34

    invoke-static {v3, v1, v6}, Lc2b;->g([BILa2b;)I

    move-result v2

    iget v7, v6, La2b;->a:I

    if-ne v8, v7, :cond_34

    invoke-static {v3, v2, v6}, Lc2b;->g([BILa2b;)I

    move-result v1

    iget v2, v6, La2b;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lhab;->c(I)V

    goto :goto_28

    :pswitch_f
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v8, v5

    move/from16 v4, v24

    const/4 v9, 0x2

    const/16 v17, 0x1

    move/from16 v5, p4

    if-ne v7, v9, :cond_39

    invoke-static {v3, v4, v10, v6}, Lc2b;->d([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v1

    move v7, v1

    move v1, v8

    move-object v2, v10

    goto :goto_29

    :cond_39
    if-nez v7, :cond_41

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v1, v8

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lc2b;->i(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v7

    move/from16 v36, v3

    move-object v3, v2

    move-object v2, v5

    move v5, v4

    move/from16 v4, v36

    :goto_29
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->x(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->a:Lzd3;

    if-eqz v8, :cond_3f

    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    move/from16 v23, v7

    move-object/from16 v24, v15

    move-object/from16 v15, v18

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v9, :cond_3c

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v28, v12

    move-object/from16 v12, v25

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(I)Z

    move-result v25

    if-eqz v25, :cond_3b

    if-eq v10, v7, :cond_3a

    invoke-interface {v2, v7, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_3b
    invoke-static {v13, v0, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->p(IILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :goto_2b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, v28

    goto :goto_2a

    :cond_3c
    move-object/from16 v28, v12

    if-eq v7, v9, :cond_40

    invoke-interface {v2, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2d

    :cond_3d
    move/from16 v23, v7

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v2, v18

    :cond_3e
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(I)Z

    move-result v9

    if-nez v9, :cond_3e

    invoke-static {v13, v7, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/e;->p(IILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2c

    :cond_3f
    move/from16 v23, v7

    move-object/from16 v28, v12

    move-object/from16 v24, v15

    :cond_40
    :goto_2d
    move-object/from16 v12, p0

    move v8, v1

    move v2, v4

    move v15, v5

    move-object v1, v6

    move/from16 v0, v23

    goto/16 :goto_1f

    :cond_41
    move-object/from16 v28, v12

    move-object/from16 v24, v15

    move-object/from16 v12, p0

    :goto_2e
    move v2, v4

    move v15, v5

    move-object v1, v6

    goto/16 :goto_26

    :pswitch_10
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v23, v1

    move v1, v5

    move-object v2, v10

    move-object/from16 v28, v12

    move/from16 v4, v24

    const/4 v9, 0x2

    const/16 v17, 0x1

    move/from16 v5, p4

    move-object/from16 v24, v15

    if-ne v7, v9, :cond_49

    invoke-static {v3, v4, v6}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v6, La2b;->a:I

    if-ltz v7, :cond_48

    array-length v8, v3

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_47

    if-nez v7, :cond_42

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_42
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    add-int/2addr v0, v7

    :goto_30
    if-ge v0, v5, :cond_46

    invoke-static {v3, v0, v6}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v8, v6, La2b;->a:I

    if-ne v1, v8, :cond_46

    invoke-static {v3, v7, v6}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v6, La2b;->a:I

    if-ltz v7, :cond_45

    array-length v8, v3

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_44

    if-nez v7, :cond_43

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_43
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_44
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_45
    const/16 v19, 0x0

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_46
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v8, v1

    move v2, v4

    goto/16 :goto_24

    :cond_47
    const/16 v19, 0x0

    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_48
    const/16 v19, 0x0

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_49
    move-object/from16 v12, p0

    move v8, v1

    goto :goto_2e

    :pswitch_11
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v1, v5

    move-object v2, v10

    move-object/from16 v28, v12

    move/from16 v4, v24

    const/4 v0, 0x2

    const/16 v17, 0x1

    move/from16 v5, p4

    move-object/from16 v24, v15

    if-ne v7, v0, :cond_49

    move-object/from16 v12, p0

    move v8, v1

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v1

    move-object v7, v6

    move-object v6, v2

    move v2, v8

    invoke-static/range {v1 .. v7}, Lc2b;->c(Ljib;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v0

    move v1, v2

    move v8, v1

    move v2, v4

    move v15, v5

    move-object v1, v7

    goto/16 :goto_1f

    :pswitch_12
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move v1, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    move/from16 v5, p4

    move-object v12, v0

    move-object/from16 v24, v15

    const/4 v0, 0x2

    const/4 v15, 0x1

    if-ne v7, v0, :cond_58

    const-wide/32 v31, 0x20000000

    and-long v7, v8, v31

    cmp-long v0, v7, v20

    if-nez v0, :cond_50

    invoke-static {v3, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v4, La2b;->a:I

    if-ltz v7, :cond_4f

    if-nez v7, :cond_4a

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4a
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    add-int/2addr v0, v7

    :goto_32
    if-ge v0, v5, :cond_4d

    invoke-static {v3, v0, v4}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v8, v4, La2b;->a:I

    if-ne v1, v8, :cond_4d

    invoke-static {v3, v7, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v4, La2b;->a:I

    if-ltz v7, :cond_4c

    if-nez v7, :cond_4b

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_4b
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4c
    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    return v7

    :cond_4d
    const/4 v7, 0x0

    :cond_4e
    :goto_33
    move v8, v1

    move-object v1, v4

    goto/16 :goto_21

    :cond_4f
    const/4 v7, 0x0

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v7

    :cond_50
    const/4 v7, 0x0

    invoke-static {v3, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v8, v4, La2b;->a:I

    if-ltz v8, :cond_57

    if-nez v8, :cond_51

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_51
    add-int v9, v0, v8

    sget-object v15, Lwmb;->a:Lpmb;

    invoke-virtual {v15, v7, v0, v9, v3}, Lpmb;->a(III[B)I

    move-result v15

    if-nez v15, :cond_56

    new-instance v7, Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v0, v8, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v9

    :goto_34
    if-ge v0, v5, :cond_55

    invoke-static {v3, v0, v4}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v8, v4, La2b;->a:I

    if-ne v1, v8, :cond_55

    invoke-static {v3, v7, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v4, La2b;->a:I

    if-ltz v7, :cond_54

    if-nez v7, :cond_52

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_52
    add-int v8, v0, v7

    sget-object v9, Lwmb;->a:Lpmb;

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v0, v8, v3}, Lpmb;->a(III[B)I

    move-result v9

    if-nez v9, :cond_53

    new-instance v9, Ljava/lang/String;

    move/from16 v19, v15

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v0, v7, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v8

    goto :goto_34

    :cond_53
    move/from16 v19, v15

    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_54
    const/16 v19, 0x0

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_55
    const/16 v19, 0x0

    goto :goto_33

    :cond_56
    const/16 v19, 0x0

    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_57
    move/from16 v19, v7

    invoke-static/range {v29 .. v29}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_58
    move v8, v1

    move-object v1, v4

    goto/16 :goto_25

    :pswitch_13
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v23, v1

    move v1, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move/from16 v5, p4

    move-object v12, v0

    move-object/from16 v24, v15

    if-ne v7, v9, :cond_5c

    check-cast v10, Lh2b;

    invoke-static {v3, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v6, v4, La2b;->a:I

    add-int/2addr v6, v0

    :goto_35
    if-ge v0, v6, :cond_5a

    invoke-static {v3, v0, v4}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v7, v4, La2b;->b:J

    cmp-long v7, v7, v20

    if-eqz v7, :cond_59

    const/4 v7, 0x1

    goto :goto_36

    :cond_59
    const/4 v7, 0x0

    :goto_36
    invoke-virtual {v10, v7}, Lh2b;->b(Z)V

    goto :goto_35

    :cond_5a
    if-ne v0, v6, :cond_5b

    goto/16 :goto_33

    :cond_5b
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_5c
    if-nez v7, :cond_58

    check-cast v10, Lh2b;

    invoke-static {v3, v2, v4}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v6, v4, La2b;->b:J

    cmp-long v6, v6, v20

    if-eqz v6, :cond_5d

    const/4 v6, 0x1

    goto :goto_37

    :cond_5d
    const/4 v6, 0x0

    :goto_37
    invoke-virtual {v10, v6}, Lh2b;->b(Z)V

    :goto_38
    if-ge v0, v5, :cond_4e

    invoke-static {v3, v0, v4}, Lc2b;->g([BILa2b;)I

    move-result v6

    iget v7, v4, La2b;->a:I

    if-ne v1, v7, :cond_4e

    invoke-static {v3, v6, v4}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v6, v4, La2b;->b:J

    cmp-long v6, v6, v20

    if-eqz v6, :cond_5e

    const/4 v6, 0x1

    goto :goto_39

    :cond_5e
    const/4 v6, 0x0

    :goto_39
    invoke-virtual {v10, v6}, Lh2b;->b(Z)V

    goto :goto_38

    :pswitch_14
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v23, v1

    move v1, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move/from16 v5, p4

    move-object v12, v0

    move-object/from16 v24, v15

    if-ne v7, v9, :cond_61

    check-cast v10, Lhab;

    invoke-static {v3, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v6, v4, La2b;->a:I

    add-int/2addr v6, v0

    :goto_3a
    if-ge v0, v6, :cond_5f

    invoke-static {v0, v3}, Lc2b;->b(I[B)I

    move-result v7

    invoke-virtual {v10, v7}, Lhab;->c(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_3a

    :cond_5f
    if-ne v0, v6, :cond_60

    goto/16 :goto_33

    :cond_60
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_61
    const/4 v0, 0x5

    if-ne v7, v0, :cond_58

    add-int/lit8 v6, v2, 0x4

    check-cast v10, Lhab;

    invoke-static {v2, v3}, Lc2b;->b(I[B)I

    move-result v0

    invoke-virtual {v10, v0}, Lhab;->c(I)V

    :goto_3b
    if-ge v6, v5, :cond_62

    invoke-static {v3, v6, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v4, La2b;->a:I

    if-ne v1, v7, :cond_62

    invoke-static {v0, v3}, Lc2b;->b(I[B)I

    move-result v6

    invoke-virtual {v10, v6}, Lhab;->c(I)V

    add-int/lit8 v6, v0, 0x4

    goto :goto_3b

    :cond_62
    move v8, v1

    move-object v1, v4

    move v15, v5

    move v0, v6

    goto/16 :goto_1f

    :pswitch_15
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object/from16 v23, v1

    move v1, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move/from16 v5, p4

    move-object v12, v0

    move-object/from16 v24, v15

    if-ne v7, v9, :cond_65

    check-cast v10, Ltdb;

    invoke-static {v3, v2, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v6, v4, La2b;->a:I

    add-int/2addr v6, v0

    :goto_3c
    if-ge v0, v6, :cond_63

    invoke-static {v0, v3}, Lc2b;->n(I[B)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Ltdb;->c(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_3c

    :cond_63
    if-ne v0, v6, :cond_64

    goto/16 :goto_33

    :cond_64
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_65
    const/4 v15, 0x1

    if-ne v7, v15, :cond_58

    add-int/lit8 v6, v2, 0x8

    check-cast v10, Ltdb;

    invoke-static {v2, v3}, Lc2b;->n(I[B)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Ltdb;->c(J)V

    :goto_3d
    if-ge v6, v5, :cond_62

    invoke-static {v3, v6, v4}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v7, v4, La2b;->a:I

    if-ne v1, v7, :cond_62

    invoke-static {v0, v3}, Lc2b;->n(I[B)J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Ltdb;->c(J)V

    add-int/lit8 v6, v0, 0x8

    goto :goto_3d

    :pswitch_16
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move v1, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move/from16 v5, p4

    move-object v12, v0

    move-object/from16 v24, v15

    if-ne v7, v9, :cond_66

    invoke-static {v3, v2, v10, v4}, Lc2b;->d([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v0

    goto/16 :goto_33

    :cond_66
    if-nez v7, :cond_58

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    move-object v6, v4

    move v4, v5

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lc2b;->i(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;La2b;)I

    move-result v0

    move v8, v1

    move-object v5, v2

    move v2, v3

    move v15, v4

    move-object v1, v6

    goto/16 :goto_45

    :pswitch_17
    move-object/from16 v23, v1

    move v8, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move-object/from16 v5, p2

    move-object/from16 v1, p6

    move-object v12, v0

    move-object/from16 v24, v15

    move/from16 v15, p4

    if-ne v7, v9, :cond_69

    check-cast v10, Ltdb;

    invoke-static {v5, v2, v1}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v3, v1, La2b;->a:I

    add-int/2addr v3, v0

    :goto_3e
    if-ge v0, v3, :cond_67

    invoke-static {v5, v0, v1}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v6, v1, La2b;->b:J

    invoke-virtual {v10, v6, v7}, Ltdb;->c(J)V

    goto :goto_3e

    :cond_67
    if-ne v0, v3, :cond_68

    goto/16 :goto_45

    :cond_68
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_69
    if-nez v7, :cond_71

    check-cast v10, Ltdb;

    invoke-static {v5, v2, v1}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v3, v1, La2b;->b:J

    invoke-virtual {v10, v3, v4}, Ltdb;->c(J)V

    :goto_3f
    if-ge v0, v15, :cond_72

    invoke-static {v5, v0, v1}, Lc2b;->g([BILa2b;)I

    move-result v3

    iget v4, v1, La2b;->a:I

    if-ne v8, v4, :cond_72

    invoke-static {v5, v3, v1}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v3, v1, La2b;->b:J

    invoke-virtual {v10, v3, v4}, Ltdb;->c(J)V

    goto :goto_3f

    :pswitch_18
    move-object/from16 v23, v1

    move v8, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move-object/from16 v5, p2

    move-object/from16 v1, p6

    move-object v12, v0

    move-object/from16 v24, v15

    move/from16 v15, p4

    if-ne v7, v9, :cond_6c

    check-cast v10, Lk8b;

    invoke-static {v5, v2, v1}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v3, v1, La2b;->a:I

    add-int/2addr v3, v0

    :goto_40
    if-ge v0, v3, :cond_6a

    invoke-static {v0, v5}, Lc2b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v10, v4}, Lk8b;->zzh(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_40

    :cond_6a
    if-ne v0, v3, :cond_6b

    goto/16 :goto_45

    :cond_6b
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_6c
    const/4 v0, 0x5

    if-ne v7, v0, :cond_71

    add-int/lit8 v6, v2, 0x4

    check-cast v10, Lk8b;

    invoke-static {v2, v5}, Lc2b;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v10, v0}, Lk8b;->zzh(F)V

    :goto_41
    if-ge v6, v15, :cond_6d

    invoke-static {v5, v6, v1}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v3, v1, La2b;->a:I

    if-ne v8, v3, :cond_6d

    invoke-static {v0, v5}, Lc2b;->b(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v10, v3}, Lk8b;->zzh(F)V

    add-int/lit8 v6, v0, 0x4

    goto :goto_41

    :cond_6d
    move v0, v6

    goto :goto_45

    :pswitch_19
    move-object/from16 v23, v1

    move v8, v5

    move-object/from16 v28, v12

    move/from16 v2, v24

    const/4 v9, 0x2

    move-object/from16 v5, p2

    move-object/from16 v1, p6

    move-object v12, v0

    move-object/from16 v24, v15

    move/from16 v15, p4

    if-ne v7, v9, :cond_70

    check-cast v10, Lj6b;

    invoke-static {v5, v2, v1}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v3, v1, La2b;->a:I

    add-int/2addr v3, v0

    :goto_42
    if-ge v0, v3, :cond_6e

    invoke-static {v0, v5}, Lc2b;->n(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lj6b;->b(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_42

    :cond_6e
    if-ne v0, v3, :cond_6f

    goto :goto_45

    :cond_6f
    invoke-static/range {v23 .. v23}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_70
    const/4 v0, 0x1

    if-ne v7, v0, :cond_71

    add-int/lit8 v6, v2, 0x8

    check-cast v10, Lj6b;

    invoke-static {v2, v5}, Lc2b;->n(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lj6b;->b(D)V

    :goto_43
    if-ge v6, v15, :cond_6d

    invoke-static {v5, v6, v1}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v3, v1, La2b;->a:I

    if-ne v8, v3, :cond_6d

    invoke-static {v0, v5}, Lc2b;->n(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Lj6b;->b(D)V

    add-int/lit8 v6, v0, 0x8

    goto :goto_43

    :cond_71
    :goto_44
    move v0, v2

    :cond_72
    :goto_45
    if-eq v0, v2, :cond_73

    move-object v6, v1

    move-object v3, v5

    move v7, v11

    move v4, v13

    move-object v2, v14

    move v5, v15

    move/from16 v9, v27

    move v1, v0

    move v14, v8

    move-object v0, v12

    move/from16 v8, v26

    goto/16 :goto_0

    :cond_73
    move/from16 v10, p5

    move v3, v0

    move-object v2, v5

    move v15, v8

    move/from16 v8, v26

    move-object/from16 v9, v28

    const/4 v6, 0x1

    move-object v5, v1

    goto/16 :goto_53

    :cond_74
    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v12

    move/from16 v1, v34

    move-object v12, v0

    move v8, v5

    move/from16 v0, v24

    move-object/from16 v5, p2

    move-object/from16 v24, v15

    move/from16 v15, p4

    const/16 v9, 0x32

    if-ne v2, v9, :cond_79

    const/4 v9, 0x2

    if-ne v7, v9, :cond_78

    const/4 v1, 0x3

    div-int/2addr v11, v1

    add-int/2addr v11, v11

    aget-object v0, v24, v11

    move-object/from16 v9, v28

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zze()Z

    move-result v2

    if-nez v2, :cond_77

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zze()Z

    move-result v5

    if-nez v5, :cond_75

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    move-result-object v5

    goto :goto_46

    :cond_75
    move-object v5, v2

    :goto_46
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;)V

    :cond_76
    invoke-virtual {v9, v14, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_77
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    throw v18

    :cond_78
    move-object/from16 v9, v28

    :goto_47
    move/from16 v10, p5

    move v3, v0

    move-object v2, v5

    move v15, v8

    move/from16 v8, v26

    const/4 v6, 0x1

    move-object/from16 v5, p6

    goto/16 :goto_53

    :cond_79
    move-object/from16 v9, v28

    add-int/lit8 v23, v11, 0x2

    aget v28, v33, v23

    move/from16 v29, v0

    const v16, 0xfffff

    and-int v0, v28, v16

    move/from16 v34, v1

    int-to-long v0, v0

    packed-switch v2, :pswitch_data_2

    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    const/4 v6, 0x1

    move-object/from16 v5, p6

    goto/16 :goto_51

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v7, v3, :cond_7a

    and-int/lit8 v0, v8, -0x8

    or-int/lit8 v6, v0, 0x4

    invoke-virtual {v12, v13, v11, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    move-object/from16 v7, p6

    move-object v3, v5

    move v5, v15

    move/from16 v4, v29

    invoke-static/range {v1 .. v7}, Lc2b;->k(Ljava/lang/Object;Ljib;[BIIILa2b;)I

    move-result v0

    move-object v2, v3

    move v5, v4

    move-object v6, v7

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v3

    const v16, 0xfffff

    and-int v3, v3, v16

    int-to-long v3, v3

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v33, v23

    and-int v1, v1, v16

    int-to-long v3, v1

    invoke-static {v13, v3, v4, v14}, Lqlb;->h(IJLjava/lang/Object;)V

    move v1, v0

    move v15, v8

    move/from16 v23, v11

    move v8, v5

    move-object v5, v6

    :goto_48
    const/4 v6, 0x1

    goto/16 :goto_52

    :cond_7a
    move-object v2, v5

    move-object/from16 v5, p6

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    :cond_7b
    :goto_49
    const/4 v6, 0x1

    goto/16 :goto_51

    :pswitch_1b
    move-object/from16 v6, p6

    move-object v2, v5

    move/from16 v5, v29

    if-nez v7, :cond_7c

    invoke-static {v2, v5, v6}, Lc2b;->j([BILa2b;)I

    move-result v7

    move v10, v7

    move v15, v8

    iget-wide v7, v6, La2b;->b:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v8, v5

    move-object v5, v6

    move v1, v10

    :goto_4a
    move/from16 v23, v11

    goto :goto_48

    :cond_7c
    move v15, v8

    move/from16 v23, v11

    move v8, v5

    move-object v5, v6

    goto :goto_49

    :pswitch_1c
    move-object/from16 v6, p6

    move-object v2, v5

    move v15, v8

    move/from16 v5, v29

    if-nez v7, :cond_7d

    invoke-static {v2, v5, v6}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v8, v6, La2b;->a:I

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v14, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4b
    move v8, v5

    move-object v5, v6

    move v1, v7

    goto :goto_4a

    :cond_7d
    move v8, v5

    move-object v5, v6

    :cond_7e
    move/from16 v23, v11

    goto :goto_49

    :pswitch_1d
    move-object/from16 v6, p6

    move-object v2, v5

    move v15, v8

    move/from16 v5, v29

    if-nez v7, :cond_7d

    invoke-static {v2, v5, v6}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v8, v6, La2b;->a:I

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->x(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v10

    if-eqz v10, :cond_80

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto :goto_4c

    :cond_7f
    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v0

    int-to-long v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;->b(ILjava/lang/Object;)V

    goto :goto_4b

    :cond_80
    :goto_4c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v14, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_1e
    move-object/from16 v6, p6

    move-object v2, v5

    move v15, v8

    move/from16 v5, v29

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7d

    invoke-static {v2, v5, v6}, Lc2b;->a([BILa2b;)I

    move-result v7

    iget-object v8, v6, La2b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_1f
    move-object/from16 v6, p6

    move-object v2, v5

    move v15, v8

    move/from16 v5, v29

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7d

    invoke-virtual {v12, v13, v11, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v2

    move-object/from16 v3, p2

    move v4, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lc2b;->l(Ljava/lang/Object;Ljib;[BIILa2b;)I

    move-result v0

    move-object v2, v3

    move v8, v4

    move-object v5, v6

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v3

    const v16, 0xfffff

    and-int v3, v3, v16

    int-to-long v3, v3

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v33, v23

    and-int v1, v1, v16

    int-to-long v3, v1

    invoke-static {v13, v3, v4, v14}, Lqlb;->h(IJLjava/lang/Object;)V

    move v1, v0

    goto/16 :goto_4a

    :pswitch_20
    move-object v2, v5

    move v15, v8

    move/from16 v8, v29

    const/4 v10, 0x2

    move-object/from16 v5, p6

    if-ne v7, v10, :cond_7e

    invoke-static {v2, v8, v5}, Lc2b;->g([BILa2b;)I

    move-result v7

    iget v10, v5, La2b;->a:I

    if-nez v10, :cond_81

    invoke-virtual {v9, v14, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v23, v11

    goto :goto_4e

    :cond_81
    and-int v6, v34, v25

    move/from16 v23, v6

    add-int v6, v7, v10

    if-eqz v23, :cond_83

    move/from16 v23, v11

    sget-object v11, Lwmb;->a:Lpmb;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7, v6, v2}, Lpmb;->a(III[B)I

    move-result v11

    if-nez v11, :cond_82

    goto :goto_4d

    :cond_82
    invoke-static/range {v30 .. v30}, Lnz0;->c(Ljava/lang/String;)V

    return v12

    :cond_83
    move/from16 v23, v11

    :goto_4d
    new-instance v11, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-direct {v11, v2, v7, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v14, v3, v4, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v7, v6

    :goto_4e
    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v7

    goto/16 :goto_48

    :pswitch_21
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    move-object/from16 v5, p6

    if-nez v7, :cond_7b

    invoke-static {v2, v8, v5}, Lc2b;->j([BILa2b;)I

    move-result v6

    iget-wide v10, v5, La2b;->b:J

    cmp-long v7, v10, v20

    if-eqz v7, :cond_84

    const/4 v7, 0x1

    goto :goto_4f

    :cond_84
    const/4 v7, 0x0

    :goto_4f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_50
    move v1, v6

    goto/16 :goto_48

    :pswitch_22
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    const/4 v6, 0x5

    move-object/from16 v5, p6

    if-ne v7, v6, :cond_7b

    add-int/lit8 v6, v8, 0x4

    invoke-static {v8, v2}, Lc2b;->b(I[B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_23
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    const/4 v6, 0x1

    move-object/from16 v5, p6

    if-ne v7, v6, :cond_85

    add-int/lit8 v6, v8, 0x8

    invoke-static {v8, v2}, Lc2b;->n(I[B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_24
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    move-object/from16 v5, p6

    if-nez v7, :cond_7b

    invoke-static {v2, v8, v5}, Lc2b;->g([BILa2b;)I

    move-result v6

    iget v7, v5, La2b;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_25
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    move-object/from16 v5, p6

    if-nez v7, :cond_7b

    invoke-static {v2, v8, v5}, Lc2b;->j([BILa2b;)I

    move-result v6

    iget-wide v10, v5, La2b;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :pswitch_26
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    const/4 v6, 0x5

    move-object/from16 v5, p6

    if-ne v7, v6, :cond_7b

    add-int/lit8 v6, v8, 0x4

    invoke-static {v8, v2}, Lc2b;->b(I[B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v9, v14, v3, v4, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_50

    :pswitch_27
    move-object v2, v5

    move v15, v8

    move/from16 v23, v11

    move/from16 v8, v29

    const/4 v6, 0x1

    move-object/from16 v5, p6

    if-ne v7, v6, :cond_85

    add-int/lit8 v7, v8, 0x8

    invoke-static {v8, v2}, Lc2b;->n(I[B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v14, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v0, v1, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v7

    goto :goto_52

    :cond_85
    :goto_51
    move v1, v8

    :goto_52
    if-eq v1, v8, :cond_86

    move-object/from16 v0, p0

    move-object v3, v2

    move-object v6, v5

    move v4, v13

    move-object v2, v14

    move v14, v15

    move/from16 v7, v23

    move/from16 v8, v26

    move/from16 v9, v27

    goto/16 :goto_c

    :cond_86
    move/from16 v10, p5

    move v3, v1

    move/from16 v11, v23

    move/from16 v8, v26

    :goto_53
    if-ne v15, v10, :cond_87

    if-eqz v10, :cond_87

    move-object/from16 v12, p0

    move/from16 v5, p4

    move v1, v3

    move-object v2, v14

    move v14, v15

    :goto_54
    move/from16 v0, v27

    const v3, 0xfffff

    goto/16 :goto_5a

    :cond_87
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->f:Z

    if-eqz v0, :cond_90

    iget-object v0, v5, La2b;->d:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    sget-object v1, Llgb;->c:Llgb;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->b:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    if-eq v0, v1, :cond_90

    iget-object v1, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    invoke-virtual {v0, v1, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;

    move-result-object v0

    if-nez v0, :cond_88

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v5

    move/from16 v4, p4

    move-object/from16 v6, p6

    move v1, v15

    invoke-static/range {v1 .. v6}, Lc2b;->f(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;La2b;)I

    move-result v0

    move-object v3, v2

    move-object v7, v6

    move/from16 v5, p4

    goto/16 :goto_59

    :cond_88
    move v4, v3

    move-object v7, v5

    move-object v3, v2

    move-object v1, v14

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    iget-boolean v5, v2, Lb8b;->b:Z

    if-eqz v5, :cond_89

    invoke-virtual {v2}, Lb8b;->b()Lb8b;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lb8b;

    :cond_89
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->b:Ls9b;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzef;->a:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    iget-object v5, v1, Ls9b;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhf;

    if-eq v5, v9, :cond_8f

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    move v0, v4

    :goto_55
    move-object/from16 v4, v18

    goto/16 :goto_57

    :pswitch_28
    invoke-static {v3, v4, v7}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v4, v7, La2b;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzc(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto :goto_55

    :pswitch_29
    invoke-static {v3, v4, v7}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v4, v7, La2b;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto :goto_55

    :pswitch_2a
    const-string v0, "Shouldn\'t reach here."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :pswitch_2b
    invoke-static {v3, v4, v7}, Lc2b;->a([BILa2b;)I

    move-result v0

    iget-object v4, v7, La2b;->c:Ljava/lang/Object;

    goto/16 :goto_57

    :pswitch_2c
    sget-object v5, Llgb;->c:Llgb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object v0

    iget-object v5, v2, Lb8b;->a:Lvib;

    invoke-virtual {v5, v1}, Lyjb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    if-nez v6, :cond_8b

    if-nez v5, :cond_8a

    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lb8b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)V

    :cond_8a
    move-object v2, v0

    move-object v1, v5

    move-object v6, v7

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lc2b;->l(Ljava/lang/Object;Ljib;[BIILa2b;)I

    move-result v0

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    goto/16 :goto_58

    :cond_8b
    throw v18

    :pswitch_2d
    shl-int/lit8 v3, v13, 0x3

    or-int/lit8 v6, v3, 0x4

    sget-object v3, Llgb;->c:Llgb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object v0

    iget-object v3, v2, Lb8b;->a:Lvib;

    invoke-virtual {v3, v1}, Lyjb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzew;

    if-nez v5, :cond_8d

    if-nez v3, :cond_8c

    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lb8b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)V

    :cond_8c
    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v2, v0

    move-object v1, v3

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lc2b;->k(Ljava/lang/Object;Ljib;[BIIILa2b;)I

    move-result v0

    goto :goto_58

    :cond_8d
    throw v18

    :pswitch_2e
    invoke-static {v3, v4, v7}, Lc2b;->e([BILa2b;)I

    move-result v0

    iget-object v4, v7, La2b;->c:Ljava/lang/Object;

    goto :goto_57

    :pswitch_2f
    invoke-static {v3, v4, v7}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v4, v7, La2b;->b:J

    cmp-long v4, v4, v20

    if-eqz v4, :cond_8e

    goto :goto_56

    :cond_8e
    const/4 v6, 0x0

    :goto_56
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_30
    add-int/lit8 v0, v4, 0x4

    invoke-static {v4, v3}, Lc2b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_31
    add-int/lit8 v0, v4, 0x8

    invoke-static {v4, v3}, Lc2b;->n(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_32
    invoke-static {v3, v4, v7}, Lc2b;->g([BILa2b;)I

    move-result v0

    iget v4, v7, La2b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_33
    invoke-static {v3, v4, v7}, Lc2b;->j([BILa2b;)I

    move-result v0

    iget-wide v4, v7, La2b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_34
    add-int/lit8 v0, v4, 0x4

    invoke-static {v4, v3}, Lc2b;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    goto/16 :goto_55

    :pswitch_35
    add-int/lit8 v0, v4, 0x8

    invoke-static {v4, v3}, Lc2b;->n(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    goto/16 :goto_55

    :goto_57
    invoke-virtual {v2, v1, v4}, Lb8b;->e(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdw;Ljava/lang/Object;)V

    :goto_58
    move/from16 v5, p4

    move v1, v15

    goto :goto_59

    :cond_8f
    invoke-static {v3, v4, v7}, Lc2b;->g([BILa2b;)I

    throw v18

    :cond_90
    move v4, v3

    move-object v7, v5

    move-object v3, v2

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;

    move-result-object v5

    move-object v2, v3

    move v3, v4

    move-object v6, v7

    move v1, v15

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lc2b;->f(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgt;La2b;)I

    move-result v0

    move v5, v4

    :goto_59
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v7, v11

    move v4, v13

    move-object v2, v14

    move/from16 v9, v27

    move v14, v1

    move v1, v0

    move-object v0, v12

    goto/16 :goto_0

    :cond_91
    move/from16 v10, p5

    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v33, v12

    move-object v9, v13

    move-object/from16 v24, v15

    move-object v12, v0

    goto/16 :goto_54

    :goto_5a
    if-eq v8, v3, :cond_92

    int-to-long v3, v8

    invoke-virtual {v9, v2, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_92
    iget v0, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->h:I

    :goto_5b
    iget v3, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->i:I

    if-ge v0, v3, :cond_95

    iget-object v3, v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->g:[I

    aget v3, v3, v0

    aget v4, v33, v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v4

    const v16, 0xfffff

    and-int v4, v4, v16

    int-to-long v6, v4

    invoke-static {v2, v6, v7}, Lqlb;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_93

    goto :goto_5c

    :cond_93
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->x(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v6

    if-nez v6, :cond_94

    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :cond_94
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfg;

    const/4 v1, 0x3

    div-int/2addr v3, v1

    add-int/2addr v3, v3

    aget-object v0, v24, v3

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzff;

    throw v18

    :cond_95
    const-string v0, "Failed to parse the message."

    if-nez v10, :cond_97

    if-ne v1, v5, :cond_96

    goto :goto_5d

    :cond_96
    invoke-static {v0}, Lnz0;->c(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_97
    const/16 v19, 0x0

    if-gt v1, v5, :cond_98

    if-ne v14, v10, :cond_98

    :goto_5d
    return v1

    :cond_98
    invoke-static {v0}, Lnz0;->c(Ljava/lang/String;)V

    return v19

    :cond_99
    const/16 v19, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return v19

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_32
        :pswitch_2a
        :pswitch_30
        :pswitch_31
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method

.method public final t(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, p0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final v(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final x(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final y(I)Ljib;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Ljib;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Llgb;->c:Llgb;

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Llgb;->a(Ljava/lang/Class;)Ljib;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final z(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->y(I)Ljib;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->v(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->m:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->o(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljib;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Ljib;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/b;->e:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0
.end method
