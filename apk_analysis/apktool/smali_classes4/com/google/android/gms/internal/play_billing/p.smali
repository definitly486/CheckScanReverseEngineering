.class public final Lcom/google/android/gms/internal/play_billing/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkqb<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:[I

.field public static final k:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/play_billing/zzhr;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/p;->j:[I

    invoke-static {}, Lwtb;->d()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/zzhr;[IIILg;Llib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/p;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/p;->d:I

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/play_billing/zzgm;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/play_billing/p;->g:[I

    iput p7, p0, Lcom/google/android/gms/internal/play_billing/p;->h:I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/p;->i:I

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/p;->e:Lcom/google/android/gms/internal/play_billing/zzhr;

    return-void
.end method

.method public static C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " for "

    const-string v4, " not found. Known fields are "

    const-string v5, "Field "

    invoke-static {v5, p1, v3, p0, v4}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final q([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lceb;)I
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjg;->zza:Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string p0, "unsupported field type."

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    return v0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lgeb;->j([BILceb;)I

    move-result p0

    iget-wide p1, p5, Lceb;->b:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lgeb;->g([BILceb;)I

    move-result p0

    iget p1, p5, Lceb;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_3
    invoke-static {p0, p1, p5}, Lgeb;->a([BILceb;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p3, Lkpb;->b:Lkpb;

    invoke-virtual {p3, p4}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v1

    invoke-interface {v1}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lgeb;->l(Ljava/lang/Object;Lkqb;[BIILceb;)I

    move-result p0

    invoke-interface {v1, v0}, Lkqb;->b(Ljava/lang/Object;)V

    iput-object v0, v5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_5
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lgeb;->e([BILceb;)I

    move-result p0

    return p0

    :pswitch_6
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lgeb;->j([BILceb;)I

    move-result p0

    iget-wide p1, v5, Lceb;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_7
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x4

    invoke-static {v3, v2}, Lgeb;->b(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lceb;->c:Ljava/lang/Object;

    return p1

    :pswitch_8
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x8

    invoke-static {v3, v2}, Lgeb;->n(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v5, Lceb;->c:Ljava/lang/Object;

    return p1

    :pswitch_9
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lgeb;->g([BILceb;)I

    move-result p0

    iget p1, v5, Lceb;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_a
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    invoke-static {v2, v3, v5}, Lgeb;->j([BILceb;)I

    move-result p0

    iget-wide p1, v5, Lceb;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v5, Lceb;->c:Ljava/lang/Object;

    return p0

    :pswitch_b
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x4

    invoke-static {v3, v2}, Lgeb;->b(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, v5, Lceb;->c:Ljava/lang/Object;

    return p1

    :pswitch_c
    move-object v2, p0

    move v3, p1

    move-object v5, p5

    add-int/lit8 p1, v3, 0x8

    invoke-static {v3, v2}, Lgeb;->n(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v5, Lceb;->c:Ljava/lang/Object;

    return p1

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
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static s(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->a()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_0
    return-object v0
.end method

.method public static t(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static v(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static x(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final B(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/play_billing/p;->h:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/play_billing/p;->g:[I

    aget v9, v5, v2

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v5

    add-int/lit8 v7, v9, 0x2

    iget-object v13, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget v7, v13, v7

    and-int v8, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_1

    if-eq v8, v1, :cond_0

    int-to-long v3, v8

    sget-object v6, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v11, v4

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v3

    move v11, v4

    :goto_1
    const/high16 v3, 0x10000000

    and-int/2addr v3, v5

    move-object v7, p0

    move-object v8, p1

    if-eqz v3, :cond_2

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_9

    const/16 p1, 0x11

    if-eq p0, p1, :cond_9

    const/16 p1, 0x1b

    if-eq p0, p1, :cond_7

    const/16 p1, 0x3c

    if-eq p0, p1, :cond_6

    const/16 p1, 0x44

    if-eq p0, p1, :cond_6

    const/16 p1, 0x31

    if-eq p0, p1, :cond_7

    const/16 p1, 0x32

    if-eq p0, p1, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int p0, v5, v1

    int-to-long p0, p0

    invoke-static {v8, p0, p1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    div-int/lit8 v9, v9, 0x3

    iget-object p1, v7, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    add-int/2addr v9, v9

    aget-object p1, p1, v9

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhl;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    iget-object p1, p1, Ll62;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjg;->zzb()Lcom/google/android/gms/internal/play_billing/zzjh;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjh;->zzi:Lcom/google/android/gms/internal/play_billing/zzjh;

    if-ne p1, v3, :cond_a

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_5

    sget-object p1, Lkpb;->b:Lkpb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object p1

    :cond_5
    invoke-interface {p1, v3}, Lkqb;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_6
    aget p0, v13, v9

    invoke-virtual {v7, p0, v9, v8}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v8, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkqb;->a(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_7
    and-int p0, v5, v1

    int-to-long p0, p0

    invoke-static {v8, p0, p1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object p1

    move v3, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lkqb;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v8, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkqb;->a(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p0, v7

    move-object p1, v8

    move v3, v10

    move v4, v11

    goto/16 :goto_0

    :cond_b
    move-object v7, p0

    move-object v8, p1

    iget-boolean p0, v7, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz p0, :cond_c

    move-object p1, v8

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0}, Lxib;->h()Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v0

    :cond_c
    return v6
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->d()V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->b()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    sget-object v6, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

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

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzc()V

    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzb()V

    goto :goto_1

    :cond_2
    aget v0, v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkqb;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkqb;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzir;->zzh()V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz p0, :cond_6

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0}, Lxib;->e()V

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

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v2

    aget v5, v1, v0

    int-to-long v8, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v7, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lwtb;->g(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->j(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lwtb;->g(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-static {p1, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhm;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzd(Lcom/google/android/gms/internal/play_billing/zzhm;)V

    :cond_2
    invoke-static {v8, v9, p1, v1}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_4

    if-lez v4, :cond_4

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v1

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-gtz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-static {v8, v9, p1, v2}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->i(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object v1, Lwtb;->c:Ldta;

    iget-object v6, v1, Ldta;->a:Lsun/misc/Unsafe;

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_8
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_9
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lwtb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_a
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_b
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_c
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_e
    move-object v7, p1

    invoke-virtual {p0, v0, v7, p2}, Lcom/google/android/gms/internal/play_billing/p;->i(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_f
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v8, v9, v7, p1}, Lwtb;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_10
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lwtb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_11
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_12
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lwtb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_13
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1, v8, v9, v7}, Lwtb;->g(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_14
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lwtb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_15
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2, v8, v9}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    sget-object p1, Lwtb;->c:Ldta;

    iget-object v6, p1, Ldta;->a:Lsun/misc/Unsafe;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_16
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lwtb;->c:Ldta;

    invoke-virtual {p1, p2, v8, v9}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v1

    invoke-virtual {p1, v7, v8, v9, v1}, Ldta;->j(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    goto :goto_3

    :pswitch_17
    move-object v7, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object v6, Lwtb;->c:Ldta;

    invoke-virtual {v6, p2, v8, v9}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ldta;->h(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v7

    goto/16 :goto_0

    :cond_7
    move-object v7, p1

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/play_billing/r;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz p0, :cond_9

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move-object p1, v7

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    const/4 p0, 0x0

    throw p0

    :cond_9
    :goto_4
    return-void

    :cond_a
    move-object v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mutating immutable message: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

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

.method public final d(Ljava/lang/Object;[BIILceb;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/p;->r(Ljava/lang/Object;[BIIILceb;)I

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/zzgp;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v7, 0xfffff

    move v3, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v9, v5

    if-ge v2, v9, :cond_1c

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v10

    aget v11, v5, v2

    add-int/lit8 v12, v2, 0x2

    aget v5, v5, v12

    and-int v12, v5, v7

    const/16 v13, 0x11

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    if-gt v10, v13, :cond_2

    if-eq v12, v3, :cond_1

    if-ne v12, v7, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v12

    invoke-virtual {v15, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v12

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v14, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v9, v7

    sget-object v12, Lcom/google/android/gms/internal/play_billing/zzgi;->zzJ:Lcom/google/android/gms/internal/play_billing/zzgi;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    move-result v12

    if-lt v10, v12, :cond_3

    sget-object v12, Lcom/google/android/gms/internal/play_billing/zzgi;->zzW:Lcom/google/android/gms/internal/play_billing/zzgi;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/zzgi;->zza()I

    :cond_3
    int-to-long v12, v9

    const/16 v9, 0x3f

    const/4 v6, 0x4

    const/16 v7, 0x8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v7

    :goto_4
    add-int/2addr v8, v5

    goto/16 :goto_18

    :pswitch_1
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v6

    add-long v10, v6, v6

    shr-long/2addr v6, v9

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    xor-long/2addr v6, v10

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v6

    :goto_5
    add-int/2addr v6, v5

    add-int/2addr v8, v6

    goto/16 :goto_18

    :pswitch_2
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v6

    add-int v7, v6, v6

    shr-int/lit8 v6, v6, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    xor-int/2addr v6, v7

    invoke-static {v6, v5, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_4
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_5
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v6

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-static {v6, v5, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_7
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_8
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_9
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :cond_4
    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    sget v7, Ldvb;->a:I

    invoke-static {v6}, Ldub;->a(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_a
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v14, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_b
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_c
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_d
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_11
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_12
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v6, v2, 0x3

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    add-int/2addr v6, v6

    aget-object v6, v7, v6

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhm;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzhm;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v11, v10, v9}, Lcom/google/android/gms/internal/play_billing/zzhl;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_7

    :cond_6
    :goto_8
    add-int/2addr v8, v7

    goto/16 :goto_18

    :pswitch_13
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    const/4 v10, 0x0

    goto :goto_a

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v9, v7, :cond_8

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/zzhr;

    shl-int/lit8 v13, v11, 0x3

    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v13

    add-int/2addr v13, v13

    check-cast v12, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v12

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_8
    :goto_a
    add-int/2addr v8, v10

    goto/16 :goto_18

    :pswitch_14
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->l(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_15
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->k(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_16
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_17
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_18
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_19
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->n(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_1f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_20
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_21
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1b

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_22
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_6

    :cond_9
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->l(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    :goto_b
    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    goto/16 :goto_8

    :pswitch_23
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_6

    :cond_a
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->k(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    goto :goto_b

    :pswitch_24
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_6

    :cond_b
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    goto :goto_b

    :pswitch_27
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_6

    :cond_c
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->m(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    goto :goto_b

    :pswitch_28
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    mul-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v9

    invoke-static {v9, v9, v7}, Lbj;->b(III)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :pswitch_29
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    const/4 v9, 0x0

    goto :goto_e

    :cond_e
    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v9

    mul-int/2addr v9, v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_f

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v11

    invoke-static {v11, v11, v9}, Lbj;->b(III)I

    move-result v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_f
    :goto_e
    add-int/2addr v8, v9

    goto/16 :goto_18

    :pswitch_2a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_6

    :cond_10
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    mul-int/2addr v7, v6

    instance-of v9, v5, Lcom/google/android/gms/internal/play_billing/zzhd;

    if-eqz v9, :cond_12

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhd;

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v6, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/play_billing/zzhd;->zza()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v11, :cond_11

    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v10

    invoke-static {v10, v10, v7}, Lbj;->b(III)I

    move-result v7

    goto :goto_10

    :cond_11
    check-cast v10, Ljava/lang/String;

    sget v11, Ldvb;->a:I

    invoke-static {v10}, Ldub;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v10, v7}, Lbj;->b(III)I

    move-result v7

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_12
    const/4 v9, 0x0

    :goto_11
    if-ge v9, v6, :cond_6

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v11, :cond_13

    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v10

    invoke-static {v10, v10, v7}, Lbj;->b(III)I

    move-result v7

    goto :goto_12

    :cond_13
    check-cast v10, Ljava/lang/String;

    sget v11, Ldvb;->a:I

    invoke-static {v10}, Ldub;->a(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v10, v7}, Lbj;->b(III)I

    move-result v7

    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :pswitch_2b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_14

    :goto_13
    const/4 v6, 0x0

    goto :goto_14

    :cond_14
    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    add-int/2addr v6, v14

    mul-int/2addr v6, v5

    :goto_14
    add-int/2addr v8, v6

    goto/16 :goto_18

    :pswitch_2c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_15

    goto/16 :goto_6

    :cond_15
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    goto/16 :goto_b

    :pswitch_2f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_6

    :cond_16
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->n(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    goto/16 :goto_b

    :pswitch_30
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_17

    goto :goto_13

    :cond_17
    shl-int/lit8 v6, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/r;->j(Ljava/util/List;)I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v7

    goto :goto_14

    :pswitch_31
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/r;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    add-long v10, v5, v5

    shr-long/2addr v5, v9

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    xor-long/2addr v5, v10

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    :goto_15
    add-int/2addr v5, v0

    add-int/2addr v8, v5

    :cond_18
    :goto_16
    move-object/from16 v0, p0

    goto/16 :goto_18

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v6, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    xor-int/2addr v5, v6

    invoke-static {v5, v0, v8}, Lbj;->b(III)I

    move-result v8

    goto :goto_16

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v7, v8}, Lbj;->b(III)I

    move-result v8

    :cond_19
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_18

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto :goto_17

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto :goto_15

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-static {v5, v0, v8}, Lbj;->b(III)I

    move-result v8

    goto :goto_16

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_16

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v5

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v6, :cond_1a

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_16

    :cond_1a
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    sget v6, Ldvb;->a:I

    invoke-static {v5}, Ldub;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lrg;->d(IIII)I

    move-result v8

    goto/16 :goto_16

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v14, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_17

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_17

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v7, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_17

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto/16 :goto_15

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto/16 :goto_15

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v5

    goto/16 :goto_15

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Lbj;->b(III)I

    move-result v8

    goto/16 :goto_17

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1b

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Lbj;->b(III)I

    move-result v8

    :cond_1b
    :goto_18
    add-int/lit8 v2, v2, 0x3

    const v7, 0xfffff

    goto/16 :goto_0

    :cond_1c
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzir;->zza()I

    move-result v2

    add-int/2addr v2, v8

    iget-boolean v0, v0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object v0, v0, Lxib;->a:Lqqb;

    iget v1, v0, Lnrb;->c:I

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_19
    if-ge v6, v1, :cond_1d

    invoke-virtual {v0, v6}, Lnrb;->d(I)Luqb;

    move-result-object v3

    iget-object v4, v3, Luqb;->b:Lcom/google/android/gms/internal/play_billing/zzgg;

    iget-object v3, v3, Luqb;->c:Ljava/lang/Object;

    invoke-static {v4, v3}, Lxib;->c(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v3, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_1d
    invoke-virtual {v0}, Lnrb;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lxib;->c(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v1, v16

    goto :goto_1a

    :cond_1e
    add-int v2, v2, v16

    :cond_1f
    return v2

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

.method public final f(Lcom/google/android/gms/internal/play_billing/zzgp;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    const/16 v6, 0x45

    if-lt v5, v6, :cond_2

    :cond_0
    and-int/2addr v3, v4

    int-to-long v3, v3

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_4

    :pswitch_1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_1
    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_4

    :pswitch_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    :goto_3
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    goto/16 :goto_4

    :pswitch_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto :goto_3

    :pswitch_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_2

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_c
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lwtb;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzgv;->zza(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto :goto_3

    :pswitch_f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto/16 :goto_3

    :pswitch_11
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lwtb;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Lwtb;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzgv;->zza:[B

    goto/16 :goto_3

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/p;->i:I

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/p;->g:[I

    array-length v5, v3

    if-ge v1, v5, :cond_5

    aget v3, v3, v1

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzir;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz p0, :cond_6

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object p0, p0, Lxib;->a:Lqqb;

    invoke-virtual {p0}, Lnrb;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final g(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v3, v2

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_0

    const/16 v6, 0x45

    if-ge v5, v6, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/2addr v3, v4

    int-to-long v6, v3

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1

    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_1
    return v0

    :pswitch_1
    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lwtb;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v3, v2, :cond_8

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lwtb;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_8

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/p;->l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lwtb;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_8

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/p;->i:I

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/p;->g:[I

    array-length v5, v3

    if-ge v1, v5, :cond_7

    aget v3, v3, v1

    add-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {p2, v5, v6}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v7, v5, :cond_6

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/r;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v0

    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzir;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_5
    return v0

    :cond_9
    iget-boolean p0, p0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz p0, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p1, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    invoke-virtual {p0, p1}, Lxib;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0

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

.method public final h(Ljava/lang/Object;Lbhb;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-object v7, v6, Lbhb;->a:Lcom/google/android/gms/internal/play_billing/zzfx;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lxib;

    iget-object v3, v2, Lxib;->a:Lqqb;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lxib;->d()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v9, v2

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    array-length v12, v5

    if-ge v2, v12, :cond_c

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v13

    aget v14, v5, v2

    const/16 v15, 0x11

    const/16 v16, 0x0

    sget-object v11, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    if-gt v13, v15, :cond_3

    add-int/lit8 v15, v2, 0x2

    aget v15, v5, v15

    const/16 v18, 0x1

    and-int v8, v15, v10

    if-eq v8, v3, :cond_2

    if-ne v8, v10, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    int-to-long v3, v8

    invoke-virtual {v11, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_2
    move v3, v8

    :cond_2
    ushr-int/lit8 v8, v15, 0x14

    shl-int v8, v18, v8

    move/from16 v21, v8

    move-object v8, v5

    move/from16 v5, v21

    goto :goto_3

    :cond_3
    const/16 v18, 0x1

    move-object v8, v5

    const/4 v5, 0x0

    :goto_3
    if-nez v9, :cond_b

    and-int/2addr v12, v10

    move-object/from16 v19, v11

    int-to-long v10, v12

    const/16 v12, 0x3f

    packed-switch v13, :pswitch_data_0

    :cond_4
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v13, v19

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbhb;->a(ILjava/lang/Object;Lkqb;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v10

    add-long v18, v10, v10

    shr-long/2addr v10, v12

    xor-long v10, v18, v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    add-int v8, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v8

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    goto :goto_4

    :pswitch_7
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbhb;->b(ILjava/lang/Object;Lkqb;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->t(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/play_billing/p;->x(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v13, v19

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    div-int/lit8 v8, v2, 0x3

    iget-object v10, v0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    add-int/2addr v8, v8

    aget-object v8, v10, v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzhl;

    iget-object v8, v8, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    iget-object v10, v8, Ll62;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzjg;

    iget-object v8, v8, Ll62;->a:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzjg;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    const/4 v12, 0x2

    invoke-virtual {v7, v14, v12}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    move/from16 v20, v3

    move/from16 v3, v18

    invoke-static {v8, v3, v13}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result v13

    invoke-static {v10, v12, v15}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v8, v3, v13}, Lxib;->g(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    invoke-static {v7, v10, v12, v11}, Lxib;->g(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    move/from16 v3, v20

    const/16 v18, 0x1

    goto :goto_5

    :pswitch_13
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v3, v11, v8}, Lbhb;->a(ILjava/lang/Object;Lkqb;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    move/from16 v3, v20

    goto/16 :goto_4

    :pswitch_14
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x1

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->b(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_15
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->a(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_16
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->y(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_17
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->x(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_18
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->r(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_19
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->c(ILjava/util/List;Lbhb;Z)V

    goto :goto_7

    :pswitch_1a
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->p(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_1b
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->s(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_1c
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->t(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_1d
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->v(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_1e
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->d(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_1f
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->w(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_20
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->u(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_21
    move/from16 v20, v3

    move/from16 v12, v18

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->q(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_7

    :pswitch_22
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->b(ILjava/util/List;Lbhb;Z)V

    :goto_8
    move v15, v12

    :goto_9
    move/from16 v3, v20

    goto/16 :goto_f

    :pswitch_23
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v12, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->a(ILjava/util/List;Lbhb;Z)V

    goto :goto_8

    :pswitch_24
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v12, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->y(ILjava/util/List;Lbhb;Z)V

    goto :goto_8

    :pswitch_25
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v12, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->x(ILjava/util/List;Lbhb;Z)V

    goto :goto_8

    :pswitch_26
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v12, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->r(ILjava/util/List;Lbhb;Z)V

    goto :goto_8

    :pswitch_27
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v12, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/play_billing/r;->c(ILjava/util/List;Lbhb;Z)V

    goto :goto_8

    :pswitch_28
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v12, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :pswitch_29
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v12, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v3, v10, v8}, Lbhb;->b(ILjava/lang/Object;Lkqb;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :pswitch_2a
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    instance-of v8, v5, Lcom/google/android/gms/internal/play_billing/zzhd;

    if-eqz v8, :cond_8

    move-object v8, v5

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzhd;

    const/4 v12, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    invoke-interface {v8}, Lcom/google/android/gms/internal/play_billing/zzhd;->zza()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_7

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    goto :goto_d

    :cond_7
    check-cast v10, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    :goto_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_8
    const/4 v12, 0x0

    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :pswitch_2b
    move/from16 v20, v3

    move-object/from16 v13, v19

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->p(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_2c
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->s(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_2d
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->t(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_2e
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->v(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_2f
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->d(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_30
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->w(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_31
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->u(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_32
    move/from16 v20, v3

    move-object/from16 v13, v19

    const/4 v15, 0x0

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Lcom/google/android/gms/internal/play_billing/r;->q(ILjava/util/List;Lbhb;Z)V

    goto/16 :goto_9

    :pswitch_33
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbhb;->a(ILjava/lang/Object;Lkqb;)V

    goto/16 :goto_f

    :pswitch_34
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    add-long v17, v10, v10

    shr-long/2addr v10, v12

    xor-long v10, v17, v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto/16 :goto_f

    :pswitch_35
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    add-int v5, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v5

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    goto/16 :goto_f

    :pswitch_36
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    goto/16 :goto_f

    :pswitch_37
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto/16 :goto_f

    :pswitch_38
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    goto/16 :goto_f

    :pswitch_39
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    goto/16 :goto_f

    :pswitch_3a
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_f

    :pswitch_3b
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbhb;->b(ILjava/lang/Object;Lkqb;)V

    goto/16 :goto_f

    :pswitch_3c
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_9

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    goto/16 :goto_f

    :cond_9
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto/16 :goto_f

    :pswitch_3d
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lwtb;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(IZ)V

    goto/16 :goto_f

    :pswitch_3e
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto/16 :goto_f

    :pswitch_3f
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    goto :goto_f

    :pswitch_40
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    goto :goto_f

    :pswitch_41
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto :goto_f

    :pswitch_42
    move-object/from16 v13, v19

    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    goto :goto_f

    :pswitch_43
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lwtb;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->c(Ljava/lang/Object;J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    goto :goto_f

    :pswitch_44
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/p;->n(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lwtb;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    :cond_a
    :goto_f
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvjb;

    throw v16

    :cond_c
    const/16 v16, 0x0

    if-nez v9, :cond_d

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzir;->zzl(Luvb;)V

    return-void

    :cond_d
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvjb;

    throw v16

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

.method public final i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget p0, p0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final j(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v4, v2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/p;->p(IILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2, p2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0, v6}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p1, p1, 0x2

    aget p0, v0, p1

    and-int/2addr p0, v3

    int-to-long p0, p0

    invoke-static {v1, p0, p1, p2}, Lwtb;->g(IJLjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v4, v5, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v6}, Lkqb;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p1

    invoke-static {p0, p3}, Lzc5;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public final k(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

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

    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lwtb;->g(IJLjava/lang/Object;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

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

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result p0

    and-int p1, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result p0

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_0
    invoke-static {p2, v0, v1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v0, v1}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v0, v1}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {p2, v0, v1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, v0, v1}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_a
    sget-object p0, Lwtb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->m(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p2, v0, v1}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p2, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p2, v0, v1}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p2, v0, v1}, Lwtb;->b(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lwtb;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->c(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lwtb;->c:Ldta;

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

    invoke-static {p2, v2, v3}, Lwtb;->a(Ljava/lang/Object;J)I

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

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/p;->m(ILjava/lang/Object;)Z

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

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Lwtb;->a(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Ljava/lang/Object;[BIIILceb;)I
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/p;->o(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    move/from16 v1, p3

    const/4 v4, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    const v16, 0xfffff

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    const-string v17, "Failed to parse the message."

    const/16 v18, 0x0

    const/16 p3, 0x3

    const/16 v20, 0x1

    sget-object v13, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    if-ge v1, v5, :cond_9f

    add-int/lit8 v14, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_0

    invoke-static {v1, v3, v14, v6}, Lgeb;->h(I[BILceb;)I

    move-result v14

    iget v1, v6, Lceb;->a:I

    :cond_0
    move v6, v14

    move v14, v1

    ushr-int/lit8 v1, v14, 0x3

    iget v11, v0, Lcom/google/android/gms/internal/play_billing/p;->d:I

    iget v3, v0, Lcom/google/android/gms/internal/play_billing/p;->c:I

    if-le v1, v4, :cond_2

    div-int/lit8 v7, v7, 0x3

    if-lt v1, v3, :cond_1

    if-gt v1, v11, :cond_1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/play_billing/p;->u(II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    move v11, v3

    :goto_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_2
    if-lt v1, v3, :cond_3

    if-gt v1, v11, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/play_billing/p;->u(II)I

    move-result v4

    move v11, v4

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    const/4 v11, -0x1

    :goto_3
    if-ne v11, v3, :cond_4

    move v5, v14

    move-object v14, v2

    move v2, v5

    move/from16 v10, p5

    move-object/from16 v5, p6

    move/from16 v19, v3

    move/from16 v22, v9

    move-object/from16 v31, v12

    move-object v12, v13

    move-object/from16 v33, v15

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move v9, v1

    move v1, v6

    goto/16 :goto_5c

    :cond_4
    and-int/lit8 v4, v14, 0x7

    add-int/lit8 v7, v11, 0x1

    aget v7, v12, v7

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/p;->v(I)I

    move-result v3

    move/from16 v22, v1

    and-int v1, v7, v16

    move/from16 v23, v6

    int-to-long v5, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/p;->k:Lsun/misc/Unsafe;

    const/high16 v25, 0x20000000

    move-wide/from16 v26, v5

    const-wide/16 v28, 0x0

    const-string v6, ""

    const-string v30, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    const/16 v5, 0x11

    if-gt v3, v5, :cond_14

    add-int/lit8 v5, v11, 0x2

    aget v5, v12, v5

    ushr-int/lit8 v24, v5, 0x14

    shl-int v24, v20, v24

    and-int v5, v5, v16

    if-eq v5, v8, :cond_7

    move-object/from16 v31, v12

    move/from16 v12, v16

    move/from16 v32, v7

    if-eq v8, v12, :cond_5

    int-to-long v7, v8

    invoke-virtual {v13, v2, v7, v8, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    if-ne v5, v12, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    int-to-long v7, v5

    invoke-virtual {v13, v2, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :goto_4
    move v12, v5

    move v9, v7

    goto :goto_5

    :cond_7
    move/from16 v32, v7

    move-object/from16 v31, v12

    move v12, v8

    :goto_5
    packed-switch v3, :pswitch_data_0

    move/from16 v3, p3

    if-ne v4, v3, :cond_8

    or-int v13, v9, v24

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/play_billing/p;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v22, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v23

    const/16 v19, -0x1

    invoke-static/range {v3 .. v9}, Lgeb;->k(Ljava/lang/Object;Lkqb;[BIIILceb;)I

    move-result v4

    move-object v7, v5

    move-object v8, v9

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v5

    const v16, 0xfffff

    and-int v5, v5, v16

    int-to-long v5, v5

    invoke-virtual {v1, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    move/from16 v5, p4

    move v1, v4

    move-object v3, v7

    move-object v6, v8

    move v7, v11

    move v8, v12

    move v9, v13

    move/from16 v4, v22

    goto/16 :goto_0

    :cond_8
    const/16 v19, -0x1

    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    :goto_6
    move/from16 v22, v9

    goto/16 :goto_14

    :pswitch_0
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move/from16 v3, v23

    const/16 v19, -0x1

    if-nez v4, :cond_9

    or-int v9, v9, v24

    invoke-static {v7, v3, v8}, Lgeb;->j([BILceb;)I

    move-result v15

    iget-wide v3, v8, Lceb;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v5

    move-object v1, v13

    move/from16 v13, v22

    move-wide/from16 v3, v26

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v3, v7

    move-object v6, v8

    move v7, v11

    move v8, v12

    move v4, v13

    move v1, v15

    goto/16 :goto_0

    :cond_9
    move-object v5, v13

    move/from16 v13, v22

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object v1, v2

    move v2, v3

    goto :goto_6

    :pswitch_1
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v3, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-nez v4, :cond_a

    or-int v1, v22, v24

    invoke-static {v7, v3, v8}, Lgeb;->g([BILceb;)I

    move-result v3

    iget v4, v8, Lceb;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v4

    invoke-virtual {v5, v2, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    move/from16 v5, p4

    move v9, v1

    move v1, v3

    :goto_8
    move-object v3, v7

    move-object v6, v8

    :goto_9
    move v7, v11

    move v8, v12

    move v4, v13

    goto/16 :goto_0

    :cond_a
    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object v1, v2

    move v2, v3

    goto/16 :goto_14

    :pswitch_2
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v3, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-nez v4, :cond_a

    invoke-static {v7, v3, v8}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v8, Lceb;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->y(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v4

    const/high16 v6, -0x80000000

    and-int v6, v32, v6

    if-eqz v6, :cond_c

    if-eqz v4, :cond_c

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_c

    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/p;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v4

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v14, v3}, Lcom/google/android/gms/internal/play_billing/zzir;->b(ILjava/lang/Object;)V

    move/from16 v5, p4

    move-object v3, v7

    move-object v6, v8

    :goto_a
    move v7, v11

    move v8, v12

    move v4, v13

    :goto_b
    move/from16 v9, v22

    goto/16 :goto_0

    :cond_c
    :goto_c
    or-int v4, v22, v24

    invoke-virtual {v5, v2, v9, v10, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move v9, v4

    goto :goto_8

    :pswitch_3
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v3, v23

    const/4 v6, 0x2

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v6, :cond_a

    or-int v1, v22, v24

    invoke-static {v7, v3, v8}, Lgeb;->a([BILceb;)I

    move-result v3

    iget-object v4, v8, Lceb;->c:Ljava/lang/Object;

    invoke-virtual {v5, v2, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v3, v23

    const/4 v6, 0x2

    const/16 v19, -0x1

    move/from16 v22, v9

    if-ne v4, v6, :cond_d

    or-int v9, v22, v24

    move-object v4, v1

    invoke-virtual {v0, v11, v2}, Lcom/google/android/gms/internal/play_billing/p;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v2

    move/from16 v5, p4

    move-object v10, v4

    move-object v6, v8

    move v4, v3

    move-object v3, v7

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v6}, Lgeb;->l(Ljava/lang/Object;Lkqb;[BIILceb;)I

    move-result v2

    move-object v8, v3

    move-object v3, v1

    move-object v1, v6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v4

    const v16, 0xfffff

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-virtual {v10, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v0, v11, v7}, Lcom/google/android/gms/internal/play_billing/p;->k(ILjava/lang/Object;)V

    move/from16 v5, p4

    move v1, v2

    :goto_d
    move-object v2, v7

    :goto_e
    move-object v3, v8

    goto/16 :goto_9

    :cond_d
    move-object v1, v8

    move-object v8, v7

    move-object v7, v2

    move v2, v3

    :cond_e
    move-object/from16 v34, v7

    move-object v7, v1

    move-object/from16 v1, v34

    goto/16 :goto_14

    :pswitch_5
    move-object/from16 v8, p2

    move-object/from16 v1, p6

    move-object v7, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/4 v3, 0x2

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v3, :cond_e

    and-int v3, v32, v25

    if-eqz v3, :cond_f

    or-int v3, v22, v24

    invoke-static {v8, v2, v1}, Lgeb;->e([BILceb;)I

    move-result v2

    move v4, v3

    goto :goto_f

    :cond_f
    invoke-static {v8, v2, v1}, Lgeb;->g([BILceb;)I

    move-result v2

    iget v3, v1, Lceb;->a:I

    if-ltz v3, :cond_11

    or-int v4, v22, v24

    if-nez v3, :cond_10

    iput-object v6, v1, Lceb;->c:Ljava/lang/Object;

    goto :goto_f

    :cond_10
    new-instance v6, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v2, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v1, Lceb;->c:Ljava/lang/Object;

    add-int/2addr v2, v3

    :goto_f
    iget-object v3, v1, Lceb;->c:Ljava/lang/Object;

    invoke-virtual {v5, v7, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p4

    move-object v6, v1

    move v1, v2

    :goto_10
    move v9, v4

    goto :goto_d

    :cond_11
    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :pswitch_6
    move-object/from16 v8, p2

    move-object/from16 v1, p6

    move-object v7, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-nez v4, :cond_e

    or-int v3, v22, v24

    invoke-static {v8, v2, v1}, Lgeb;->j([BILceb;)I

    move-result v2

    iget-wide v4, v1, Lceb;->b:J

    cmp-long v4, v4, v28

    if-eqz v4, :cond_12

    move/from16 v4, v20

    goto :goto_11

    :cond_12
    const/4 v4, 0x0

    :goto_11
    sget-object v5, Lwtb;->c:Ldta;

    invoke-virtual {v5, v7, v9, v10, v4}, Ldta;->e(Ljava/lang/Object;JZ)V

    move/from16 v5, p4

    move-object v6, v1

    move v1, v2

    move v9, v3

    goto/16 :goto_d

    :pswitch_7
    move-object/from16 v8, p2

    move-object/from16 v1, p6

    move-object v7, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/4 v3, 0x5

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v3, :cond_e

    add-int/lit8 v3, v2, 0x4

    or-int v4, v22, v24

    invoke-static {v2, v8}, Lgeb;->b(I[B)I

    move-result v2

    invoke-virtual {v5, v7, v9, v10, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v6, v1

    move v1, v3

    goto :goto_10

    :pswitch_8
    move-object/from16 v8, p2

    move-object/from16 v1, p6

    move-object v7, v2

    move-object v5, v13

    move/from16 v3, v20

    move/from16 v13, v22

    move/from16 v2, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v3, :cond_e

    add-int/lit8 v15, v2, 0x8

    or-int v17, v22, v24

    move-object v1, v5

    invoke-static {v2, v8}, Lgeb;->n(I[B)J

    move-result-wide v5

    move-object v2, v7

    move-wide v3, v9

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_12
    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v7, v11

    move v8, v12

    move v4, v13

    move v1, v15

    move/from16 v9, v17

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-nez v4, :cond_13

    or-int v3, v22, v24

    invoke-static {v8, v2, v7}, Lgeb;->g([BILceb;)I

    move-result v2

    iget v4, v7, Lceb;->a:I

    invoke-virtual {v5, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v2

    move-object v2, v1

    move v1, v4

    move/from16 v5, p4

    move v9, v3

    :goto_13
    move-object v6, v7

    goto/16 :goto_e

    :pswitch_a
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-nez v4, :cond_13

    or-int v15, v22, v24

    invoke-static {v8, v2, v7}, Lgeb;->j([BILceb;)I

    move-result v17

    move-object v1, v5

    iget-wide v5, v7, Lceb;->b:J

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v7, v11

    move v8, v12

    move v4, v13

    move v9, v15

    move/from16 v1, v17

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v5, v13

    move/from16 v13, v22

    move/from16 v2, v23

    const/4 v3, 0x5

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v3, :cond_13

    add-int/lit8 v3, v2, 0x4

    or-int v4, v22, v24

    invoke-static {v2, v8}, Lgeb;->b(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sget-object v5, Lwtb;->c:Ldta;

    invoke-virtual {v5, v1, v9, v10, v2}, Ldta;->j(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    move-object v2, v1

    move v1, v3

    move v9, v4

    goto :goto_13

    :pswitch_c
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v1, v2

    move-object v5, v13

    move/from16 v3, v20

    move/from16 v13, v22

    move/from16 v2, v23

    const/16 v19, -0x1

    move/from16 v22, v9

    move-wide/from16 v9, v26

    if-ne v4, v3, :cond_13

    add-int/lit8 v15, v2, 0x8

    or-int v17, v22, v24

    invoke-static {v2, v8}, Lgeb;->n(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    sget-object v1, Lwtb;->c:Ldta;

    move-object/from16 v2, p1

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Ldta;->h(Ljava/lang/Object;JD)V

    goto/16 :goto_12

    :cond_13
    :goto_14
    move v3, v14

    move-object v14, v1

    move v1, v2

    move v2, v3

    move/from16 v10, p5

    move-object v3, v8

    move v8, v12

    move v9, v13

    move-object/from16 v33, v15

    move-object v12, v5

    move-object v5, v7

    move v7, v11

    goto/16 :goto_5c

    :cond_14
    move-object v10, v1

    move-object v1, v2

    move/from16 v32, v7

    move-object/from16 v31, v12

    move-object v5, v13

    move/from16 v13, v22

    const/16 v19, -0x1

    move v12, v8

    move-wide/from16 v7, v26

    const/16 v2, 0x1b

    move/from16 v22, v9

    if-ne v3, v2, :cond_18

    const/4 v2, 0x2

    if-ne v4, v2, :cond_17

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_15

    const/16 v9, 0xa

    goto :goto_15

    :cond_15
    add-int v9, v3, v3

    :goto_15
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v2

    invoke-virtual {v5, v1, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_16
    move-object v6, v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v14

    move/from16 v4, v23

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v7}, Lgeb;->c(Lkqb;I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v1

    move-object v3, v14

    move v14, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    goto/16 :goto_a

    :cond_17
    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object v10, v1

    move/from16 v32, v12

    move v9, v14

    move-object/from16 v33, v15

    move/from16 v15, v23

    move-object v12, v5

    move/from16 v23, v13

    move-object/from16 v5, p2

    goto/16 :goto_4f

    :cond_18
    move v2, v14

    move-object v14, v1

    const/16 v1, 0x31

    const-string v24, "Protocol message had invalid UTF-8."

    const-string v26, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v3, v1, :cond_7f

    move/from16 v1, v32

    int-to-long v9, v1

    invoke-virtual {v5, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v25

    if-nez v25, :cond_19

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v32, v2

    add-int v2, v25, v25

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v1

    invoke-virtual {v5, v14, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_16
    move-object v8, v1

    goto :goto_17

    :cond_19
    move/from16 v32, v2

    goto :goto_16

    :goto_17
    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1c

    and-int/lit8 v1, v32, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v2

    invoke-interface {v2}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v10, v5

    move/from16 v4, v23

    move/from16 v9, v32

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lgeb;->k(Ljava/lang/Object;Lkqb;[BIIILceb;)I

    move-result v23

    move-object/from16 v34, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v34

    invoke-interface {v2, v7}, Lkqb;->b(Ljava/lang/Object;)V

    iput-object v7, v6, Lceb;->c:Ljava/lang/Object;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, v23

    :goto_18
    if-ge v7, v5, :cond_1b

    move/from16 v23, v4

    invoke-static {v3, v7, v6}, Lgeb;->g([BILceb;)I

    move-result v4

    move/from16 v24, v1

    iget v1, v6, Lceb;->a:I

    if-ne v9, v1, :cond_1a

    invoke-interface {v2}, Lkqb;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v6

    move-object/from16 v25, v10

    move/from16 v10, v23

    move/from16 v6, v24

    invoke-static/range {v1 .. v7}, Lgeb;->k(Ljava/lang/Object;Lkqb;[BIIILceb;)I

    move-result v4

    move-object v6, v7

    invoke-interface {v2, v1}, Lkqb;->b(Ljava/lang/Object;)V

    iput-object v1, v6, Lceb;->c:Ljava/lang/Object;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    move v4, v10

    move/from16 v1, v24

    move-object/from16 v10, v25

    goto :goto_18

    :cond_1a
    move-object/from16 v25, v10

    move/from16 v10, v23

    goto :goto_19

    :cond_1b
    move-object/from16 v25, v10

    move v10, v4

    :goto_19
    move-object v2, v3

    move-object v14, v6

    move v1, v7

    move/from16 v32, v12

    move/from16 v23, v13

    move-object/from16 v33, v15

    move-object/from16 v12, v25

    move v13, v5

    :goto_1a
    move v15, v10

    goto/16 :goto_49

    :cond_1c
    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move-object/from16 v33, v15

    move/from16 v15, v23

    move/from16 v9, v32

    move/from16 v32, v12

    move/from16 v23, v13

    move/from16 v13, p4

    move-object v12, v5

    goto/16 :goto_48

    :pswitch_d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v25, v5

    move/from16 v10, v23

    move/from16 v9, v32

    const/4 v2, 0x2

    move/from16 v5, p4

    if-ne v4, v2, :cond_22

    check-cast v8, Lonb;

    invoke-static {v3, v10, v6}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v2, v6, Lceb;->a:I

    if-ltz v2, :cond_21

    array-length v4, v3

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_20

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_1d

    invoke-static {v3, v1, v6}, Lgeb;->j([BILceb;)I

    move-result v1

    move/from16 v32, v12

    move/from16 v23, v13

    iget-wide v12, v6, Lceb;->b:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lonb;->c(J)V

    move/from16 v13, v23

    move/from16 v12, v32

    goto :goto_1b

    :cond_1d
    move/from16 v32, v12

    move/from16 v23, v13

    if-ne v1, v2, :cond_1f

    :cond_1e
    :goto_1c
    move-object v2, v3

    move v13, v5

    move-object v14, v6

    move-object/from16 v33, v15

    move-object/from16 v12, v25

    goto :goto_1a

    :cond_1f
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_20
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_21
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_22
    move/from16 v32, v12

    move/from16 v23, v13

    if-nez v4, :cond_23

    check-cast v8, Lonb;

    invoke-static {v3, v10, v6}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v12, v6, Lceb;->b:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lonb;->c(J)V

    :goto_1d
    if-ge v1, v5, :cond_1e

    invoke-static {v3, v1, v6}, Lgeb;->g([BILceb;)I

    move-result v2

    iget v4, v6, Lceb;->a:I

    if-ne v9, v4, :cond_1e

    invoke-static {v3, v2, v6}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v12, v6, Lceb;->b:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lonb;->c(J)V

    goto :goto_1d

    :cond_23
    move-object v2, v3

    move v13, v5

    move-object v14, v6

    move-object/from16 v33, v15

    move-object/from16 v12, v25

    move v15, v10

    goto/16 :goto_48

    :pswitch_e
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v25, v5

    move/from16 v10, v23

    move/from16 v9, v32

    const/4 v2, 0x2

    move/from16 v5, p4

    move/from16 v32, v12

    move/from16 v23, v13

    if-ne v4, v2, :cond_28

    check-cast v8, Lgkb;

    invoke-static {v3, v10, v6}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v2, v6, Lceb;->a:I

    if-ltz v2, :cond_27

    array-length v4, v3

    sub-int/2addr v4, v1

    if-gt v2, v4, :cond_26

    add-int/2addr v2, v1

    :goto_1e
    if-ge v1, v2, :cond_24

    invoke-static {v3, v1, v6}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v6, Lceb;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lgkb;->zzh(I)V

    goto :goto_1e

    :cond_24
    if-ne v1, v2, :cond_25

    goto/16 :goto_1c

    :cond_25
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_26
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_27
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_28
    if-nez v4, :cond_23

    check-cast v8, Lgkb;

    invoke-static {v3, v10, v6}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v2, v6, Lceb;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lgkb;->zzh(I)V

    :goto_1f
    if-ge v1, v5, :cond_1e

    invoke-static {v3, v1, v6}, Lgeb;->g([BILceb;)I

    move-result v2

    iget v4, v6, Lceb;->a:I

    if-ne v9, v4, :cond_1e

    invoke-static {v3, v2, v6}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v2, v6, Lceb;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lgkb;->zzh(I)V

    goto :goto_1f

    :pswitch_f
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v25, v5

    move/from16 v10, v23

    move/from16 v9, v32

    const/4 v2, 0x2

    move/from16 v5, p4

    move/from16 v32, v12

    move/from16 v23, v13

    if-ne v4, v2, :cond_29

    invoke-static {v3, v10, v8, v6}, Lgeb;->d([BILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v1

    move v7, v1

    move-object v2, v8

    move v1, v9

    goto :goto_20

    :cond_29
    if-nez v4, :cond_35

    move-object v2, v3

    move v4, v5

    move-object v5, v8

    move v1, v9

    move v3, v10

    invoke-static/range {v1 .. v6}, Lgeb;->i(I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v7

    move-object v3, v2

    move-object v2, v5

    move v5, v4

    :goto_20
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->y(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v4

    sget-object v8, Lcom/google/android/gms/internal/play_billing/r;->a:Lg;

    if-eqz v4, :cond_33

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v13, v18

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_21
    if-ge v9, v8, :cond_2e

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v26, v7

    move-object/from16 v7, v24

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v24, v13

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v4, v13}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v27

    if-eqz v27, :cond_2b

    if-eq v9, v12, :cond_2a

    invoke-interface {v2, v12, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v12, v12, 0x1

    move/from16 v27, v9

    move-object/from16 v33, v15

    move-object/from16 v13, v24

    goto :goto_23

    :cond_2b
    if-nez v24, :cond_2c

    move-object v7, v14

    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzgp;

    move/from16 v27, v9

    iget-object v9, v7, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    move-object/from16 v33, v15

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v15

    if-ne v9, v15, :cond_2d

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->a()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v9

    iput-object v9, v7, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    goto :goto_22

    :cond_2c
    move/from16 v27, v9

    move-object/from16 v33, v15

    move-object/from16 v9, v24

    :cond_2d
    :goto_22
    int-to-long v13, v13

    shl-int/lit8 v7, v23, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v7, v13}, Lcom/google/android/gms/internal/play_billing/zzir;->b(ILjava/lang/Object;)V

    move-object v13, v9

    :goto_23
    add-int/lit8 v9, v27, 0x1

    move-object/from16 v14, p1

    move/from16 v7, v26

    move-object/from16 v15, v33

    goto :goto_21

    :cond_2e
    move/from16 v26, v7

    move-object/from16 v33, v15

    if-eq v12, v8, :cond_34

    invoke-interface {v2, v12, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_25

    :cond_2f
    move/from16 v26, v7

    move-object/from16 v33, v15

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v7, v18

    :cond_30
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v9

    if-nez v9, :cond_30

    if-nez v7, :cond_32

    move-object/from16 v7, p1

    check-cast v7, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v9, v7, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v12

    if-ne v9, v12, :cond_31

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->a()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v9

    iput-object v9, v7, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_31
    move-object v7, v9

    :cond_32
    int-to-long v8, v8

    shl-int/lit8 v12, v23, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Lcom/google/android/gms/internal/play_billing/zzir;->b(ILjava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_24

    :cond_33
    move/from16 v26, v7

    move-object/from16 v33, v15

    :cond_34
    :goto_25
    move v9, v1

    move-object v2, v3

    move v13, v5

    move-object v14, v6

    move v15, v10

    move-object/from16 v12, v25

    move/from16 v1, v26

    goto/16 :goto_49

    :cond_35
    move-object/from16 v33, v15

    :goto_26
    move-object v2, v3

    move v13, v5

    move-object v14, v6

    move v15, v10

    move-object/from16 v12, v25

    goto/16 :goto_48

    :pswitch_10
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v25, v5

    move-object v2, v8

    move-object/from16 v33, v15

    move/from16 v10, v23

    move/from16 v1, v32

    const/4 v7, 0x2

    move/from16 v5, p4

    move/from16 v32, v12

    move/from16 v23, v13

    if-ne v4, v7, :cond_3d

    invoke-static {v3, v10, v6}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v7, v6, Lceb;->a:I

    if-ltz v7, :cond_3c

    array-length v8, v3

    sub-int/2addr v8, v4

    if-gt v7, v8, :cond_3b

    if-nez v7, :cond_36

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_36
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v4, v7

    :goto_28
    if-ge v4, v5, :cond_3a

    invoke-static {v3, v4, v6}, Lgeb;->g([BILceb;)I

    move-result v7

    iget v8, v6, Lceb;->a:I

    if-ne v1, v8, :cond_3a

    invoke-static {v3, v7, v6}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v7, v6, Lceb;->a:I

    if-ltz v7, :cond_39

    array-length v8, v3

    sub-int/2addr v8, v4

    if-gt v7, v8, :cond_38

    if-nez v7, :cond_37

    sget-object v7, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_37
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzk([BII)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_38
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_39
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_3a
    const/16 v21, 0x0

    move v9, v1

    move-object v2, v3

    move v1, v4

    move v13, v5

    move-object v14, v6

    move v15, v10

    :goto_29
    move-object/from16 v12, v25

    goto/16 :goto_49

    :cond_3b
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_3c
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_3d
    move v9, v1

    goto/16 :goto_26

    :pswitch_11
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v25, v5

    move-object v2, v8

    move-object/from16 v33, v15

    move/from16 v10, v23

    move/from16 v1, v32

    const/4 v8, 0x2

    move/from16 v5, p4

    move/from16 v32, v12

    move/from16 v23, v13

    if-ne v4, v8, :cond_3d

    move v9, v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v1

    move-object v7, v6

    move v4, v10

    move-object v6, v2

    move v2, v9

    invoke-static/range {v1 .. v7}, Lgeb;->c(Lkqb;I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v1

    move-object v2, v3

    move v15, v4

    move v13, v5

    move-object v14, v7

    goto :goto_29

    :pswitch_12
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v1, v8

    move-object/from16 v33, v15

    move/from16 v14, v23

    move/from16 v2, v32

    const/4 v8, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move-object v12, v5

    move/from16 v5, p4

    if-ne v4, v8, :cond_4a

    const-wide/32 v25, 0x20000000

    and-long v8, v9, v25

    cmp-long v4, v8, v28

    if-nez v4, :cond_43

    invoke-static {v3, v14, v7}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v8, v7, Lceb;->a:I

    if-ltz v8, :cond_42

    if-nez v8, :cond_3e

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3e
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/2addr v4, v8

    :goto_2b
    if-ge v4, v5, :cond_41

    invoke-static {v3, v4, v7}, Lgeb;->g([BILceb;)I

    move-result v8

    iget v9, v7, Lceb;->a:I

    if-ne v2, v9, :cond_41

    invoke-static {v3, v8, v7}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v8, v7, Lceb;->a:I

    if-ltz v8, :cond_40

    if-nez v8, :cond_3f

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_40
    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_41
    const/16 v21, 0x0

    move v9, v2

    move-object v2, v3

    move v1, v4

    :goto_2c
    move v13, v5

    :goto_2d
    move v15, v14

    move-object v14, v7

    goto/16 :goto_49

    :cond_42
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_43
    invoke-static {v3, v14, v7}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v8, v7, Lceb;->a:I

    if-ltz v8, :cond_49

    if-nez v8, :cond_44

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_44
    add-int v9, v4, v8

    invoke-static {v3, v4, v9}, Ldvb;->b([BII)Z

    move-result v10

    if-eqz v10, :cond_48

    new-instance v10, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v4, v8, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    move v4, v9

    :goto_2f
    if-ge v4, v5, :cond_41

    invoke-static {v3, v4, v7}, Lgeb;->g([BILceb;)I

    move-result v8

    iget v9, v7, Lceb;->a:I

    if-ne v2, v9, :cond_41

    invoke-static {v3, v8, v7}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v8, v7, Lceb;->a:I

    if-ltz v8, :cond_47

    if-nez v8, :cond_45

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_45
    add-int v9, v4, v8

    invoke-static {v3, v4, v9}, Ldvb;->b([BII)Z

    move-result v10

    if-eqz v10, :cond_46

    new-instance v10, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v3, v4, v8, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_46
    invoke-static/range {v24 .. v24}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_47
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_48
    const/16 v21, 0x0

    invoke-static/range {v24 .. v24}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_49
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_4a
    move v9, v2

    move-object v2, v3

    move v13, v5

    move v15, v14

    move-object v14, v7

    goto/16 :goto_48

    :pswitch_13
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v1, v8

    move-object/from16 v33, v15

    move/from16 v14, v23

    move/from16 v2, v32

    const/4 v6, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move-object v12, v5

    move/from16 v5, p4

    if-ne v4, v6, :cond_51

    move-object v8, v1

    check-cast v8, Ljeb;

    invoke-static {v3, v14, v7}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v7, Lceb;->a:I

    if-ltz v4, :cond_50

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_4f

    add-int/2addr v4, v1

    :goto_30
    if-ge v1, v4, :cond_4c

    invoke-static {v3, v1, v7}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v9, v7, Lceb;->b:J

    cmp-long v6, v9, v28

    if-eqz v6, :cond_4b

    const/4 v6, 0x1

    goto :goto_31

    :cond_4b
    const/4 v6, 0x0

    :goto_31
    invoke-virtual {v8, v6}, Ljeb;->b(Z)V

    goto :goto_30

    :cond_4c
    if-ne v1, v4, :cond_4e

    :cond_4d
    :goto_32
    move v9, v2

    move-object v2, v3

    goto/16 :goto_2c

    :cond_4e
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_4f
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_50
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_51
    if-nez v4, :cond_4a

    move-object v8, v1

    check-cast v8, Ljeb;

    invoke-static {v3, v14, v7}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v9, v7, Lceb;->b:J

    cmp-long v4, v9, v28

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_33

    :cond_52
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {v8, v4}, Ljeb;->b(Z)V

    :goto_34
    if-ge v1, v5, :cond_4d

    invoke-static {v3, v1, v7}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v6, v7, Lceb;->a:I

    if-ne v2, v6, :cond_4d

    invoke-static {v3, v4, v7}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v9, v7, Lceb;->b:J

    cmp-long v4, v9, v28

    if-eqz v4, :cond_53

    const/4 v4, 0x1

    goto :goto_35

    :cond_53
    const/4 v4, 0x0

    :goto_35
    invoke-virtual {v8, v4}, Ljeb;->b(Z)V

    goto :goto_34

    :pswitch_14
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v1, v8

    move-object/from16 v33, v15

    move/from16 v14, v23

    move/from16 v2, v32

    const/4 v6, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move-object v12, v5

    move/from16 v5, p4

    if-ne v4, v6, :cond_5b

    move-object v8, v1

    check-cast v8, Lgkb;

    invoke-static {v3, v14, v7}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v7, Lceb;->a:I

    if-ltz v4, :cond_5a

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_59

    add-int v6, v1, v4

    iget v9, v8, Lgkb;->d:I

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    iget-object v4, v8, Lgkb;->c:[I

    array-length v4, v4

    if-gt v9, v4, :cond_54

    move/from16 v24, v1

    goto :goto_37

    :cond_54
    if-eqz v4, :cond_56

    :goto_36
    if-ge v4, v9, :cond_55

    move/from16 v24, v1

    const/4 v1, 0x2

    const/16 v10, 0xa

    const/4 v13, 0x3

    const/4 v15, 0x1

    invoke-static {v4, v13, v1, v15, v10}, Ldh;->c(IIIII)I

    move-result v4

    move/from16 v1, v24

    goto :goto_36

    :cond_55
    move/from16 v24, v1

    iget-object v1, v8, Lgkb;->c:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v8, Lgkb;->c:[I

    goto :goto_37

    :cond_56
    move/from16 v24, v1

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v8, Lgkb;->c:[I

    :goto_37
    move/from16 v1, v24

    :goto_38
    if-ge v1, v6, :cond_57

    invoke-static {v1, v3}, Lgeb;->b(I[B)I

    move-result v4

    invoke-virtual {v8, v4}, Lgkb;->zzh(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_38

    :cond_57
    if-ne v1, v6, :cond_58

    goto/16 :goto_32

    :cond_58
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_59
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_5a
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_5b
    const/4 v6, 0x5

    if-ne v4, v6, :cond_4a

    add-int/lit8 v6, v14, 0x4

    move-object v8, v1

    check-cast v8, Lgkb;

    invoke-static {v14, v3}, Lgeb;->b(I[B)I

    move-result v1

    invoke-virtual {v8, v1}, Lgkb;->zzh(I)V

    :goto_39
    if-ge v6, v5, :cond_5c

    invoke-static {v3, v6, v7}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v7, Lceb;->a:I

    if-ne v2, v4, :cond_5c

    invoke-static {v1, v3}, Lgeb;->b(I[B)I

    move-result v4

    invoke-virtual {v8, v4}, Lgkb;->zzh(I)V

    add-int/lit8 v6, v1, 0x4

    goto :goto_39

    :cond_5c
    move v9, v2

    move-object v2, v3

    move v13, v5

    move v1, v6

    goto/16 :goto_2d

    :pswitch_15
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v1, v8

    move-object/from16 v33, v15

    move/from16 v14, v23

    move/from16 v2, v32

    const/4 v6, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move-object v12, v5

    move/from16 v5, p4

    if-ne v4, v6, :cond_64

    move-object v8, v1

    check-cast v8, Lonb;

    invoke-static {v3, v14, v7}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v7, Lceb;->a:I

    if-ltz v4, :cond_63

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_62

    add-int v6, v1, v4

    iget v9, v8, Lonb;->d:I

    shr-int/lit8 v4, v4, 0x3

    add-int/2addr v9, v4

    iget-object v4, v8, Lonb;->c:[J

    array-length v4, v4

    if-gt v9, v4, :cond_5d

    move/from16 v24, v1

    goto :goto_3b

    :cond_5d
    if-eqz v4, :cond_5f

    :goto_3a
    if-ge v4, v9, :cond_5e

    move/from16 v24, v1

    const/4 v1, 0x2

    const/16 v10, 0xa

    const/4 v13, 0x3

    const/4 v15, 0x1

    invoke-static {v4, v13, v1, v15, v10}, Ldh;->c(IIIII)I

    move-result v4

    move/from16 v1, v24

    goto :goto_3a

    :cond_5e
    move/from16 v24, v1

    iget-object v1, v8, Lonb;->c:[J

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v8, Lonb;->c:[J

    goto :goto_3b

    :cond_5f
    move/from16 v24, v1

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, v8, Lonb;->c:[J

    :goto_3b
    move/from16 v1, v24

    :goto_3c
    if-ge v1, v6, :cond_60

    invoke-static {v1, v3}, Lgeb;->n(I[B)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lonb;->c(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3c

    :cond_60
    if-ne v1, v6, :cond_61

    goto/16 :goto_32

    :cond_61
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_62
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_63
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_64
    const/4 v15, 0x1

    if-ne v4, v15, :cond_4a

    add-int/lit8 v6, v14, 0x8

    move-object v8, v1

    check-cast v8, Lonb;

    invoke-static {v14, v3}, Lgeb;->n(I[B)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lonb;->c(J)V

    :goto_3d
    if-ge v6, v5, :cond_5c

    invoke-static {v3, v6, v7}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v4, v7, Lceb;->a:I

    if-ne v2, v4, :cond_5c

    invoke-static {v1, v3}, Lgeb;->n(I[B)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lonb;->c(J)V

    add-int/lit8 v6, v1, 0x8

    goto :goto_3d

    :pswitch_16
    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move-object v1, v8

    move-object/from16 v33, v15

    move/from16 v14, v23

    move/from16 v2, v32

    const/4 v8, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move-object v12, v5

    move/from16 v5, p4

    if-ne v4, v8, :cond_65

    invoke-static {v3, v14, v1, v7}, Lgeb;->d([BILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v1

    goto/16 :goto_32

    :cond_65
    if-nez v4, :cond_4a

    move v4, v5

    move-object v6, v7

    move-object v5, v1

    move v1, v2

    move-object v2, v3

    move v3, v14

    invoke-static/range {v1 .. v6}, Lgeb;->i(I[BIILcom/google/android/gms/internal/play_billing/zzgu;Lceb;)I

    move-result v5

    move v9, v1

    move v15, v3

    move v13, v4

    move-object v14, v6

    move v1, v5

    goto/16 :goto_49

    :pswitch_17
    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move-object/from16 v33, v15

    move/from16 v15, v23

    move/from16 v9, v32

    move/from16 v32, v12

    move/from16 v23, v13

    move/from16 v13, p4

    move-object v12, v5

    move-object v5, v8

    const/4 v8, 0x2

    if-ne v4, v8, :cond_6a

    move-object v8, v5

    check-cast v8, Lonb;

    invoke-static {v2, v15, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ltz v3, :cond_69

    array-length v4, v2

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_68

    add-int/2addr v3, v1

    :goto_3e
    if-ge v1, v3, :cond_66

    invoke-static {v2, v1, v14}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v4, v14, Lceb;->b:J

    invoke-virtual {v8, v4, v5}, Lonb;->c(J)V

    goto :goto_3e

    :cond_66
    if-ne v1, v3, :cond_67

    goto/16 :goto_49

    :cond_67
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_68
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_69
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_6a
    if-nez v4, :cond_7c

    move-object v8, v5

    check-cast v8, Lonb;

    invoke-static {v2, v15, v14}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v3, v14, Lceb;->b:J

    invoke-virtual {v8, v3, v4}, Lonb;->c(J)V

    :goto_3f
    if-ge v1, v13, :cond_7d

    invoke-static {v2, v1, v14}, Lgeb;->g([BILceb;)I

    move-result v3

    iget v4, v14, Lceb;->a:I

    if-ne v9, v4, :cond_7d

    invoke-static {v2, v3, v14}, Lgeb;->j([BILceb;)I

    move-result v1

    iget-wide v3, v14, Lceb;->b:J

    invoke-virtual {v8, v3, v4}, Lonb;->c(J)V

    goto :goto_3f

    :pswitch_18
    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move-object/from16 v33, v15

    move/from16 v15, v23

    move/from16 v9, v32

    const/4 v6, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move/from16 v13, p4

    move-object v12, v5

    move-object v5, v8

    if-ne v4, v6, :cond_72

    move-object v8, v5

    check-cast v8, Lejb;

    invoke-static {v2, v15, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ltz v3, :cond_71

    array-length v4, v2

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_70

    add-int v4, v1, v3

    iget v5, v8, Lejb;->d:I

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v3

    iget-object v3, v8, Lejb;->c:[F

    array-length v3, v3

    if-gt v5, v3, :cond_6b

    move/from16 v24, v1

    goto :goto_41

    :cond_6b
    if-eqz v3, :cond_6d

    :goto_40
    if-ge v3, v5, :cond_6c

    move/from16 v24, v1

    const/4 v1, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v10, 0xa

    invoke-static {v3, v6, v1, v7, v10}, Ldh;->c(IIIII)I

    move-result v3

    move/from16 v1, v24

    goto :goto_40

    :cond_6c
    move/from16 v24, v1

    iget-object v1, v8, Lejb;->c:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, v8, Lejb;->c:[F

    goto :goto_41

    :cond_6d
    move/from16 v24, v1

    const/16 v10, 0xa

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v8, Lejb;->c:[F

    :goto_41
    move/from16 v1, v24

    :goto_42
    if-ge v1, v4, :cond_6e

    invoke-static {v1, v2}, Lgeb;->b(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v8, v3}, Lejb;->b(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_42

    :cond_6e
    if-ne v1, v4, :cond_6f

    goto/16 :goto_49

    :cond_6f
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_70
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_71
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_72
    const/4 v3, 0x5

    if-ne v4, v3, :cond_7c

    add-int/lit8 v6, v15, 0x4

    move-object v8, v5

    check-cast v8, Lejb;

    invoke-static {v15, v2}, Lgeb;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v8, v1}, Lejb;->b(F)V

    :goto_43
    if-ge v6, v13, :cond_73

    invoke-static {v2, v6, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ne v9, v3, :cond_73

    invoke-static {v1, v2}, Lgeb;->b(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v8, v3}, Lejb;->b(F)V

    add-int/lit8 v6, v1, 0x4

    goto :goto_43

    :cond_73
    move v1, v6

    goto/16 :goto_49

    :pswitch_19
    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move-object/from16 v33, v15

    move/from16 v15, v23

    move/from16 v9, v32

    const/4 v6, 0x2

    move/from16 v32, v12

    move/from16 v23, v13

    move/from16 v13, p4

    move-object v12, v5

    move-object v5, v8

    if-ne v4, v6, :cond_7b

    move-object v8, v5

    check-cast v8, Lghb;

    invoke-static {v2, v15, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ltz v3, :cond_7a

    array-length v4, v2

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_79

    add-int v4, v1, v3

    iget v5, v8, Lghb;->d:I

    shr-int/lit8 v3, v3, 0x3

    add-int/2addr v5, v3

    iget-object v3, v8, Lghb;->c:[D

    array-length v3, v3

    if-gt v5, v3, :cond_74

    move/from16 v24, v1

    goto :goto_45

    :cond_74
    if-eqz v3, :cond_76

    :goto_44
    if-ge v3, v5, :cond_75

    move/from16 v24, v1

    const/4 v1, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v10, 0xa

    invoke-static {v3, v6, v1, v7, v10}, Ldh;->c(IIIII)I

    move-result v3

    move/from16 v1, v24

    goto :goto_44

    :cond_75
    move/from16 v24, v1

    iget-object v1, v8, Lghb;->c:[D

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    iput-object v1, v8, Lghb;->c:[D

    goto :goto_45

    :cond_76
    move/from16 v24, v1

    const/16 v10, 0xa

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [D

    iput-object v1, v8, Lghb;->c:[D

    :goto_45
    move/from16 v1, v24

    :goto_46
    if-ge v1, v4, :cond_77

    invoke-static {v1, v2}, Lgeb;->n(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lghb;->b(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_46

    :cond_77
    if-ne v1, v4, :cond_78

    goto :goto_49

    :cond_78
    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_79
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_7a
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_7b
    const/4 v3, 0x1

    if-ne v4, v3, :cond_7c

    add-int/lit8 v6, v15, 0x8

    move-object v8, v5

    check-cast v8, Lghb;

    invoke-static {v15, v2}, Lgeb;->n(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lghb;->b(D)V

    :goto_47
    if-ge v6, v13, :cond_73

    invoke-static {v2, v6, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ne v9, v3, :cond_73

    invoke-static {v1, v2}, Lgeb;->n(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lghb;->b(D)V

    add-int/lit8 v6, v1, 0x8

    goto :goto_47

    :cond_7c
    :goto_48
    move v1, v15

    :cond_7d
    :goto_49
    if-eq v1, v15, :cond_7e

    move-object v3, v2

    move v7, v11

    move v5, v13

    move-object v6, v14

    move/from16 v4, v23

    move/from16 v8, v32

    move-object/from16 v2, p1

    :goto_4a
    move v14, v9

    goto/16 :goto_b

    :cond_7e
    move/from16 v10, p5

    move-object v3, v2

    move v2, v9

    move v7, v11

    move-object v5, v14

    move/from16 v9, v23

    move/from16 v8, v32

    move-object/from16 v14, p1

    goto/16 :goto_5c

    :cond_7f
    move-object/from16 v14, p6

    move v9, v2

    move-object/from16 v33, v15

    move/from16 v15, v23

    move/from16 v1, v32

    move-object/from16 v2, p2

    move/from16 v32, v12

    move/from16 v23, v13

    move/from16 v13, p4

    move-object v12, v5

    const/16 v5, 0x32

    if-ne v3, v5, :cond_8d

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8c

    div-int/lit8 v1, v11, 0x3

    add-int/2addr v1, v1

    aget-object v1, v33, v1

    move-object/from16 v10, p1

    invoke-virtual {v12, v10, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v5

    if-nez v5, :cond_82

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhm;->zza()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_81

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzhm;->zze()Z

    move-result v5

    if-nez v5, :cond_80

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzb()Lcom/google/android/gms/internal/play_billing/zzhm;

    move-result-object v5

    goto :goto_4b

    :cond_80
    move-object v5, v3

    :goto_4b
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzhm;->zzd(Lcom/google/android/gms/internal/play_billing/zzhm;)V

    :cond_81
    invoke-virtual {v12, v10, v7, v8, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_82
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhl;

    iget-object v7, v1, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzhm;

    invoke-static {v2, v15, v14}, Lgeb;->g([BILceb;)I

    move-result v1

    iget v3, v14, Lceb;->a:I

    if-ltz v3, :cond_8b

    sub-int v4, v13, v1

    if-gt v3, v4, :cond_8b

    add-int/2addr v3, v1

    iget-object v4, v7, Ll62;->c:Ljava/lang/Object;

    move-object v5, v4

    :goto_4c
    if-ge v1, v3, :cond_88

    move/from16 v24, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_83

    invoke-static {v1, v2, v3, v14}, Lgeb;->h(I[BILceb;)I

    move-result v3

    iget v1, v14, Lceb;->a:I

    :cond_83
    ushr-int/lit8 v2, v1, 0x3

    move/from16 v25, v3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v26, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_87

    const/4 v4, 0x2

    if-eq v2, v4, :cond_84

    move-object v2, v5

    move v3, v13

    move-object v4, v14

    move/from16 v14, v24

    move-object/from16 v5, p2

    move-object v13, v6

    move/from16 v6, v25

    goto/16 :goto_4e

    :cond_84
    iget-object v2, v7, Ll62;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v2

    if-ne v3, v2, :cond_85

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move v3, v13

    move/from16 v2, v25

    move-object v13, v6

    move-object v6, v14

    move/from16 v14, v24

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/p;->q([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lceb;)I

    move-result v2

    iget-object v5, v6, Lceb;->c:Ljava/lang/Object;

    move v1, v2

    move v3, v14

    move-object/from16 v4, v26

    move-object/from16 v2, p2

    move-object v14, v6

    move-object v6, v13

    move/from16 v13, p4

    goto :goto_4c

    :cond_85
    move-object v13, v6

    move-object v6, v14

    move/from16 v14, v24

    :cond_86
    move/from16 v3, p4

    move-object v2, v5

    move-object v4, v6

    move/from16 v6, v25

    move-object/from16 v5, p2

    goto :goto_4e

    :cond_87
    move-object v13, v6

    move-object v6, v14

    move/from16 v14, v24

    move/from16 v2, v25

    iget-object v4, v7, Ll62;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzjg;->zza()I

    move-result v2

    if-ne v3, v2, :cond_86

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v13, v2

    move/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/p;->q([BIILcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Class;Lceb;)I

    move-result v2

    move-object v5, v1

    move-object v4, v6

    iget-object v6, v4, Lceb;->c:Ljava/lang/Object;

    move v1, v2

    move-object v2, v5

    move-object v5, v13

    :goto_4d
    move v13, v3

    move v3, v14

    move-object v14, v4

    move-object/from16 v4, v26

    goto/16 :goto_4c

    :goto_4e
    invoke-static {v1, v5, v6, v3, v4}, Lgeb;->m(I[BIILceb;)I

    move-result v1

    move-object v6, v5

    move-object v5, v2

    move-object v2, v6

    move-object v6, v13

    goto :goto_4d

    :cond_88
    move-object v4, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v14

    move v14, v3

    move v3, v13

    move-object v13, v6

    if-ne v1, v14, :cond_8a

    invoke-interface {v8, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v14, v15, :cond_89

    move-object v1, v5

    move v5, v3

    move-object v3, v1

    move-object v6, v4

    move-object v2, v10

    move v7, v11

    move v1, v14

    move/from16 v4, v23

    move/from16 v8, v32

    goto/16 :goto_4a

    :cond_89
    move-object v3, v5

    move v2, v9

    move v7, v11

    move v1, v14

    move/from16 v9, v23

    move/from16 v8, v32

    move-object v5, v4

    move-object v14, v10

    move/from16 v10, p5

    goto/16 :goto_5c

    :cond_8a
    invoke-static/range {v17 .. v17}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_8b
    const/16 v21, 0x0

    invoke-static/range {v26 .. v26}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_8c
    move-object/from16 v10, p1

    move-object v5, v2

    move v3, v13

    move-object v4, v14

    :goto_4f
    move-object v3, v5

    move v2, v9

    move-object v14, v10

    move v7, v11

    move v1, v15

    move/from16 v9, v23

    move/from16 v8, v32

    move/from16 v10, p5

    move-object v5, v4

    goto/16 :goto_5c

    :cond_8d
    move-object/from16 v14, p1

    move-object v5, v2

    add-int/lit8 v13, v11, 0x2

    aget v2, v31, v13

    const v16, 0xfffff

    and-int v2, v2, v16

    move/from16 v26, v1

    int-to-long v1, v2

    packed-switch v3, :pswitch_data_2

    :cond_8e
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    move-object/from16 v5, p6

    goto/16 :goto_5a

    :pswitch_1a
    const/4 v3, 0x3

    if-ne v4, v3, :cond_8e

    and-int/lit8 v1, v9, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v8, v23

    invoke-virtual {v0, v8, v11, v14}, Lcom/google/android/gms/internal/play_billing/p;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v2

    move-object/from16 v7, p6

    move-object v3, v5

    move v4, v15

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lgeb;->k(Ljava/lang/Object;Lkqb;[BIIILceb;)I

    move-result v2

    move-object v6, v7

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v4

    const v16, 0xfffff

    and-int v4, v4, v16

    int-to-long v4, v4

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v31, v13

    and-int v1, v1, v16

    int-to-long v4, v1

    invoke-static {v8, v4, v5, v14}, Lwtb;->g(IJLjava/lang/Object;)V

    move v1, v2

    move-object v5, v6

    move/from16 v23, v9

    move/from16 v24, v11

    move v9, v8

    goto/16 :goto_5b

    :pswitch_1b
    move-object/from16 v6, p6

    move-object v3, v5

    move/from16 v5, v23

    if-nez v4, :cond_8f

    invoke-static {v3, v15, v6}, Lgeb;->j([BILceb;)I

    move-result v4

    move/from16 v23, v9

    iget-wide v9, v6, Lceb;->b:J

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/play_billing/zzft;->zzc(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v14, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_50
    move v1, v4

    move v9, v5

    move-object v5, v6

    :goto_51
    move/from16 v24, v11

    goto/16 :goto_5b

    :cond_8f
    move/from16 v23, v9

    move/from16 v24, v11

    move v9, v5

    move-object v5, v6

    goto/16 :goto_5a

    :pswitch_1c
    move-object/from16 v6, p6

    move-object v3, v5

    move/from16 v5, v23

    move/from16 v23, v9

    if-nez v4, :cond_90

    invoke-static {v3, v15, v6}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v9, v6, Lceb;->a:I

    invoke-static {v9}, Lcom/google/android/gms/internal/play_billing/zzft;->zzb(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v14, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :cond_90
    move v9, v5

    move-object v5, v6

    :goto_52
    move/from16 v24, v11

    goto/16 :goto_5a

    :pswitch_1d
    move-object/from16 v6, p6

    move-object v3, v5

    move/from16 v5, v23

    move/from16 v23, v9

    if-nez v4, :cond_90

    invoke-static {v3, v15, v6}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v9, v6, Lceb;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->y(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v10

    if-eqz v10, :cond_91

    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_92

    :cond_91
    move/from16 v10, v23

    goto :goto_53

    :cond_92
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/p;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v1

    int-to-long v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v10, v23

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/play_billing/zzir;->b(ILjava/lang/Object;)V

    goto :goto_54

    :goto_53
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v14, v7, v8, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_54
    move v1, v4

    move v9, v5

    move-object v5, v6

    move/from16 v23, v10

    goto :goto_51

    :pswitch_1e
    move-object/from16 v6, p6

    move-object v3, v5

    move v10, v9

    move/from16 v5, v23

    const/4 v9, 0x2

    if-ne v4, v9, :cond_93

    invoke-static {v3, v15, v6}, Lgeb;->a([BILceb;)I

    move-result v4

    iget-object v13, v6, Lceb;->c:Ljava/lang/Object;

    invoke-virtual {v12, v14, v7, v8, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_54

    :cond_93
    move v9, v5

    move-object v5, v6

    move/from16 v23, v10

    goto :goto_52

    :pswitch_1f
    move-object/from16 v6, p6

    move-object v3, v5

    move/from16 v5, v23

    move/from16 v23, v9

    const/4 v9, 0x2

    if-ne v4, v9, :cond_90

    invoke-virtual {v0, v5, v11, v14}, Lcom/google/android/gms/internal/play_billing/p;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->z(I)Lkqb;

    move-result-object v2

    move v9, v5

    move v4, v15

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lgeb;->l(Ljava/lang/Object;Lkqb;[BIILceb;)I

    move-result v2

    move-object v5, v6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v4

    const v16, 0xfffff

    and-int v4, v4, v16

    int-to-long v6, v4

    invoke-virtual {v10, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    aget v1, v31, v13

    and-int v1, v1, v16

    int-to-long v6, v1

    invoke-static {v9, v6, v7, v14}, Lwtb;->g(IJLjava/lang/Object;)V

    move v1, v2

    goto/16 :goto_51

    :pswitch_20
    move-object v3, v5

    move v10, v9

    move/from16 v9, v23

    const/4 v13, 0x2

    move-object/from16 v5, p6

    if-ne v4, v13, :cond_97

    invoke-static {v3, v15, v5}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v13, v5, Lceb;->a:I

    if-nez v13, :cond_94

    invoke-virtual {v12, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v24, v11

    goto :goto_56

    :cond_94
    and-int v6, v26, v25

    move/from16 v23, v6

    add-int v6, v4, v13

    if-eqz v23, :cond_95

    invoke-static {v3, v4, v6}, Ldvb;->b([BII)Z

    move-result v23

    if-eqz v23, :cond_96

    :cond_95
    move/from16 v23, v6

    goto :goto_55

    :cond_96
    invoke-static/range {v24 .. v24}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :goto_55
    new-instance v6, Ljava/lang/String;

    move/from16 v24, v11

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v4, v13, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v4, v23

    :goto_56
    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v1, v4

    move/from16 v23, v10

    goto/16 :goto_5b

    :cond_97
    move/from16 v24, v11

    :cond_98
    move/from16 v23, v10

    goto/16 :goto_5a

    :pswitch_21
    move-object v3, v5

    move v10, v9

    move/from16 v24, v11

    move/from16 v9, v23

    move-object/from16 v5, p6

    if-nez v4, :cond_98

    invoke-static {v3, v15, v5}, Lgeb;->j([BILceb;)I

    move-result v4

    move/from16 v23, v10

    iget-wide v10, v5, Lceb;->b:J

    cmp-long v6, v10, v28

    if-eqz v6, :cond_99

    const/4 v6, 0x1

    goto :goto_57

    :cond_99
    const/4 v6, 0x0

    :goto_57
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v12, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_58
    move v1, v4

    goto/16 :goto_5b

    :pswitch_22
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    const/4 v6, 0x5

    move-object/from16 v5, p6

    if-ne v4, v6, :cond_9a

    add-int/lit8 v6, v15, 0x4

    invoke-static {v15, v3}, Lgeb;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_59
    move v1, v6

    goto/16 :goto_5b

    :pswitch_23
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    const/4 v6, 0x1

    move-object/from16 v5, p6

    if-ne v4, v6, :cond_9a

    add-int/lit8 v6, v15, 0x8

    invoke-static {v15, v3}, Lgeb;->n(I[B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_59

    :pswitch_24
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    move-object/from16 v5, p6

    if-nez v4, :cond_9a

    invoke-static {v3, v15, v5}, Lgeb;->g([BILceb;)I

    move-result v4

    iget v6, v5, Lceb;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_25
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    move-object/from16 v5, p6

    if-nez v4, :cond_9a

    invoke-static {v3, v15, v5}, Lgeb;->j([BILceb;)I

    move-result v4

    iget-wide v10, v5, Lceb;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_26
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    const/4 v6, 0x5

    move-object/from16 v5, p6

    if-ne v4, v6, :cond_9a

    add-int/lit8 v6, v15, 0x4

    invoke-static {v15, v3}, Lgeb;->b(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_59

    :pswitch_27
    move/from16 v3, v23

    move/from16 v23, v9

    move v9, v3

    move-object v3, v5

    move/from16 v24, v11

    const/4 v6, 0x1

    move-object/from16 v5, p6

    if-ne v4, v6, :cond_9a

    add-int/lit8 v6, v15, 0x8

    invoke-static {v15, v3}, Lgeb;->n(I[B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v12, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v12, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_59

    :cond_9a
    :goto_5a
    move v1, v15

    :goto_5b
    if-eq v1, v15, :cond_9b

    move-object v6, v5

    move v4, v9

    move-object v2, v14

    move/from16 v9, v22

    move/from16 v14, v23

    move/from16 v7, v24

    move/from16 v8, v32

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_9b
    move/from16 v10, p5

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v8, v32

    :goto_5c
    if-ne v2, v10, :cond_9c

    if-eqz v10, :cond_9c

    move-object v3, v14

    move v14, v2

    move-object v2, v3

    move/from16 v5, p4

    move/from16 v9, v22

    :goto_5d
    const v3, 0xfffff

    goto/16 :goto_5f

    :cond_9c
    iget-boolean v4, v0, Lcom/google/android/gms/internal/play_billing/p;->f:Z

    if-eqz v4, :cond_9e

    iget-object v4, v5, Lceb;->d:Lcom/google/android/gms/internal/play_billing/zzgc;

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    sget v6, Lydb;->a:I

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    if-eq v4, v6, :cond_9e

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/p;->e:Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {v4, v6, v9}, Lcom/google/android/gms/internal/play_billing/zzgc;->zza(Lcom/google/android/gms/internal/play_billing/zzhr;I)Lcom/google/android/gms/internal/play_billing/zzgo;

    move-result-object v4

    if-nez v4, :cond_9d

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/p;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v5

    move-object v4, v3

    move v3, v1

    move v1, v2

    move-object v2, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lgeb;->f(I[BIILcom/google/android/gms/internal/play_billing/zzir;Lceb;)I

    move-result v3

    move/from16 v5, p4

    goto :goto_5e

    :cond_9d
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgm;

    throw v18

    :cond_9e
    move v3, v1

    move v1, v2

    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/p;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lgeb;->f(I[BIILcom/google/android/gms/internal/play_billing/zzir;Lceb;)I

    move-result v3

    move v5, v4

    :goto_5e
    move-object/from16 v6, p6

    move v4, v9

    move-object v2, v14

    move/from16 v9, v22

    move v14, v1

    move v1, v3

    move-object/from16 v3, p2

    goto/16 :goto_0

    :cond_9f
    move/from16 v10, p5

    move/from16 v32, v8

    move/from16 v22, v9

    move-object/from16 v31, v12

    move-object v12, v13

    move-object/from16 v33, v15

    goto :goto_5d

    :goto_5f
    if-eq v8, v3, :cond_a0

    int-to-long v3, v8

    invoke-virtual {v12, v2, v3, v4, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a0
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/p;->h:I

    move-object/from16 v4, v18

    :goto_60
    iget v6, v0, Lcom/google/android/gms/internal/play_billing/p;->i:I

    if-ge v3, v6, :cond_a7

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/p;->g:[I

    aget v6, v6, v3

    aget v7, v31, v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/p;->w(I)I

    move-result v8

    const v16, 0xfffff

    and-int v8, v8, v16

    int-to-long v8, v8

    invoke-static {v2, v8, v9}, Lwtb;->c(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_a1

    goto :goto_61

    :cond_a1
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/p;->y(I)Lcom/google/android/gms/internal/play_billing/zzgs;

    move-result-object v9

    if-nez v9, :cond_a3

    :cond_a2
    :goto_61
    const/4 v2, 0x1

    const/4 v13, 0x3

    const/4 v15, 0x2

    goto/16 :goto_63

    :cond_a3
    check-cast v8, Lcom/google/android/gms/internal/play_billing/zzhm;

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v6

    aget-object v6, v33, v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzhl;

    iget-object v6, v6, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    iget-object v11, v6, Ll62;->b:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/play_billing/zzjg;

    iget-object v6, v6, Ll62;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/zzjg;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v13}, Lcom/google/android/gms/internal/play_billing/zzgs;->zza(I)Z

    move-result v13

    if-nez v13, :cond_a6

    if-nez v4, :cond_a5

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v13, v4, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v15

    if-ne v13, v15, :cond_a4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->a()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v13

    iput-object v13, v4, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_a4
    move-object v4, v13

    :cond_a5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    const/4 v0, 0x1

    invoke-static {v6, v0, v13}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result v13

    const/4 v0, 0x2

    invoke-static {v11, v0, v15}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result v15

    add-int/2addr v15, v13

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    new-array v0, v15, [B

    new-instance v13, Lngb;

    invoke-direct {v13, v0, v15}, Lngb;-><init>([BI)V

    :try_start_0
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v2, 0x1

    invoke-static {v13, v6, v2, v15}, Lxib;->g(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V

    const/4 v15, 0x2

    invoke-static {v13, v11, v15, v12}, Lxib;->g(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzA()V

    new-instance v12, Lqfb;

    invoke-direct {v12, v0}, Lqfb;-><init>([B)V

    const/4 v13, 0x3

    shl-int/lit8 v0, v7, 0x3

    or-int/2addr v0, v15

    invoke-virtual {v4, v0, v12}, Lcom/google/android/gms/internal/play_billing/zzir;->b(ILjava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    :cond_a6
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto :goto_62

    :catch_0
    move-exception v0

    invoke-static {v0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/16 v21, 0x0

    return v21

    :goto_63
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    goto/16 :goto_60

    :cond_a7
    if-eqz v4, :cond_a8

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iput-object v4, v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_a8
    if-nez v10, :cond_aa

    if-ne v1, v5, :cond_a9

    goto :goto_64

    :cond_a9
    invoke-static/range {v17 .. v17}, Lah;->g(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_aa
    const/16 v21, 0x0

    if-gt v1, v5, :cond_ab

    if-ne v14, v10, :cond_ab

    :goto_64
    return v1

    :cond_ab
    invoke-static/range {v17 .. v17}, Lah;->g(Ljava/lang/String;)V

    return v21

    :cond_ac
    const/16 v21, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return v21

    nop

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
.end method

.method public final u(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

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

.method public final w(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final y(I)Lcom/google/android/gms/internal/play_billing/zzgs;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgs;

    return-object p0
.end method

.method public final z(I)Lkqb;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lkqb;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lkpb;->b:Lkpb;

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/p;->e:Lcom/google/android/gms/internal/play_billing/zzhr;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object p0
.end method
