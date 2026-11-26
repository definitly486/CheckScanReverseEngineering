.class public final Lcom/google/android/gms/internal/measurement/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnsa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnsa<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final m:[I

.field public static final n:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/zzafc;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/measurement/g;

.field public final l:Lera;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->m:[I

    invoke-static {}, Leta;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/zzafc;[IIILcom/google/android/gms/internal/measurement/g;Lcom/google/android/gms/internal/measurement/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/d;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/d;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/d;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/d;->g:Z

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/measurement/zzadr;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/d;->h:[I

    iput p7, p0, Lcom/google/android/gms/internal/measurement/d;->i:I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/d;->j:I

    iput-object p9, p0, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/d;->l:Lera;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    return-void
.end method

.method public static k(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static m(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mutating immutable message: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static n(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static final w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lgqa;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzagm;->zza:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const-string p0, "unsupported field type."

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    return v0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lhqa;->c([BILgqa;)I

    move-result p0

    iget-wide p1, p5, Lgqa;->b:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lgqa;->c:Ljava/lang/Object;

    return p0

    :pswitch_2
    invoke-static {p0, p1, p5}, Lhqa;->a([BILgqa;)I

    move-result p0

    iget p1, p5, Lgqa;->a:I

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lgqa;->c:Ljava/lang/Object;

    return p0

    :pswitch_3
    invoke-static {p0, p1, p5}, Lhqa;->g([BILgqa;)I

    move-result p0

    return p0

    :pswitch_4
    sget-object p3, Lksa;->c:Lksa;

    invoke-virtual {p3, p4}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lhqa;->h(Lnsa;[BIILgqa;)I

    move-result p0

    return p0

    :pswitch_5
    invoke-static {p0, p1, p5}, Lhqa;->f([BILgqa;)I

    move-result p0

    return p0

    :pswitch_6
    invoke-static {p0, p1, p5}, Lhqa;->c([BILgqa;)I

    move-result p0

    iget-wide p1, p5, Lgqa;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lgqa;->c:Ljava/lang/Object;

    return p0

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    invoke-static {p1, p0}, Lhqa;->d(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lgqa;->c:Ljava/lang/Object;

    return p2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    invoke-static {p1, p0}, Lhqa;->e(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lgqa;->c:Ljava/lang/Object;

    return p2

    :pswitch_9
    invoke-static {p0, p1, p5}, Lhqa;->a([BILgqa;)I

    move-result p0

    iget p1, p5, Lgqa;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lgqa;->c:Ljava/lang/Object;

    return p0

    :pswitch_a
    invoke-static {p0, p1, p5}, Lhqa;->c([BILgqa;)I

    move-result p0

    iget-wide p1, p5, Lgqa;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lgqa;->c:Ljava/lang/Object;

    return p0

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    invoke-static {p1, p0}, Lhqa;->d(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lgqa;->c:Ljava/lang/Object;

    return p2

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    invoke-static {p1, p0}, Lhqa;->e(I[B)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lgqa;->c:Ljava/lang/Object;

    return p2

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

.method public static x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zza()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->a()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_0
    return-object v0
.end method

.method public static z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v4, v2, p1, v3, p0}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " not found. Known fields are "

    invoke-static {v4, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget p0, p0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final B(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    aget p1, v0, p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C(I)Lnsa;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lnsa;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lksa;->c:Lksa;

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final D(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final E(I)Lcom/google/android/gms/internal/measurement/zzadz;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadz;

    return-object p0
.end method

.method public final F(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long p0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {v1, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final G(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    return-void
.end method

.method public final H(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lnsa;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final I(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    return-void
.end method

.method public final J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    iget-object p2, p0, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    iget-object p0, p0, Lwra;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object p3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v5, v3}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result v3

    const/4 v6, 0x2

    invoke-static {p2, v6, v4}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    new-array v3, v4, [B

    sget-boolean v7, Lcom/google/android/gms/internal/measurement/zzada;->b:Z

    new-instance v7, Lqqa;

    invoke-direct {v7, v3, v4}, Lqqa;-><init>([BI)V

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, p0, v5, v4}, Lgra;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V

    invoke-static {v7, p2, v6, v2}, Lgra;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzH()V

    new-instance v2, Lmqa;

    invoke-direct {v2, v3}, Lmqa;-><init>([B)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v3, v0, 0x3

    move-object v4, p3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaga;

    or-int/2addr v3, v6

    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object p3
.end method

.method public final K(ILjava/lang/Object;Lpqa;)V
    .locals 4

    iget-object v0, p3, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0xfffff

    and-int/2addr p1, v2

    int-to-long v2, p1

    const/4 p1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p3, p1}, Lpqa;->q(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p2, p0}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/d;->g:Z

    if-eqz p0, :cond_2

    invoke-virtual {p3, p1}, Lpqa;->q(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p2, p0}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object p0

    invoke-static {v2, v3, p2, p0}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d;->l(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->g()V

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->d()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    sget-object v6, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzaew;->zzd()V

    invoke-virtual {v6, p1, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaef;->zzb()V

    goto :goto_1

    :cond_2
    aget v0, v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lnsa;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v0

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lnsa;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->zzd()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->l:Lera;

    invoke-virtual {p0, p1}, Lera;->a(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    nop

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

.method public final b(Ljava/lang/Object;Lpqa;Lcom/google/android/gms/internal/measurement/zzadf;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v9, v7, Lpqa;->a:Lcom/google/android/gms/internal/measurement/zzacv;

    iget-object v10, v1, Lcom/google/android/gms/internal/measurement/d;->h:[I

    iget v11, v1, Lcom/google/android/gms/internal/measurement/d;->j:I

    iget v12, v1, Lcom/google/android/gms/internal/measurement/d;->i:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/d;->m(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    const/4 v13, 0x0

    move-object v6, v5

    move-object v5, v13

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lpqa;->x()I

    move-result v2

    iget v0, v1, Lcom/google/android/gms/internal/measurement/d;->c:I

    const/4 v14, 0x0

    if-lt v2, v0, :cond_1

    iget v0, v1, Lcom/google/android/gms/internal/measurement/d;->d:I

    if-gt v2, v0, :cond_1

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/measurement/d;->v(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    move v15, v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :goto_2
    if-gez v15, :cond_6

    const v0, 0x7fffffff

    if-ne v2, v0, :cond_2

    move-object v4, v5

    :goto_3
    if-ge v12, v11, :cond_15

    aget v3, v10, v12

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    :try_start_1
    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-nez v0, :cond_3

    move-object v0, v13

    goto :goto_4

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v8, v0, v2}, Lcom/google/android/gms/internal/measurement/zzadf;->zzc(Lcom/google/android/gms/internal/measurement/zzafc;I)Lcom/google/android/gms/internal/measurement/zzadt;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v0

    goto :goto_6

    :goto_5
    move-object/from16 v19, v5

    goto/16 :goto_1d

    :cond_4
    :goto_6
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/measurement/g;->b(ILjava/lang/Object;Lpqa;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    move-object v4, v5

    :goto_7
    if-ge v12, v11, :cond_15

    aget v3, v10, v12

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadr;

    throw v13

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_6
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v3
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    const/4 v13, 0x3

    const/4 v4, 0x1

    const v18, 0xfffff

    packed-switch v3, :pswitch_data_0

    if-nez v5, :cond_7

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v0

    goto :goto_9

    :catch_0
    move-object/from16 v2, p1

    move-object v15, v1

    :catch_1
    :goto_8
    move-object/from16 v19, v5

    goto/16 :goto_19

    :cond_7
    :goto_9
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v5, v7}, Lcom/google/android/gms/internal/measurement/g;->b(ILjava/lang/Object;Lpqa;)Z

    move-result v0
    :try_end_6
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_9

    move-object v4, v5

    :goto_a
    if-ge v12, v11, :cond_8

    aget v3, v10, v12

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    move-object v6, v5

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_8
    move-object/from16 v3, p1

    goto/16 :goto_1c

    :cond_9
    move-object/from16 v3, p1

    :goto_b
    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    goto/16 :goto_1e

    :catch_2
    move-object/from16 v3, p1

    move-object v15, v1

    move-object v2, v3

    goto/16 :goto_1a

    :pswitch_0
    move-object/from16 v3, p1

    :try_start_7
    invoke-virtual {v1, v2, v15, v3}, Lcom/google/android/gms/internal/measurement/d;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v4

    invoke-virtual {v7, v13}, Lpqa;->q(I)V

    invoke-virtual {v7, v0, v4, v8}, Lpqa;->s(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v1, v2, v15, v3, v0}, Lcom/google/android/gms/internal/measurement/d;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    move-object v15, v1

    move-object v2, v3

    :goto_d
    move-object/from16 v19, v5

    goto/16 :goto_18

    :catch_3
    move-object v15, v1

    move-object v2, v3

    goto :goto_8

    :pswitch_1
    move-object/from16 v3, p1

    and-int v0, v0, v18

    invoke-virtual {v7, v14}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v19, v15

    int-to-long v14, v0

    invoke-static {v14, v15, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v14, v19

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :pswitch_2
    move-object/from16 v3, p1

    move v14, v15

    and-int v0, v0, v18

    const/4 v4, 0x0

    :try_start_8
    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result v4
    :try_end_8
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_9
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v19, v5

    move-object v15, v6

    int-to-long v5, v0

    :try_start_a
    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    :goto_e
    move-object v2, v3

    move-object v6, v15

    move-object v15, v1

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    :goto_f
    move-object v6, v15

    goto/16 :goto_1d

    :catch_4
    :goto_10
    move-object v2, v3

    move-object v6, v15

    move-object v15, v1

    goto/16 :goto_19

    :catchall_4
    move-exception v0

    move-object/from16 v19, v5

    move-object v15, v6

    goto/16 :goto_1d

    :catchall_5
    move-exception v0

    move-object/from16 v19, v5

    move-object v15, v6

    goto :goto_f

    :catch_5
    move-object/from16 v19, v5

    move-object v15, v6

    goto :goto_10

    :pswitch_3
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto :goto_e

    :pswitch_4
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto :goto_e

    :pswitch_5
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v4, v14

    move v14, v15

    move-object v15, v6

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result v4

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_12

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    if-nez v19, :cond_b

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    goto :goto_11

    :cond_b
    move-object/from16 v0, v19

    :goto_11
    int-to-long v4, v4

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 v2, v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    move-object v5, v0

    move-object v6, v15

    goto/16 :goto_b

    :cond_c
    :goto_12
    and-int v0, v0, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_6
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_7
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    invoke-virtual {v7}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_8
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Lpqa;->q(I)V

    invoke-virtual {v7, v0, v4, v8}, Lpqa;->r(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v1, v2, v14, v3, v0}, Lcom/google/android/gms/internal/measurement/d;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_9
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    invoke-virtual {v1, v0, v3, v7}, Lcom/google/android/gms/internal/measurement/d;->K(ILjava/lang/Object;Lpqa;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_a
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_b
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_c
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_e
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_f
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_10
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_11
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    int-to-long v5, v0

    invoke-static {v5, v6, v3, v4}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_12
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v2

    and-int v2, v2, v18

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v2

    invoke-static {v4, v5, v3, v2}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_d
    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzaew;->zze()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v6

    invoke-static {v6, v2}, Lxra;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-static {v4, v5, v3, v6}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v6

    :cond_e
    :goto_13
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    invoke-virtual {v7, v2, v0, v8}, Lpqa;->p(Lcom/google/android/gms/internal/measurement/zzaew;Lwra;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_e

    :pswitch_13
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v2, v8}, Lpqa;->h(Lcom/google/android/gms/internal/measurement/zzaef;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_e

    :pswitch_14
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move-object v15, v6

    and-int v0, v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->o(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_e

    :pswitch_15
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move-object v15, v6

    and-int v0, v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->n(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_e

    :pswitch_16
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move-object v15, v6

    and-int v0, v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->m(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_e

    :pswitch_17
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move-object v15, v6

    and-int v0, v0, v18

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->l(Lcom/google/android/gms/internal/measurement/zzaef;)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_e

    :pswitch_18
    move-object/from16 v3, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v6

    and-int v0, v0, v18

    int-to-long v4, v0

    :try_start_b
    invoke-static {v3, v4, v5}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->k(Lcom/google/android/gms/internal/measurement/zzaef;)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object v6, v15

    move-object/from16 v5, v19

    move-object v15, v1

    move-object v1, v3

    move-object v3, v0

    :try_start_c
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/f;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g;)Ljava/lang/Object;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v2, v1

    :goto_14
    move-object v1, v15

    goto/16 :goto_b

    :catchall_6
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catch_6
    move-object v2, v1

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v3

    move-object v6, v15

    move-object/from16 v5, v19

    move-object v15, v1

    goto/16 :goto_1d

    :catch_7
    move-object v6, v15

    move-object v15, v1

    move-object v2, v3

    goto/16 :goto_19

    :pswitch_19
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    :try_start_d
    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->j(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1a
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->e(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1b
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->d(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1c
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->c(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1d
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->b(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1e
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->B(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_1f
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->a(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_20
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->A(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_21
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->z(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_22
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->o(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_23
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->n(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_24
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->m(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_25
    move-object/from16 v2, p1

    move-object v15, v1

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->l(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_d

    :pswitch_26
    move v14, v15

    move-object v15, v1

    move v1, v2

    move-object/from16 v2, p1

    and-int v0, v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v3

    invoke-virtual {v7, v3}, Lpqa;->k(Lcom/google/android/gms/internal/measurement/zzaef;)V

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4
    :try_end_d
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v20, v2

    move v2, v1

    move-object/from16 v1, v20

    :try_start_e
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/f;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g;)Ljava/lang/Object;

    move-result-object v5
    :try_end_e
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object v2, v1

    goto/16 :goto_14

    :catch_8
    move-object/from16 v19, v5

    :catch_9
    move-object v2, v1

    goto/16 :goto_19

    :pswitch_27
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    :try_start_f
    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->j(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :catchall_8
    move-exception v0

    goto/16 :goto_1d

    :pswitch_28
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->i(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_29
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v1

    and-int v0, v0, v18

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v1, v8}, Lpqa;->g(Lcom/google/android/gms/internal/measurement/zzaef;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    goto/16 :goto_18

    :pswitch_2a
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_10

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0, v4}, Lpqa;->f(Lcom/google/android/gms/internal/measurement/zzaef;Z)V

    goto/16 :goto_18

    :cond_10
    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4}, Lpqa;->f(Lcom/google/android/gms/internal/measurement/zzaef;Z)V

    goto/16 :goto_18

    :pswitch_2b
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->e(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_2c
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->d(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_2d
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->c(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_2e
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->b(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_2f
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->B(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_30
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->a(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_31
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->A(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_32
    move-object/from16 v2, p1

    move-object v15, v1

    move-object/from16 v19, v5

    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lvp3;->h(Ljava/lang/Object;J)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpqa;->z(Lcom/google/android/gms/internal/measurement/zzaef;)V

    goto/16 :goto_18

    :pswitch_33
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v1

    invoke-virtual {v7, v13}, Lpqa;->q(I)V

    invoke-virtual {v7, v0, v1, v8}, Lpqa;->s(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v15, v14, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_34
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzu()J

    move-result-wide v3

    int-to-long v0, v0

    invoke-static {v2, v0, v1, v3, v4}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_35
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzt()I

    move-result v1

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_36
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzs()J

    move-result-wide v3

    int-to-long v0, v0

    invoke-static {v2, v0, v1, v3, v4}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_37
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result v1

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_38
    move-object/from16 v19, v5

    move v4, v14

    move v14, v15

    move-object v15, v1

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzq()I

    move-result v3

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_17

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    if-nez v19, :cond_12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    move-object v5, v0

    goto :goto_16

    :cond_12
    move-object/from16 v5, v19

    :goto_16
    int-to-long v3, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaga;

    shl-int/lit8 v1, v1, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    goto/16 :goto_14

    :cond_13
    :goto_17
    and-int v0, v0, v18

    int-to-long v0, v0

    invoke-static {v3, v0, v1, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_39
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v1

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3a
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    invoke-virtual {v7}, Lpqa;->y()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v1

    int-to-long v3, v0

    invoke-static {v3, v4, v2, v1}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3b
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Lpqa;->q(I)V

    invoke-virtual {v7, v0, v1, v8}, Lpqa;->r(Ljava/lang/Object;Lnsa;Lcom/google/android/gms/internal/measurement/zzadf;)V

    invoke-virtual {v15, v14, v2, v0}, Lcom/google/android/gms/internal/measurement/d;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3c
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    invoke-virtual {v15, v0, v2, v7}, Lcom/google/android/gms/internal/measurement/d;->K(ILjava/lang/Object;Lpqa;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3d
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzk()Z

    move-result v1

    int-to-long v3, v0

    sget-object v0, Leta;->c:Ldta;

    invoke-virtual {v0, v2, v3, v4, v1}, Ldta;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3e
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzj()I

    move-result v1

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_3f
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzi()J

    move-result-wide v3

    int-to-long v0, v0

    invoke-static {v2, v0, v1, v3, v4}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_40
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzh()I

    move-result v1

    int-to-long v3, v0

    invoke-static {v1, v3, v4, v2}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_41
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzf()J

    move-result-wide v3

    int-to-long v0, v0

    invoke-static {v2, v0, v1, v3, v4}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_42
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzg()J

    move-result-wide v3

    int-to-long v0, v0

    invoke-static {v2, v0, v1, v3, v4}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_43
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zze()F

    move-result v1

    int-to-long v3, v0

    sget-object v0, Leta;->c:Ldta;

    invoke-virtual {v0, v2, v3, v4, v1}, Ldta;->j(Ljava/lang/Object;JF)V

    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto :goto_18

    :pswitch_44
    move-object/from16 v2, p1

    move-object/from16 v19, v5

    move v14, v15

    move-object v15, v1

    and-int v0, v0, v18

    invoke-virtual {v7, v4}, Lpqa;->q(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacv;->zzd()D

    move-result-wide v4
    :try_end_f
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    int-to-long v0, v0

    move-wide v2, v0

    :try_start_10
    sget-object v0, Leta;->c:Ldta;
    :try_end_10
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 v1, p1

    :try_start_11
    invoke-virtual/range {v0 .. v5}, Ldta;->n(Ljava/lang/Object;JD)V
    :try_end_11
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object v2, v1

    :try_start_12
    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V
    :try_end_12
    .catch Lcom/google/android/gms/internal/measurement/zzaeg; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :goto_18
    move-object v1, v15

    move-object/from16 v5, v19

    goto/16 :goto_b

    :catchall_9
    move-exception v0

    move-object v2, v1

    goto :goto_1d

    :catchall_a
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_1d

    :catch_a
    move-object/from16 v2, p1

    goto :goto_19

    :catchall_b
    move-exception v0

    move-object/from16 v2, p1

    move-object v15, v1

    goto/16 :goto_5

    :catch_b
    :goto_19
    move-object/from16 v5, v19

    :goto_1a
    if-nez v5, :cond_14

    :try_start_13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    move-object v5, v0

    :cond_14
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4, v5, v7}, Lcom/google/android/gms/internal/measurement/g;->b(ILjava/lang/Object;Lpqa;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v0, :cond_17

    move-object v4, v5

    :goto_1b
    if-ge v12, v11, :cond_15

    aget v3, v10, v12

    move-object v5, v6

    move-object/from16 v6, p1

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, p0

    move-object/from16 v2, p1

    goto :goto_1b

    :cond_15
    :goto_1c
    if-eqz v4, :cond_16

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaga;

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_16
    return-void

    :cond_17
    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :goto_1d
    move-object/from16 v5, v19

    :goto_1e
    move-object v4, v5

    :goto_1f
    if-ge v12, v11, :cond_18

    aget v3, v10, v12

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v12, v12, 0x1

    move-object v6, v5

    goto :goto_1f

    :cond_18
    move-object v5, v6

    if-eqz v4, :cond_19

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaga;

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v4, v1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_19
    throw v0

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

.method public final c(Ljava/lang/Object;[BIILgqa;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/d;->y(Ljava/lang/Object;[BIIILgqa;)I

    return-void
.end method

.method public final d(Ljava/lang/Object;Lbra;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-object v7, v6, Lbra;->a:Lcom/google/android/gms/internal/measurement/zzada;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object v3, v2, Lgra;->a:Losa;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lgra;->b()Ljava/util/Iterator;

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
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v12, v5

    if-ge v2, v12, :cond_c

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v13

    aget v14, v5, v2

    const/16 v15, 0x11

    const/16 v16, 0x0

    sget-object v11, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

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

    const/16 v20, 0x3f

    const/4 v12, 0x4

    const/4 v15, 0x3

    packed-switch v13, :pswitch_data_0

    :cond_4
    :goto_4
    const/16 v17, 0x0

    goto/16 :goto_e

    :pswitch_0
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v13, v19

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v7, v14, v15}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    invoke-interface {v8, v5, v6}, Lnsa;->d(Ljava/lang/Object;Lbra;)V

    invoke-virtual {v7, v14, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    add-long v12, v10, v10

    shr-long v10, v10, v20

    xor-long/2addr v10, v12

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    add-int v8, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v8

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzd(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzc(II)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzd(II)V

    goto :goto_4

    :pswitch_7
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbra;->a(ILjava/lang/Object;Lnsa;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v13, v19

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzi(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzh(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzc(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v7, v14, v5}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1, v10, v11}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v13, v19

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    iget-object v10, v8, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    iget-object v8, v8, Lwra;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

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

    invoke-virtual {v7, v14, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    move/from16 v19, v3

    move/from16 v3, v18

    invoke-static {v8, v3, v13}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result v13

    invoke-static {v10, v12, v15}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/measurement/zzada;->zzr(I)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v8, v3, v13}, Lgra;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V

    invoke-static {v7, v10, v12, v11}, Lgra;->e(Lcom/google/android/gms/internal/measurement/zzada;Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)V

    move/from16 v3, v19

    const/16 v18, 0x1

    goto :goto_5

    :pswitch_13
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

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

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v7, v3, v15}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    invoke-interface {v8, v11, v6}, Lnsa;->d(Ljava/lang/Object;Lbra;)V

    invoke-virtual {v7, v3, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    move/from16 v3, v19

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x1

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->h(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_15
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->m(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_16
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->j(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_17
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->o(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_18
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->p(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_19
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->l(ILjava/util/List;Lbra;Z)V

    goto :goto_7

    :pswitch_1a
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->q(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_1b
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->n(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_1c
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->i(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_1d
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->k(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_1e
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->g(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_1f
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->f(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_20
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->e(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_21
    move/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->d(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_7

    :pswitch_22
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->h(ILjava/util/List;Lbra;Z)V

    :goto_8
    move/from16 v17, v12

    move/from16 v3, v19

    goto/16 :goto_e

    :pswitch_23
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->m(ILjava/util/List;Lbra;Z)V

    goto :goto_8

    :pswitch_24
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->j(ILjava/util/List;Lbra;Z)V

    goto :goto_8

    :pswitch_25
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->o(ILjava/util/List;Lbra;Z)V

    goto :goto_8

    :pswitch_26
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->p(ILjava/util/List;Lbra;Z)V

    goto :goto_8

    :pswitch_27
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->l(ILjava/util/List;Lbra;Z)V

    goto :goto_8

    :pswitch_28
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v12, 0x0

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :pswitch_29
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v12, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v3, v10, v8}, Lbra;->a(ILjava/lang/Object;Lnsa;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :pswitch_2a
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    instance-of v8, v5, Lcom/google/android/gms/internal/measurement/zzaen;

    if-eqz v8, :cond_8

    move-object v8, v5

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaen;

    const/4 v12, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    invoke-interface {v8}, Lcom/google/android/gms/internal/measurement/zzaen;->zzc()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_7

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/internal/measurement/zzada;->zzi(ILjava/lang/String;)V

    goto :goto_c

    :cond_7
    check-cast v10, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_8
    const/4 v12, 0x0

    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/measurement/zzada;->zzi(ILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :pswitch_2b
    move-object/from16 v13, v19

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->q(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_2c
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->n(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_2d
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->i(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_2e
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->k(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_2f
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->g(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_30
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->f(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_31
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->e(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_32
    move-object/from16 v13, v19

    const/4 v12, 0x0

    move/from16 v19, v3

    aget v3, v8, v2

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Lcom/google/android/gms/internal/measurement/f;->d(ILjava/util/List;Lbra;Z)V

    goto/16 :goto_8

    :pswitch_33
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v7, v14, v15}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    invoke-interface {v8, v5, v6}, Lnsa;->d(Ljava/lang/Object;Lbra;)V

    invoke-virtual {v7, v14, v12}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    goto/16 :goto_e

    :pswitch_34
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    add-long v12, v10, v10

    shr-long v10, v10, v20

    xor-long/2addr v10, v12

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto/16 :goto_e

    :pswitch_35
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    add-int v5, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v5

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzd(II)V

    goto/16 :goto_e

    :pswitch_36
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    goto/16 :goto_e

    :pswitch_37
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto/16 :goto_e

    :pswitch_38
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzc(II)V

    goto/16 :goto_e

    :pswitch_39
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzd(II)V

    goto/16 :goto_e

    :pswitch_3a
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_e

    :pswitch_3b
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v8

    invoke-virtual {v6, v14, v5, v8}, Lbra;->a(ILjava/lang/Object;Lnsa;)V

    goto/16 :goto_e

    :pswitch_3c
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_9

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzi(ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_9
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzj(ILcom/google/android/gms/internal/measurement/zzacr;)V

    goto/16 :goto_e

    :pswitch_3d
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Leta;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzh(IZ)V

    goto/16 :goto_e

    :pswitch_3e
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto/16 :goto_e

    :pswitch_3f
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    goto :goto_e

    :pswitch_40
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzc(II)V

    goto :goto_e

    :pswitch_41
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto :goto_e

    :pswitch_42
    move-object/from16 v13, v19

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v13, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzf(IJ)V

    goto :goto_e

    :pswitch_43
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Leta;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->f(Ljava/lang/Object;J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zze(II)V

    goto :goto_e

    :pswitch_44
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Leta;->c:Ldta;

    invoke-virtual {v0, v1, v10, v11}, Ldta;->k(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v7, v14, v10, v11}, Lcom/google/android/gms/internal/measurement/zzada;->zzg(IJ)V

    :cond_a
    :goto_e
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_b
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljra;

    throw v16

    :cond_c
    const/16 v16, 0x0

    if-nez v9, :cond_d

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzaga;->zzg(Lhta;)V

    return-void

    :cond_d
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljra;

    throw v16

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

.method public final e(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v3, v3

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

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

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_4

    :pswitch_1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

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

    invoke-static {p1, v3, v4}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    :goto_3
    ushr-long v5, v3, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    goto/16 :goto_4

    :pswitch_4
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto :goto_3

    :pswitch_6
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_2

    :pswitch_b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_c
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Leta;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzaed;->zza(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto :goto_3

    :pswitch_f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto/16 :goto_3

    :pswitch_11
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v3, v4}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Leta;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->f(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    sget-object v5, Leta;->c:Ldta;

    invoke-virtual {v5, p1, v3, v4}, Ldta;->k(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzaed;->zza:[B

    goto/16 :goto_3

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/d;->j:I

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/d;->h:[I

    array-length v5, v3

    if-ge v1, v5, :cond_5

    aget v3, v3, v1

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaga;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz p0, :cond_6

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object p0, p0, Lgra;->a:Losa;

    invoke-virtual {p0}, Lssa;->hashCode()I

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

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/d;->m(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v6, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->B(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->B(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->u(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lxra;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v6, v7, p1, v2}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->A(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->A(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Leta;->i(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Leta;->c:Ldta;

    invoke-virtual {v1, p2, v6, v7}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Ldta;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Leta;->e(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Leta;->g(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Leta;->c:Ldta;

    invoke-virtual {v1, p2, v6, v7}, Ldta;->f(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Ldta;->j(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Leta;->c:Ldta;

    invoke-virtual {v4, p2, v6, v7}, Ldta;->k(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ldta;->n(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/measurement/d;->s(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    invoke-static {v5, p2}, Lcom/google/android/gms/internal/measurement/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz p0, :cond_6

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object p0, p0, Lgra;->a:Losa;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v5

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    const/4 p0, 0x0

    throw p0

    :cond_6
    :goto_4
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

.method public final g(Lcom/google/android/gms/internal/measurement/zzadu;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v7, 0xfffff

    move v3, v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v9, v5

    if-ge v2, v9, :cond_1d

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v10

    aget v11, v5, v2

    add-int/lit8 v12, v2, 0x2

    aget v5, v5, v12

    and-int v12, v5, v7

    const/16 v13, 0x11

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

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

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzadl;->zzJ:Lcom/google/android/gms/internal/measurement/zzadl;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadl;->zza()I

    move-result v12

    if-lt v10, v12, :cond_3

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzadl;->zzW:Lcom/google/android/gms/internal/measurement/zzadl;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzadl;->zza()I

    :cond_3
    int-to-long v12, v9

    const/16 v9, 0x3f

    const/4 v6, 0x4

    const/16 v7, 0x8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->a(Lnsa;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v7

    :goto_4
    add-int/2addr v8, v5

    goto/16 :goto_19

    :pswitch_1
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    add-long v10, v6, v6

    shr-long/2addr v6, v9

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    xor-long/2addr v6, v10

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v6

    :goto_5
    add-int/2addr v6, v5

    add-int/2addr v8, v6

    goto/16 :goto_19

    :pswitch_2
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v6

    add-int v7, v6, v6

    shr-int/lit8 v6, v6, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    xor-int/2addr v6, v7

    invoke-static {v6, v5, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_3
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_4
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_5
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v6

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6, v5, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_7
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_8
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    invoke-static {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/f;->A(ILjava/lang/Object;Lnsa;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :cond_4
    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6}, Lgta;->b(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_a
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v14, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_b
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_c
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_d
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->n(Ljava/lang/Object;J)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/measurement/d;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v5

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_11
    invoke-virtual {v0, v11, v2, v1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_19

    :pswitch_12
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaew;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_6
    const/4 v7, 0x0

    goto :goto_8

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzaew;->entrySet()Ljava/util/Set;

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

    invoke-virtual {v6, v11, v10, v9}, Lcom/google/android/gms/internal/measurement/zzaev;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_7

    :cond_6
    :goto_8
    add-int/2addr v8, v7

    goto/16 :goto_19

    :pswitch_13
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

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

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzafc;

    shl-int/lit8 v13, v11, 0x3

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v13

    add-int/2addr v13, v13

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->a(Lnsa;)I

    move-result v12

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_8
    :goto_a
    add-int/2addr v8, v10

    goto/16 :goto_19

    :pswitch_14
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->t(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_15
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->x(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_16
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_17
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_18
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->u(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_19
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->w(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->v(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_1f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->r(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_20
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v6

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_21
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v7

    if-lez v5, :cond_1c

    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    invoke-static {v5, v6, v5, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_19

    :pswitch_22
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_6

    :cond_9
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->t(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    :goto_b
    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    goto/16 :goto_8

    :pswitch_23
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_6

    :cond_a
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->x(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    goto :goto_b

    :pswitch_24
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->y(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_6

    :cond_b
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->u(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    goto :goto_b

    :pswitch_27
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_6

    :cond_c
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->w(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    goto :goto_b

    :pswitch_28
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_6

    :cond_d
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    mul-int/2addr v7, v6

    const/4 v6, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v9

    invoke-static {v9, v9, v7}, Ldq;->b(III)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :pswitch_29
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    const/4 v9, 0x0

    goto :goto_f

    :cond_e
    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v9

    mul-int/2addr v9, v7

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v7, :cond_10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/measurement/zzaem;

    if-eqz v12, :cond_f

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzaem;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzaem;->zzb()I

    move-result v11

    invoke-static {v11, v11, v9}, Ldq;->b(III)I

    move-result v9

    goto :goto_e

    :cond_f
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->a(Lnsa;)I

    move-result v11

    invoke-static {v11, v11, v9}, Ldq;->b(III)I

    move-result v9

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_10
    :goto_f
    add-int/2addr v8, v9

    goto/16 :goto_19

    :pswitch_2a
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_6

    :cond_11
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    mul-int/2addr v7, v6

    instance-of v9, v5, Lcom/google/android/gms/internal/measurement/zzaen;

    if-eqz v9, :cond_13

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzaen;

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v6, :cond_6

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/zzaen;->zzc()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v11, :cond_12

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v10

    invoke-static {v10, v10, v7}, Ldq;->b(III)I

    move-result v7

    goto :goto_11

    :cond_12
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lgta;->b(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v10, v7}, Ldq;->b(III)I

    move-result v7

    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_13
    const/4 v9, 0x0

    :goto_12
    if-ge v9, v6, :cond_6

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v11, :cond_14

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v10

    invoke-static {v10, v10, v7}, Ldq;->b(III)I

    move-result v7

    goto :goto_13

    :cond_14
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lgta;->b(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, v10, v7}, Ldq;->b(III)I

    move-result v7

    :goto_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :pswitch_2b
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    :goto_14
    const/4 v6, 0x0

    goto :goto_15

    :cond_15
    shl-int/lit8 v6, v11, 0x3

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    add-int/2addr v6, v14

    mul-int/2addr v6, v5

    :goto_15
    add-int/2addr v8, v6

    goto/16 :goto_19

    :pswitch_2c
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->y(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_6

    :cond_16
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->v(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    goto/16 :goto_b

    :pswitch_2f
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_17

    goto/16 :goto_6

    :cond_17
    shl-int/lit8 v7, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->s(Ljava/util/List;)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    goto/16 :goto_b

    :pswitch_30
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_18

    goto :goto_14

    :cond_18
    shl-int/lit8 v6, v11, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/f;->r(Ljava/util/List;)I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v7

    goto :goto_15

    :pswitch_31
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->y(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v11, v5}, Lcom/google/android/gms/internal/measurement/f;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/f;->a:Lcom/google/android/gms/internal/measurement/g;

    shl-int/lit8 v7, v11, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v7

    add-int/2addr v7, v7

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacb;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzacb;->a(Lnsa;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    add-long v10, v5, v5

    shr-long/2addr v5, v9

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    xor-long/2addr v5, v10

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    :goto_16
    add-int/2addr v5, v0

    add-int/2addr v8, v5

    :cond_19
    :goto_17
    move-object/from16 v0, p0

    goto/16 :goto_19

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v6, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    xor-int/2addr v5, v6

    invoke-static {v5, v0, v8}, Ldq;->b(III)I

    move-result v8

    goto :goto_17

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v7, v8}, Ldq;->b(III)I

    move-result v8

    :cond_1a
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_19

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto :goto_18

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto :goto_16

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5, v0, v8}, Ldq;->b(III)I

    move-result v8

    goto :goto_17

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_17

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v6

    invoke-static {v11, v5, v6}, Lcom/google/android/gms/internal/measurement/f;->A(ILjava/lang/Object;Lnsa;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz v6, :cond_1b

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzacr;->zzb()I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_17

    :cond_1b
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5}, Lgta;->b(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v5, v0, v8}, Lfe0;->b(IIII)I

    move-result v8

    goto/16 :goto_17

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v14, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v7, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v11, 0x3

    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result v0

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/zzada;->zzF(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v11, 0x3

    invoke-static {v0, v6, v8}, Ldq;->b(III)I

    move-result v8

    goto/16 :goto_18

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v11, 0x3

    invoke-static {v5, v7, v8}, Ldq;->b(III)I

    move-result v8

    :cond_1c
    :goto_19
    add-int/lit8 v2, v2, 0x3

    const v7, 0xfffff

    goto/16 :goto_0

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzaga;->zzi()I

    move-result v2

    add-int/2addr v2, v8

    iget-boolean v0, v0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz v0, :cond_20

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    iget-object v0, v0, Lgra;->a:Losa;

    iget v1, v0, Lssa;->c:I

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_1a
    if-ge v6, v1, :cond_1e

    invoke-virtual {v0, v6}, Lssa;->b(I)Lpsa;

    move-result-object v3

    iget-object v4, v3, Lpsa;->b:Ljava/lang/Comparable;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzadj;

    iget-object v3, v3, Lpsa;->c:Ljava/lang/Object;

    invoke-static {v4, v3}, Lgra;->h(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v3, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_1e
    invoke-virtual {v0}, Lssa;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzadj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lgra;->h(Lcom/google/android/gms/internal/measurement/zzadj;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v1, v16

    goto :goto_1b

    :cond_1f
    add-int v2, v2, v16

    :cond_20
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

.method public final h(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x0

    const v1, 0xfffff

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/measurement/d;->i:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_b

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/d;->h:[I

    aget v9, v5, v2

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v5

    add-int/lit8 v7, v9, 0x2

    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget v7, v13, v7

    and-int v8, v7, v1

    ushr-int/lit8 v7, v7, 0x14

    shl-int v12, v6, v7

    if-eq v8, v3, :cond_1

    if-eq v8, v1, :cond_0

    int-to-long v3, v8

    sget-object v6, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

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

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

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

    invoke-static {v8, p0, p1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    iget-object p1, p1, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzagm;->zza()Lcom/google/android/gms/internal/measurement/zzagn;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzagn;->zzi:Lcom/google/android/gms/internal/measurement/zzagn;

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

    sget-object p1, Lksa;->c:Lksa;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object p1

    :cond_5
    invoke-interface {p1, v3}, Lnsa;->h(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    :cond_6
    aget p0, v13, v9

    invoke-virtual {v7, p0, v9, v8}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v8, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lnsa;->h(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_4

    :cond_7
    and-int p0, v5, v1

    int-to-long p0, p0

    invoke-static {v8, p0, p1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object p1

    move v3, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lnsa;->h(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/d;->q(Ljava/lang/Object;IIII)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object p0

    and-int p1, v5, v1

    int-to-long v3, p1

    invoke-static {v8, v3, v4}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lnsa;->h(Ljava/lang/Object;)Z

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

    iget-boolean p0, v7, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz p0, :cond_c

    move-object p1, v8

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    invoke-virtual {p0}, Lgra;->d()Z

    move-result p0

    if-nez p0, :cond_c

    :goto_4
    return v0

    :cond_c
    return v6
.end method

.method public final i(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    array-length v3, v2

    const v4, 0xfffff

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

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

    invoke-static {p1, v2, v3}, Leta;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_1

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :cond_1
    return v0

    :pswitch_1
    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v6, v7}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Leta;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v3, v2, :cond_8

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v6, v7}, Leta;->d(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_8

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v6, v7}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Leta;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->f(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->f(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_8

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/d;->p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Leta;->c:Ldta;

    invoke-virtual {v2, p1, v6, v7}, Ldta;->k(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, p2, v6, v7}, Ldta;->k(Ljava/lang/Object;J)D

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
    iget v1, p0, Lcom/google/android/gms/internal/measurement/d;->j:I

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/d;->h:[I

    array-length v5, v3

    if-ge v1, v5, :cond_7

    aget v3, v3, v1

    add-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {p1, v5, v6}, Leta;->d(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {p2, v5, v6}, Leta;->d(Ljava/lang/Object;J)I

    move-result v5

    if-ne v7, v5, :cond_6

    invoke-virtual {p0, v0, v3, p1}, Lcom/google/android/gms/internal/measurement/d;->t(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v5, v3

    invoke-static {p1, v5, v6}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/measurement/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    iget-object v2, p2, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaga;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_5
    return v0

    :cond_9
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz p0, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzadr;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/zzadr;->zzb:Lgra;

    invoke-virtual {p0, p1}, Lgra;->equals(Ljava/lang/Object;)Z

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

.method public final j(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final p(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/d;->r(ILjava/lang/Object;)Z

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

.method public final r(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d;->j(I)I

    move-result p0

    and-int p1, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result p0

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_0
    invoke-static {p2, v0, v1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v0, v1}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v0, v1}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-static {p2, v0, v1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, v0, v1}, Leta;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p1, p0, Lcom/google/android/gms/internal/measurement/zzacr;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return v5

    :pswitch_a
    sget-object p0, Leta;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->d(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p2, v0, v1}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p2, v0, v1}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p2, v0, v1}, Leta;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Leta;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->f(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Leta;->c:Ldta;

    invoke-virtual {p0, p2, v0, v1}, Ldta;->k(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {p2, v2, v3}, Leta;->d(Ljava/lang/Object;J)I

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

.method public final s(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

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

    invoke-static {p2, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Leta;->e(IJLjava/lang/Object;)V

    return-void
.end method

.method public final t(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1}, Leta;->d(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p3}, Leta;->e(IJLjava/lang/Object;)V

    return-void
.end method

.method public final v(II)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->a:[I

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

.method public final y(Ljava/lang/Object;[BIIILgqa;)I
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    iget v11, v0, Lcom/google/android/gms/internal/measurement/d;->d:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d;->m(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/d;->n:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v17, 0x0

    const-string v18, "Failed to parse the message."

    if-ge v4, v5, :cond_8b

    const v19, 0xfffff

    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    invoke-static {v4, v3, v14, v6}, Lhqa;->b(I[BILgqa;)I

    move-result v14

    iget v4, v6, Lgqa;->a:I

    :cond_0
    move/from16 v34, v14

    move v14, v4

    move/from16 v4, v34

    ushr-int/lit8 v13, v14, 0x3

    iget v12, v0, Lcom/google/android/gms/internal/measurement/d;->c:I

    const/4 v3, 0x3

    if-le v13, v7, :cond_2

    div-int/2addr v8, v3

    if-lt v13, v12, :cond_1

    if-gt v13, v11, :cond_1

    invoke-virtual {v0, v13, v8}, Lcom/google/android/gms/internal/measurement/d;->v(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    move v12, v7

    :goto_2
    const/4 v7, -0x1

    goto :goto_4

    :cond_2
    if-lt v13, v12, :cond_3

    if-gt v13, v11, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v13, v7}, Lcom/google/android/gms/internal/measurement/d;->v(II)I

    move-result v8

    goto :goto_3

    :cond_3
    const/4 v8, -0x1

    :goto_3
    move v12, v8

    goto :goto_2

    :goto_4
    if-ne v12, v7, :cond_4

    move/from16 v10, p5

    move v3, v4

    move/from16 v20, v7

    move/from16 v31, v9

    move/from16 v22, v11

    move v9, v13

    move v11, v14

    move/from16 v32, v15

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object v15, v1

    move-object v14, v2

    move-object v13, v6

    goto/16 :goto_5b

    :cond_4
    and-int/lit8 v8, v14, 0x7

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/d;->a:[I

    add-int/lit8 v16, v12, 0x1

    aget v3, v7, v16

    move/from16 v16, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/d;->k(I)I

    move-result v4

    and-int v5, v3, v19

    int-to-long v5, v5

    move-wide/from16 v22, v5

    const/16 v5, 0x11

    const/high16 v24, 0x20000000

    const-wide/16 v25, 0x0

    const-string v6, ""

    const-string v27, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v28, v7

    const/16 v29, 0x1

    if-gt v4, v5, :cond_16

    add-int/lit8 v5, v12, 0x2

    aget v5, v28, v5

    ushr-int/lit8 v28, v5, 0x14

    shl-int v28, v29, v28

    and-int v5, v5, v19

    if-eq v5, v9, :cond_7

    move/from16 v7, v19

    move/from16 v30, v8

    if-eq v9, v7, :cond_5

    int-to-long v7, v9

    invoke-virtual {v1, v2, v7, v8, v15}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v7, 0xfffff

    :cond_5
    if-ne v5, v7, :cond_6

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    int-to-long v7, v5

    invoke-virtual {v1, v2, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    :goto_5
    move v15, v5

    goto :goto_6

    :cond_7
    move/from16 v30, v8

    move v7, v15

    move v15, v9

    :goto_6
    packed-switch v4, :pswitch_data_0

    move/from16 v5, v30

    const/4 v4, 0x3

    if-ne v5, v4, :cond_8

    or-int v17, v7, v28

    invoke-virtual {v0, v12, v2}, Lcom/google/android/gms/internal/measurement/d;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v13, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v4

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v6, v16

    const/16 v20, -0x1

    invoke-static/range {v3 .. v9}, Lhqa;->j(Ljava/lang/Object;Lnsa;[BIIILgqa;)I

    move-result v4

    move-object v8, v5

    invoke-virtual {v0, v12, v2, v3}, Lcom/google/android/gms/internal/measurement/d;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v15, v17

    goto/16 :goto_0

    :cond_8
    move-object/from16 v9, p6

    const/16 v20, -0x1

    move-object/from16 v8, p2

    move-object v10, v1

    move-object v1, v2

    move/from16 p3, v7

    move/from16 v22, v11

    move/from16 v4, v16

    goto/16 :goto_13

    :pswitch_0
    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    if-nez v5, :cond_9

    or-int v7, v7, v28

    invoke-static {v8, v4, v9}, Lhqa;->c([BILgqa;)I

    move-result v16

    iget-wide v3, v9, Lgqa;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v5

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    move v8, v12

    move v9, v15

    move/from16 v4, v16

    move v15, v7

    move v7, v13

    :goto_7
    move/from16 v16, v14

    goto/16 :goto_0

    :cond_9
    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    move-object v10, v2

    move/from16 p3, v7

    move/from16 v22, v11

    goto/16 :goto_13

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    if-nez v5, :cond_a

    or-int v3, v7, v28

    invoke-static {v8, v4, v9}, Lhqa;->a([BILgqa;)I

    move-result v4

    iget v5, v9, Lgqa;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v5

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move/from16 v5, p4

    move-object v6, v9

    :goto_9
    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    move v15, v3

    move-object v3, v8

    move v8, v12

    goto/16 :goto_0

    :cond_a
    move-object v10, v2

    move/from16 p3, v7

    goto/16 :goto_13

    :pswitch_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    if-nez v5, :cond_a

    invoke-static {v8, v4, v9}, Lhqa;->a([BILgqa;)I

    move-result v4

    iget v5, v9, Lgqa;->a:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v6

    const/high16 v16, -0x80000000

    and-int v3, v3, v16

    if-eqz v3, :cond_c

    if-eqz v6, :cond_c

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v3

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v14, v5}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move-object v3, v8

    move-object v6, v9

    :goto_a
    move v8, v12

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    move v15, v7

    move v7, v13

    goto/16 :goto_0

    :cond_c
    :goto_b
    or-int v3, v7, v28

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v4, v16

    move/from16 v5, v30

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v5, v3, :cond_a

    or-int v3, v7, v28

    invoke-static {v8, v4, v9}, Lhqa;->g([BILgqa;)I

    move-result v4

    iget-object v5, v9, Lgqa;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v10, v11, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    move/from16 v22, v11

    move/from16 v4, v16

    move/from16 v5, v30

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v5, v3, :cond_d

    or-int v7, v7, v28

    move-object v3, v1

    invoke-virtual {v0, v12, v3}, Lcom/google/android/gms/internal/measurement/d;->F(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v2

    move-object v6, v8

    move-object v8, v3

    move-object v3, v6

    move-object v6, v9

    move-object v9, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lhqa;->i(Ljava/lang/Object;Lnsa;[BIILgqa;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    invoke-virtual {v0, v12, v8, v3}, Lcom/google/android/gms/internal/measurement/d;->G(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v1

    move-object v2, v8

    move-object v1, v9

    goto :goto_a

    :cond_d
    move-object/from16 v34, v8

    move-object v8, v1

    move-object/from16 v1, v34

    move-object/from16 v34, v9

    move-object v9, v2

    move-object/from16 v2, v34

    move-object/from16 p3, v8

    move-object v8, v1

    move-object/from16 v1, p3

    move/from16 p3, v7

    :goto_c
    move-object v10, v9

    goto/16 :goto_13

    :pswitch_5
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v30

    const/4 v7, 0x2

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v7, :cond_11

    and-int v3, v3, v24

    if-eqz v3, :cond_e

    or-int v3, p3, v28

    invoke-static {v1, v4, v2}, Lhqa;->f([BILgqa;)I

    move-result v4

    move v5, v3

    goto :goto_e

    :cond_e
    invoke-static {v1, v4, v2}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v4, v2, Lgqa;->a:I

    if-ltz v4, :cond_10

    or-int v5, p3, v28

    if-nez v4, :cond_f

    iput-object v6, v2, Lgqa;->c:Ljava/lang/Object;

    :goto_d
    move v4, v3

    goto :goto_e

    :cond_f
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v1, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v2, Lgqa;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_d

    :goto_e
    iget-object v3, v2, Lgqa;->c:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10, v11, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v1

    move-object v6, v2

    move-object v2, v8

    move-object v1, v9

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move/from16 v11, v22

    :goto_f
    move v15, v5

    move/from16 v5, p4

    goto/16 :goto_0

    :cond_10
    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_11
    move-object v10, v8

    move-object v8, v1

    move-object v1, v10

    goto :goto_c

    :pswitch_6
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-nez v5, :cond_11

    or-int v3, p3, v28

    invoke-static {v1, v4, v2}, Lhqa;->c([BILgqa;)I

    move-result v4

    iget-wide v5, v2, Lgqa;->b:J

    cmp-long v5, v5, v25

    if-eqz v5, :cond_12

    move/from16 v5, v29

    goto :goto_10

    :cond_12
    const/4 v5, 0x0

    :goto_10
    sget-object v6, Leta;->c:Ldta;

    invoke-virtual {v6, v8, v10, v11, v5}, Ldta;->e(Ljava/lang/Object;JZ)V

    move v5, v3

    move-object v3, v1

    move-object v1, v9

    move v9, v15

    move v15, v5

    move/from16 v5, p4

    move-object v6, v2

    move-object v2, v8

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    :goto_11
    move/from16 v11, v22

    goto/16 :goto_0

    :pswitch_7
    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v30

    const/4 v3, 0x5

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v3, :cond_11

    add-int/lit8 v3, v4, 0x4

    or-int v5, p3, v28

    invoke-static {v4, v1}, Lhqa;->d(I[B)I

    move-result v4

    invoke-virtual {v9, v8, v10, v11, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v2

    move v4, v3

    move-object v2, v8

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move/from16 v11, v22

    move-object v3, v1

    move-object v1, v9

    move v9, v15

    goto :goto_f

    :pswitch_8
    move-wide/from16 v3, v22

    move/from16 v22, v11

    move-wide v10, v3

    move-object v9, v1

    move-object v8, v2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v3, v29

    move/from16 v5, v30

    const/16 v20, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    if-ne v5, v3, :cond_13

    add-int/lit8 v7, v4, 0x8

    or-int v16, p3, v28

    invoke-static {v4, v1}, Lhqa;->e(I[B)J

    move-result-wide v5

    move-object v3, v8

    move-object v8, v1

    move-object v1, v9

    move v9, v7

    move-object v7, v2

    move-object v2, v3

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v4, v9

    move v8, v12

    move v7, v13

    move v9, v15

    move/from16 v15, v16

    :goto_12
    move/from16 v11, v22

    goto/16 :goto_7

    :cond_13
    move-object v7, v2

    move-object v2, v8

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_c

    :pswitch_9
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    move-object/from16 v7, p6

    if-nez v5, :cond_14

    or-int v3, p3, v28

    invoke-static {v8, v4, v7}, Lhqa;->a([BILgqa;)I

    move-result v4

    iget v5, v7, Lgqa;->a:I

    invoke-virtual {v1, v2, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v6, v7

    goto/16 :goto_9

    :cond_14
    move-object v10, v1

    :cond_15
    move-object v1, v2

    goto/16 :goto_13

    :pswitch_a
    move-wide/from16 v4, v22

    move/from16 v22, v11

    move-wide v10, v4

    move-object/from16 v8, p2

    move/from16 p3, v7

    move/from16 v4, v16

    move/from16 v5, v30

    const/16 v20, -0x1

    move-object/from16 v7, p6

    if-nez v5, :cond_14

    or-int v9, p3, v28

    invoke-static {v8, v4, v7}, Lhqa;->c([BILgqa;)I

    move-result v16

    iget-wide v5, v7, Lgqa;->b:J

    move-wide v3, v10

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v3, v15

    move v15, v9

    move v9, v3

    move/from16 v5, p4

    move-object v6, v7

    move-object v3, v8

    move v8, v12

    move v7, v13

    move/from16 v4, v16

    goto :goto_12

    :pswitch_b
    move-object/from16 v8, p2

    move-object v10, v1

    move/from16 p3, v7

    move/from16 v4, v16

    move-wide/from16 v6, v22

    move/from16 v5, v30

    const/4 v3, 0x5

    const/16 v20, -0x1

    move/from16 v22, v11

    if-ne v5, v3, :cond_15

    add-int/lit8 v1, v4, 0x4

    or-int v3, p3, v28

    invoke-static {v4, v8}, Lhqa;->d(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sget-object v5, Leta;->c:Ldta;

    invoke-virtual {v5, v2, v6, v7, v4}, Ldta;->j(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move v4, v1

    move-object v1, v10

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v8, p2

    move-object v10, v1

    move/from16 p3, v7

    move/from16 v4, v16

    move-wide/from16 v6, v22

    move/from16 v3, v29

    move/from16 v5, v30

    const/16 v20, -0x1

    move/from16 v22, v11

    if-ne v5, v3, :cond_15

    add-int/lit8 v9, v4, 0x8

    or-int v11, p3, v28

    invoke-static {v4, v8}, Lhqa;->e(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Leta;->c:Ldta;

    move-wide/from16 v34, v6

    move-wide v5, v3

    move-wide/from16 v3, v34

    invoke-virtual/range {v1 .. v6}, Ldta;->n(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v3, v8

    move v4, v9

    move-object v1, v10

    move v8, v12

    move v7, v13

    move/from16 v16, v14

    move v9, v15

    move v15, v11

    goto/16 :goto_11

    :goto_13
    move/from16 v32, p3

    move v3, v4

    move-object v4, v8

    move v8, v12

    move v9, v13

    move v11, v14

    move/from16 v31, v15

    move-object/from16 v13, p6

    move-object v14, v1

    move-object v15, v10

    :goto_14
    move/from16 v10, p5

    goto/16 :goto_5b

    :cond_16
    move-object v10, v1

    move-object v1, v2

    move v5, v8

    move-wide/from16 v7, v22

    const/16 v20, -0x1

    move/from16 v22, v11

    const/16 v2, 0x1b

    if-ne v4, v2, :cond_1a

    const/4 v2, 0x2

    if-ne v5, v2, :cond_19

    invoke-virtual {v10, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_17

    const/16 v11, 0xa

    goto :goto_15

    :cond_17
    add-int v11, v3, v3

    :goto_15
    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v2

    invoke-virtual {v10, v1, v7, v8, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_18
    move-object v6, v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v2, v14

    move/from16 v4, v16

    move-object/from16 v14, p1

    invoke-static/range {v1 .. v7}, Lhqa;->m(Lnsa;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v4

    move v1, v2

    move-object/from16 v6, p6

    move/from16 v16, v1

    move-object v1, v10

    move v8, v12

    move v7, v13

    move-object v2, v14

    goto/16 :goto_11

    :cond_19
    move/from16 v34, v14

    move-object v14, v1

    move/from16 v1, v34

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    move v11, v1

    move/from16 v31, v9

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move-object v15, v10

    goto/16 :goto_4c

    :cond_1a
    move/from16 v34, v14

    move-object v14, v1

    move/from16 v1, v34

    const/16 v2, 0x31

    const-string v23, "Protocol message had invalid UTF-8."

    const-string v30, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v4, v2, :cond_6d

    int-to-long v2, v3

    invoke-virtual {v10, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzaef;

    invoke-interface {v11}, Lcom/google/android/gms/internal/measurement/zzaef;->zza()Z

    move-result v24

    if-nez v24, :cond_1b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v31, v1

    add-int v1, v24, v24

    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/measurement/zzaef;->zzg(I)Lcom/google/android/gms/internal/measurement/zzaef;

    move-result-object v11

    invoke-virtual {v10, v14, v7, v8, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_16

    :cond_1b
    move/from16 v31, v1

    :goto_16
    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1e

    and-int/lit8 v1, v31, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v2

    invoke-interface {v2}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v16

    move/from16 v8, v31

    invoke-static/range {v1 .. v7}, Lhqa;->j(Ljava/lang/Object;Lnsa;[BIIILgqa;)I

    move-result v16

    move-object/from16 v34, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v34

    invoke-interface {v2, v7}, Lnsa;->a(Ljava/lang/Object;)V

    iput-object v7, v6, Lgqa;->c:Ljava/lang/Object;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v7, v16

    :goto_17
    if-ge v7, v5, :cond_1d

    move/from16 v16, v4

    invoke-static {v3, v7, v6}, Lhqa;->a([BILgqa;)I

    move-result v4

    move/from16 p3, v1

    iget v1, v6, Lgqa;->a:I

    if-ne v8, v1, :cond_1c

    invoke-interface {v2}, Lnsa;->zza()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v6

    move/from16 v31, v9

    move/from16 v9, v16

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Lhqa;->j(Ljava/lang/Object;Lnsa;[BIIILgqa;)I

    move-result v4

    move/from16 v34, v5

    move-object v5, v1

    move v1, v6

    move-object v6, v7

    move v7, v4

    move/from16 v4, v34

    invoke-interface {v2, v5}, Lnsa;->a(Ljava/lang/Object;)V

    iput-object v5, v6, Lgqa;->c:Ljava/lang/Object;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    move v4, v9

    move/from16 v9, v31

    goto :goto_17

    :cond_1c
    move/from16 v31, v9

    move/from16 v9, v16

    :goto_18
    move v4, v5

    goto :goto_19

    :cond_1d
    move/from16 v31, v9

    move v9, v4

    goto :goto_18

    :goto_19
    move-object v2, v3

    move v11, v8

    move-object/from16 v33, v10

    move/from16 v27, v13

    move/from16 v32, v15

    move-object v10, v6

    move v13, v9

    move v9, v4

    move v4, v7

    goto/16 :goto_47

    :cond_1e
    move/from16 v8, v31

    move/from16 v31, v9

    move-object/from16 v2, p2

    move/from16 v9, p4

    move v11, v8

    move-object/from16 v33, v10

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move-object/from16 v10, p6

    goto/16 :goto_46

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v8, v31

    const/4 v2, 0x2

    move/from16 v31, v9

    move/from16 v9, v16

    if-ne v5, v2, :cond_22

    check-cast v11, Ltra;

    invoke-static {v3, v9, v6}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v2, v6, Lgqa;->a:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_1f

    invoke-static {v3, v1, v6}, Lhqa;->c([BILgqa;)I

    move-result v1

    move/from16 p3, v13

    iget-wide v13, v6, Lgqa;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ltra;->b(J)V

    move-object/from16 v14, p1

    move/from16 v13, p3

    goto :goto_1a

    :cond_1f
    move/from16 p3, v13

    if-ne v1, v2, :cond_21

    :cond_20
    :goto_1b
    move-object/from16 v14, p1

    move/from16 v27, p3

    move-object v2, v3

    move v11, v8

    move v13, v9

    move-object/from16 v33, v10

    move/from16 v32, v15

    move v9, v4

    move-object v10, v6

    :goto_1c
    move v4, v1

    goto/16 :goto_47

    :cond_21
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_22
    move/from16 p3, v13

    if-nez v5, :cond_23

    check-cast v11, Ltra;

    invoke-static {v3, v9, v6}, Lhqa;->c([BILgqa;)I

    move-result v1

    iget-wide v13, v6, Lgqa;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ltra;->b(J)V

    :goto_1d
    if-ge v1, v4, :cond_20

    invoke-static {v3, v1, v6}, Lhqa;->a([BILgqa;)I

    move-result v2

    iget v5, v6, Lgqa;->a:I

    if-ne v8, v5, :cond_20

    invoke-static {v3, v2, v6}, Lhqa;->c([BILgqa;)I

    move-result v1

    iget-wide v13, v6, Lgqa;->b:J

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ltra;->b(J)V

    goto :goto_1d

    :cond_23
    move-object/from16 v14, p1

    move/from16 v27, p3

    move-object v2, v3

    move v11, v8

    :goto_1e
    move v13, v9

    move-object/from16 v33, v10

    move/from16 v32, v15

    move v9, v4

    move-object v10, v6

    goto/16 :goto_46

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 p3, v13

    move/from16 v8, v31

    const/4 v2, 0x2

    move/from16 v31, v9

    move/from16 v9, v16

    if-ne v5, v2, :cond_26

    check-cast v11, Lkra;

    invoke-static {v3, v9, v6}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v2, v6, Lgqa;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_24

    invoke-static {v3, v1, v6}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v5, v6, Lgqa;->a:I

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v5

    invoke-virtual {v11, v5}, Lkra;->zzh(I)V

    goto :goto_1f

    :cond_24
    if-ne v1, v2, :cond_25

    goto :goto_1b

    :cond_25
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_26
    if-nez v5, :cond_23

    check-cast v11, Lkra;

    invoke-static {v3, v9, v6}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v2, v6, Lgqa;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lkra;->zzh(I)V

    :goto_20
    if-ge v1, v4, :cond_20

    invoke-static {v3, v1, v6}, Lhqa;->a([BILgqa;)I

    move-result v2

    iget v5, v6, Lgqa;->a:I

    if-ne v8, v5, :cond_20

    invoke-static {v3, v2, v6}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v2, v6, Lgqa;->a:I

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lkra;->zzh(I)V

    goto :goto_20

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 p3, v13

    move/from16 v8, v31

    const/4 v2, 0x2

    move/from16 v31, v9

    move/from16 v9, v16

    if-ne v5, v2, :cond_27

    invoke-static {v3, v9, v11, v6}, Lhqa;->l([BILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v1

    move v14, v9

    move-object v5, v11

    move v11, v8

    move-object v8, v3

    move v13, v1

    move-object v7, v6

    move v9, v4

    goto :goto_21

    :cond_27
    if-nez v5, :cond_28

    move-object v2, v3

    move v1, v8

    move v3, v9

    move-object v5, v11

    invoke-static/range {v1 .. v6}, Lhqa;->k(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v7

    move v11, v1

    move-object v8, v2

    move v14, v3

    move v1, v7

    move v9, v4

    move-object v7, v6

    move v13, v1

    :goto_21
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/f;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzaef;Lcom/google/android/gms/internal/measurement/zzadz;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/g;)Ljava/lang/Object;

    move/from16 v27, v2

    move-object v2, v8

    move-object/from16 v33, v10

    move v4, v13

    :goto_22
    move v13, v14

    move/from16 v32, v15

    move-object/from16 v14, p1

    :goto_23
    move-object v10, v7

    goto/16 :goto_47

    :cond_28
    move v11, v8

    move-object/from16 v14, p1

    move/from16 v27, p3

    move-object v2, v3

    goto/16 :goto_1e

    :pswitch_10
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v3, v11

    move v2, v13

    move/from16 v14, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    move/from16 v9, p4

    if-ne v5, v1, :cond_30

    invoke-static {v8, v14, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v4, v7, Lgqa;->a:I

    if-ltz v4, :cond_2f

    array-length v5, v8

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_2e

    if-nez v4, :cond_29

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_29
    invoke-static {v8, v1, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    add-int/2addr v1, v4

    :goto_25
    if-ge v1, v9, :cond_2d

    invoke-static {v8, v1, v7}, Lhqa;->a([BILgqa;)I

    move-result v4

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_2d

    invoke-static {v8, v4, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v4, v7, Lgqa;->a:I

    if-ltz v4, :cond_2c

    array-length v5, v8

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_2b

    if-nez v4, :cond_2a

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_2a
    invoke-static {v8, v1, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_2b
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_2c
    const/16 v21, 0x0

    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_2d
    const/16 v21, 0x0

    move v4, v1

    move/from16 v27, v2

    move-object v2, v8

    move-object/from16 v33, v10

    goto :goto_22

    :cond_2e
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_2f
    const/16 v21, 0x0

    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_30
    move/from16 v27, v2

    move-object v2, v8

    move-object/from16 v33, v10

    move v13, v14

    move/from16 v32, v15

    move-object/from16 v14, p1

    :goto_26
    move-object v10, v7

    goto/16 :goto_46

    :pswitch_11
    move-object/from16 v8, p2

    move-object/from16 v7, p6

    move-object v3, v11

    move v2, v13

    move/from16 v14, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    move/from16 v9, p4

    if-ne v5, v1, :cond_31

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v1

    move-object v6, v3

    move-object v3, v8

    move v5, v9

    move v4, v14

    move-object/from16 v14, p1

    move v9, v2

    move v2, v11

    invoke-static/range {v1 .. v7}, Lhqa;->m(Lnsa;I[BIILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v1

    move-object v2, v3

    move v13, v4

    move/from16 v27, v9

    move-object/from16 v33, v10

    move/from16 v32, v15

    move v4, v1

    move v9, v5

    goto/16 :goto_23

    :cond_31
    move v13, v14

    move-object/from16 v14, p1

    move/from16 v27, v2

    move-object v2, v8

    move-object/from16 v33, v10

    move/from16 v32, v15

    goto :goto_26

    :pswitch_12
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-wide/from16 v32, v2

    move-object v2, v11

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    move v9, v13

    move/from16 v13, v16

    if-ne v5, v1, :cond_3e

    const-wide/32 v28, 0x20000000

    and-long v28, v32, v28

    cmp-long v1, v28, v25

    if-nez v1, :cond_37

    invoke-static {v8, v13, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v3, v7, Lgqa;->a:I

    if-ltz v3, :cond_36

    if-nez v3, :cond_32

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v32, v15

    goto :goto_28

    :cond_32
    new-instance v5, Ljava/lang/String;

    move/from16 v32, v15

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v1, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v1, v3

    :goto_28
    if-ge v1, v4, :cond_35

    invoke-static {v8, v1, v7}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_35

    invoke-static {v8, v3, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v3, v7, Lgqa;->a:I

    if-ltz v3, :cond_34

    if-nez v3, :cond_33

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_33
    new-instance v5, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v8, v1, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_34
    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_35
    const/16 v21, 0x0

    move-object v2, v8

    move/from16 v27, v9

    move-object/from16 v33, v10

    move v9, v4

    move-object v10, v7

    goto/16 :goto_1c

    :cond_36
    const/16 v21, 0x0

    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_37
    move/from16 v32, v15

    invoke-static {v8, v13, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v3, v7, Lgqa;->a:I

    if-ltz v3, :cond_3d

    if-nez v3, :cond_38

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_38
    add-int v5, v1, v3

    invoke-static {v8, v1, v5}, Lgta;->a([BII)Z

    move-result v15

    if-eqz v15, :cond_3c

    new-instance v15, Ljava/lang/String;

    move/from16 p3, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v8, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    move/from16 v1, p3

    :goto_2a
    if-ge v1, v4, :cond_35

    invoke-static {v8, v1, v7}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_35

    invoke-static {v8, v3, v7}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v3, v7, Lgqa;->a:I

    if-ltz v3, :cond_3b

    if-nez v3, :cond_39

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_39
    add-int v5, v1, v3

    invoke-static {v8, v1, v5}, Lgta;->a([BII)Z

    move-result v15

    if-eqz v15, :cond_3a

    new-instance v15, Ljava/lang/String;

    move/from16 p3, v5

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v8, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3a
    invoke-static/range {v23 .. v23}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_3b
    const/16 v21, 0x0

    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_3c
    const/16 v21, 0x0

    invoke-static/range {v23 .. v23}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_3d
    const/16 v21, 0x0

    invoke-static/range {v27 .. v27}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_3e
    move/from16 v32, v15

    :cond_3f
    move-object v2, v8

    move/from16 v27, v9

    move-object/from16 v33, v10

    move v9, v4

    goto/16 :goto_26

    :pswitch_13
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v2, v11

    move/from16 v32, v15

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    move v9, v13

    move/from16 v13, v16

    if-ne v5, v1, :cond_44

    move-object v1, v2

    check-cast v1, Liqa;

    invoke-static {v8, v13, v7}, Lhqa;->a([BILgqa;)I

    move-result v2

    iget v3, v7, Lgqa;->a:I

    add-int/2addr v3, v2

    :goto_2b
    if-ge v2, v3, :cond_41

    invoke-static {v8, v2, v7}, Lhqa;->c([BILgqa;)I

    move-result v2

    iget-wide v5, v7, Lgqa;->b:J

    cmp-long v5, v5, v25

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    goto :goto_2c

    :cond_40
    const/4 v5, 0x0

    :goto_2c
    invoke-virtual {v1, v5}, Liqa;->b(Z)V

    goto :goto_2b

    :cond_41
    if-ne v2, v3, :cond_43

    :cond_42
    move/from16 v27, v9

    move-object/from16 v33, v10

    :goto_2d
    move v9, v4

    move-object v10, v7

    move v4, v2

    move-object v2, v8

    goto/16 :goto_47

    :cond_43
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_44
    if-nez v5, :cond_3f

    move-object v1, v2

    check-cast v1, Liqa;

    invoke-static {v8, v13, v7}, Lhqa;->c([BILgqa;)I

    move-result v2

    iget-wide v5, v7, Lgqa;->b:J

    cmp-long v3, v5, v25

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    goto :goto_2e

    :cond_45
    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {v1, v3}, Liqa;->b(Z)V

    :goto_2f
    if-ge v2, v4, :cond_42

    invoke-static {v8, v2, v7}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_42

    invoke-static {v8, v3, v7}, Lhqa;->c([BILgqa;)I

    move-result v2

    iget-wide v5, v7, Lgqa;->b:J

    cmp-long v3, v5, v25

    if-eqz v3, :cond_46

    const/4 v3, 0x1

    goto :goto_30

    :cond_46
    const/4 v3, 0x0

    :goto_30
    invoke-virtual {v1, v3}, Liqa;->b(Z)V

    goto :goto_2f

    :pswitch_14
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v2, v11

    move/from16 v32, v15

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    move v9, v13

    move/from16 v13, v16

    if-ne v5, v1, :cond_4d

    move-object v1, v2

    check-cast v1, Lkra;

    invoke-static {v8, v13, v7}, Lhqa;->a([BILgqa;)I

    move-result v2

    iget v3, v7, Lgqa;->a:I

    add-int v5, v2, v3

    array-length v6, v8

    if-gt v5, v6, :cond_4c

    iget v6, v1, Lkra;->d:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v6

    iget-object v6, v1, Lkra;->c:[I

    array-length v6, v6

    if-gt v3, v6, :cond_47

    move/from16 v16, v2

    move/from16 v27, v9

    move-object/from16 v33, v10

    goto :goto_32

    :cond_47
    if-eqz v6, :cond_49

    :goto_31
    if-ge v6, v3, :cond_48

    move/from16 v16, v2

    move/from16 v27, v9

    move-object/from16 v33, v10

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v15, 0xa

    invoke-static {v6, v2, v10, v9, v15}, Ldh;->c(IIIII)I

    move-result v6

    move/from16 v2, v16

    move/from16 v9, v27

    move-object/from16 v10, v33

    goto :goto_31

    :cond_48
    move/from16 v16, v2

    move/from16 v27, v9

    move-object/from16 v33, v10

    iget-object v2, v1, Lkra;->c:[I

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v1, Lkra;->c:[I

    goto :goto_32

    :cond_49
    move/from16 v16, v2

    move/from16 v27, v9

    move-object/from16 v33, v10

    const/16 v15, 0xa

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lkra;->c:[I

    :goto_32
    move/from16 v2, v16

    :goto_33
    if-ge v2, v5, :cond_4a

    invoke-static {v2, v8}, Lhqa;->d(I[B)I

    move-result v3

    invoke-virtual {v1, v3}, Lkra;->zzh(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_33

    :cond_4a
    if-ne v2, v5, :cond_4b

    :goto_34
    goto/16 :goto_2d

    :cond_4b
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_4c
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_4d
    move/from16 v27, v9

    move-object/from16 v33, v10

    const/4 v3, 0x5

    if-ne v5, v3, :cond_4f

    add-int/lit8 v1, v13, 0x4

    check-cast v2, Lkra;

    invoke-static {v13, v8}, Lhqa;->d(I[B)I

    move-result v3

    invoke-virtual {v2, v3}, Lkra;->zzh(I)V

    :goto_35
    if-ge v1, v4, :cond_4e

    invoke-static {v8, v1, v7}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_4e

    invoke-static {v3, v8}, Lhqa;->d(I[B)I

    move-result v1

    invoke-virtual {v2, v1}, Lkra;->zzh(I)V

    add-int/lit8 v1, v3, 0x4

    goto :goto_35

    :cond_4e
    :goto_36
    move v9, v4

    move-object v10, v7

    move-object v2, v8

    goto/16 :goto_1c

    :cond_4f
    move v9, v4

    move-object v10, v7

    move-object v2, v8

    goto/16 :goto_46

    :pswitch_15
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v33, v10

    move-object v2, v11

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    if-ne v5, v1, :cond_56

    move-object v1, v2

    check-cast v1, Ltra;

    invoke-static {v8, v13, v7}, Lhqa;->a([BILgqa;)I

    move-result v2

    iget v3, v7, Lgqa;->a:I

    add-int v5, v2, v3

    array-length v6, v8

    if-gt v5, v6, :cond_55

    iget v6, v1, Ltra;->d:I

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v6

    iget-object v6, v1, Ltra;->c:[J

    array-length v6, v6

    if-gt v3, v6, :cond_50

    move/from16 v16, v2

    goto :goto_38

    :cond_50
    if-eqz v6, :cond_52

    :goto_37
    if-ge v6, v3, :cond_51

    move/from16 v16, v2

    const/4 v2, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/16 v15, 0xa

    invoke-static {v6, v9, v2, v10, v15}, Ldh;->c(IIIII)I

    move-result v6

    move/from16 v2, v16

    goto :goto_37

    :cond_51
    move/from16 v16, v2

    iget-object v2, v1, Ltra;->c:[J

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v1, Ltra;->c:[J

    goto :goto_38

    :cond_52
    move/from16 v16, v2

    const/16 v15, 0xa

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Ltra;->c:[J

    :goto_38
    move/from16 v2, v16

    :goto_39
    if-ge v2, v5, :cond_53

    invoke-static {v2, v8}, Lhqa;->e(I[B)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ltra;->b(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_39

    :cond_53
    if-ne v2, v5, :cond_54

    goto/16 :goto_34

    :cond_54
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_55
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_56
    const/4 v3, 0x1

    if-ne v5, v3, :cond_4f

    add-int/lit8 v1, v13, 0x8

    check-cast v2, Ltra;

    invoke-static {v13, v8}, Lhqa;->e(I[B)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ltra;->b(J)V

    :goto_3a
    if-ge v1, v4, :cond_4e

    invoke-static {v8, v1, v7}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v7, Lgqa;->a:I

    if-ne v11, v5, :cond_4e

    invoke-static {v3, v8}, Lhqa;->e(I[B)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ltra;->b(J)V

    add-int/lit8 v1, v3, 0x8

    goto :goto_3a

    :pswitch_16
    move-object/from16 v8, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object/from16 v33, v10

    move-object v2, v11

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move/from16 v31, v9

    if-ne v5, v1, :cond_57

    invoke-static {v8, v13, v2, v7}, Lhqa;->l([BILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v1

    goto/16 :goto_36

    :cond_57
    if-nez v5, :cond_4f

    move-object v5, v2

    move-object v6, v7

    move-object v2, v8

    move v1, v11

    move v3, v13

    invoke-static/range {v1 .. v6}, Lhqa;->k(I[BIILcom/google/android/gms/internal/measurement/zzaef;Lgqa;)I

    move-result v5

    move v9, v4

    move-object v10, v6

    move v4, v5

    goto/16 :goto_47

    :pswitch_17
    move-object/from16 v2, p2

    move-object/from16 v33, v10

    move-object v3, v11

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move-object/from16 v10, p6

    move/from16 v31, v9

    move/from16 v9, p4

    if-ne v5, v1, :cond_5b

    move-object v1, v3

    check-cast v1, Ltra;

    invoke-static {v2, v13, v10}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v4, v10, Lgqa;->a:I

    add-int/2addr v4, v3

    :goto_3b
    if-ge v3, v4, :cond_58

    invoke-static {v2, v3, v10}, Lhqa;->c([BILgqa;)I

    move-result v3

    iget-wide v5, v10, Lgqa;->b:J

    invoke-virtual {v1, v5, v6}, Ltra;->b(J)V

    goto :goto_3b

    :cond_58
    if-ne v3, v4, :cond_5a

    :cond_59
    :goto_3c
    move v4, v3

    goto/16 :goto_47

    :cond_5a
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_5b
    if-nez v5, :cond_6a

    move-object v1, v3

    check-cast v1, Ltra;

    invoke-static {v2, v13, v10}, Lhqa;->c([BILgqa;)I

    move-result v3

    iget-wide v4, v10, Lgqa;->b:J

    invoke-virtual {v1, v4, v5}, Ltra;->b(J)V

    :goto_3d
    if-ge v3, v9, :cond_59

    invoke-static {v2, v3, v10}, Lhqa;->a([BILgqa;)I

    move-result v4

    iget v5, v10, Lgqa;->a:I

    if-ne v11, v5, :cond_59

    invoke-static {v2, v4, v10}, Lhqa;->c([BILgqa;)I

    move-result v3

    iget-wide v4, v10, Lgqa;->b:J

    invoke-virtual {v1, v4, v5}, Ltra;->b(J)V

    goto :goto_3d

    :pswitch_18
    move-object/from16 v2, p2

    move-object/from16 v33, v10

    move-object v3, v11

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move-object/from16 v10, p6

    move/from16 v31, v9

    move/from16 v9, p4

    if-ne v5, v1, :cond_62

    move-object v1, v3

    check-cast v1, Lhra;

    invoke-static {v2, v13, v10}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v4, v10, Lgqa;->a:I

    add-int v5, v3, v4

    array-length v6, v2

    if-gt v5, v6, :cond_61

    iget v6, v1, Lhra;->d:I

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v6

    iget-object v6, v1, Lhra;->c:[F

    array-length v6, v6

    if-gt v4, v6, :cond_5c

    move/from16 v16, v3

    goto :goto_3f

    :cond_5c
    if-eqz v6, :cond_5e

    :goto_3e
    if-ge v6, v4, :cond_5d

    move/from16 v16, v3

    const/4 v3, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v15, 0xa

    invoke-static {v6, v7, v3, v8, v15}, Ldh;->c(IIIII)I

    move-result v6

    move/from16 v3, v16

    goto :goto_3e

    :cond_5d
    move/from16 v16, v3

    iget-object v3, v1, Lhra;->c:[F

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    iput-object v3, v1, Lhra;->c:[F

    goto :goto_3f

    :cond_5e
    move/from16 v16, v3

    const/16 v15, 0xa

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [F

    iput-object v3, v1, Lhra;->c:[F

    :goto_3f
    move/from16 v3, v16

    :goto_40
    if-ge v3, v5, :cond_5f

    invoke-static {v3, v2}, Lhqa;->d(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v1, v4}, Lhra;->b(F)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_40

    :cond_5f
    if-ne v3, v5, :cond_60

    goto/16 :goto_3c

    :cond_60
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_61
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_62
    const/4 v1, 0x5

    if-ne v5, v1, :cond_6a

    add-int/lit8 v4, v13, 0x4

    move-object v1, v3

    check-cast v1, Lhra;

    invoke-static {v13, v2}, Lhqa;->d(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v1, v3}, Lhra;->b(F)V

    :goto_41
    if-ge v4, v9, :cond_6b

    invoke-static {v2, v4, v10}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v10, Lgqa;->a:I

    if-ne v11, v5, :cond_6b

    invoke-static {v3, v2}, Lhqa;->d(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v1, v4}, Lhra;->b(F)V

    add-int/lit8 v4, v3, 0x4

    goto :goto_41

    :pswitch_19
    move-object/from16 v2, p2

    move-object/from16 v33, v10

    move-object v3, v11

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v11, v31

    const/4 v1, 0x2

    move-object/from16 v10, p6

    move/from16 v31, v9

    move/from16 v9, p4

    if-ne v5, v1, :cond_69

    move-object v1, v3

    check-cast v1, Lcra;

    invoke-static {v2, v13, v10}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v4, v10, Lgqa;->a:I

    add-int v5, v3, v4

    array-length v6, v2

    if-gt v5, v6, :cond_68

    iget v6, v1, Lcra;->d:I

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v6

    iget-object v6, v1, Lcra;->c:[D

    array-length v6, v6

    if-gt v4, v6, :cond_63

    move/from16 v16, v3

    goto :goto_43

    :cond_63
    if-eqz v6, :cond_65

    :goto_42
    if-ge v6, v4, :cond_64

    move/from16 v16, v3

    const/4 v3, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v15, 0xa

    invoke-static {v6, v7, v3, v8, v15}, Ldh;->c(IIIII)I

    move-result v6

    move/from16 v3, v16

    goto :goto_42

    :cond_64
    move/from16 v16, v3

    iget-object v3, v1, Lcra;->c:[D

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    iput-object v3, v1, Lcra;->c:[D

    goto :goto_43

    :cond_65
    move/from16 v16, v3

    const/16 v15, 0xa

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, v1, Lcra;->c:[D

    :goto_43
    move/from16 v3, v16

    :goto_44
    if-ge v3, v5, :cond_66

    invoke-static {v3, v2}, Lhqa;->e(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcra;->b(D)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_44

    :cond_66
    if-ne v3, v5, :cond_67

    goto/16 :goto_3c

    :cond_67
    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_68
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_69
    const/4 v8, 0x1

    if-ne v5, v8, :cond_6a

    add-int/lit8 v4, v13, 0x8

    move-object v1, v3

    check-cast v1, Lcra;

    invoke-static {v13, v2}, Lhqa;->e(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcra;->b(D)V

    :goto_45
    if-ge v4, v9, :cond_6b

    invoke-static {v2, v4, v10}, Lhqa;->a([BILgqa;)I

    move-result v3

    iget v5, v10, Lgqa;->a:I

    if-ne v11, v5, :cond_6b

    invoke-static {v3, v2}, Lhqa;->e(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcra;->b(D)V

    add-int/lit8 v4, v3, 0x8

    goto :goto_45

    :cond_6a
    :goto_46
    move v4, v13

    :cond_6b
    :goto_47
    if-eq v4, v13, :cond_6c

    move-object v3, v2

    move v5, v9

    move-object v6, v10

    move/from16 v16, v11

    move v8, v12

    move-object v2, v14

    move/from16 v11, v22

    move/from16 v7, v27

    move/from16 v9, v31

    move/from16 v15, v32

    move-object/from16 v1, v33

    goto/16 :goto_0

    :cond_6c
    move v3, v4

    move-object v13, v10

    move v8, v12

    move/from16 v9, v27

    move-object/from16 v15, v33

    move/from16 v10, p5

    move-object v4, v2

    goto/16 :goto_5b

    :cond_6d
    move-object/from16 v2, p2

    move v11, v1

    move/from16 v31, v9

    move-object/from16 v33, v10

    move/from16 v27, v13

    move/from16 v32, v15

    move/from16 v13, v16

    move/from16 v9, p4

    move-object/from16 v10, p6

    const/16 v1, 0x32

    if-ne v4, v1, :cond_79

    const/4 v1, 0x2

    if-ne v5, v1, :cond_78

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->D(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v15, v33

    invoke-virtual {v15, v14, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzaew;->zze()Z

    move-result v4

    if-nez v4, :cond_6e

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v4

    invoke-static {v4, v3}, Lxra;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v15, v14, v7, v8, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v3, v4

    :cond_6e
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaev;

    iget-object v7, v1, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    move-object v8, v3

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-static {v2, v13, v10}, Lhqa;->a([BILgqa;)I

    move-result v1

    iget v3, v10, Lgqa;->a:I

    if-ltz v3, :cond_77

    sub-int v4, v9, v1

    if-gt v3, v4, :cond_77

    add-int/2addr v3, v1

    iget-object v4, v7, Lwra;->c:Ljava/lang/Object;

    move-object v5, v4

    :goto_48
    if-ge v1, v3, :cond_74

    move/from16 p3, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_6f

    invoke-static {v1, v2, v3, v10}, Lhqa;->b(I[BILgqa;)I

    move-result v3

    iget v1, v10, Lgqa;->a:I

    :cond_6f
    ushr-int/lit8 v2, v1, 0x3

    move/from16 v16, v3

    and-int/lit8 v3, v1, 0x7

    move-object/from16 v23, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_73

    const/4 v4, 0x2

    if-eq v2, v4, :cond_70

    move-object/from16 v3, p2

    move-object v2, v5

    move v4, v9

    move-object v5, v10

    move/from16 v10, p3

    move-object v9, v6

    :goto_49
    move/from16 v6, v16

    goto/16 :goto_4b

    :cond_70
    iget-object v4, v7, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_71

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v1, p2

    move v3, v9

    move/from16 v2, v16

    move-object v9, v6

    move-object v6, v10

    move/from16 v10, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lgqa;)I

    move-result v2

    iget-object v5, v6, Lgqa;->c:Ljava/lang/Object;

    move v1, v2

    move v3, v10

    move-object/from16 v4, v23

    move-object/from16 v2, p2

    move-object v10, v6

    move-object v6, v9

    move/from16 v9, p4

    goto :goto_48

    :cond_71
    move-object v9, v6

    move-object v6, v10

    move/from16 v10, p3

    :cond_72
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object v2, v5

    move-object v5, v6

    goto :goto_49

    :cond_73
    move-object v9, v6

    move-object v6, v10

    move/from16 v2, v16

    move/from16 v10, p3

    iget-object v4, v7, Lwra;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzagm;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_72

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object v9, v2

    move/from16 v2, v16

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/d;->w([BIILcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Class;Lgqa;)I

    move-result v2

    move v4, v3

    move-object v5, v6

    move-object v3, v1

    iget-object v6, v5, Lgqa;->c:Ljava/lang/Object;

    move v1, v2

    move-object v2, v3

    move v3, v10

    move-object v10, v5

    move-object v5, v9

    :goto_4a
    move v9, v4

    move-object/from16 v4, v23

    goto/16 :goto_48

    :goto_4b
    invoke-static {v1, v3, v6, v4, v5}, Lhqa;->o(I[BIILgqa;)I

    move-result v1

    move-object v6, v5

    move-object v5, v2

    move-object v2, v3

    move v3, v10

    move-object v10, v6

    move-object v6, v9

    goto :goto_4a

    :cond_74
    move v4, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, v10

    move v10, v4

    move v4, v9

    move-object v9, v6

    if-ne v1, v10, :cond_76

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v13, :cond_75

    move-object v6, v5

    move/from16 v16, v11

    move v8, v12

    move-object v2, v14

    move-object v1, v15

    move/from16 v11, v22

    move/from16 v7, v27

    move/from16 v9, v31

    move/from16 v15, v32

    move v5, v4

    move v4, v10

    goto/16 :goto_0

    :cond_75
    move-object v4, v3

    move-object v13, v5

    move v3, v10

    move v8, v12

    move/from16 v9, v27

    goto/16 :goto_14

    :cond_76
    invoke-static/range {v18 .. v18}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_77
    const/16 v21, 0x0

    invoke-static/range {v30 .. v30}, Lxg;->e(Ljava/lang/String;)V

    return v21

    :cond_78
    move-object v3, v2

    move v4, v9

    move-object v5, v10

    move-object/from16 v15, v33

    :goto_4c
    move/from16 v10, p5

    move-object v4, v3

    move v8, v12

    move v3, v13

    move/from16 v9, v27

    move-object v13, v5

    goto/16 :goto_5b

    :cond_79
    move-object/from16 v15, v33

    add-int/lit8 v1, v12, 0x2

    aget v1, v28, v1

    const v19, 0xfffff

    and-int v1, v1, v19

    int-to-long v1, v1

    packed-switch v4, :pswitch_data_2

    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    :goto_4d
    move-object/from16 v13, p6

    goto/16 :goto_59

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v5, v4, :cond_7a

    and-int/lit8 v1, v11, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v9, v27

    invoke-virtual {v0, v9, v12, v14}, Lcom/google/android/gms/internal/measurement/d;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move v4, v13

    invoke-static/range {v1 .. v7}, Lhqa;->j(Ljava/lang/Object;Lnsa;[BIIILgqa;)I

    move-result v2

    move-object v6, v7

    invoke-virtual {v0, v9, v12, v14, v1}, Lcom/google/android/gms/internal/measurement/d;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v4

    move-object v4, v3

    move v3, v5

    move v5, v2

    :goto_4e
    move-object v13, v6

    :goto_4f
    move/from16 v16, v12

    goto/16 :goto_5a

    :cond_7a
    move/from16 v9, v27

    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    goto :goto_4d

    :pswitch_1b
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v27

    if-nez v5, :cond_7b

    invoke-static {v3, v4, v6}, Lhqa;->c([BILgqa;)I

    move-result v5

    move v13, v11

    iget-wide v10, v6, Lgqa;->b:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/measurement/zzacv;->zzS(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_50
    move v11, v4

    move-object v4, v3

    move v3, v11

    move/from16 v16, v12

    move v11, v13

    move-object v13, v6

    goto/16 :goto_5a

    :cond_7b
    :goto_51
    move v13, v4

    move-object v4, v3

    move v3, v13

    move-object v13, v6

    :cond_7c
    :goto_52
    move/from16 v16, v12

    goto/16 :goto_59

    :pswitch_1c
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v27

    move v13, v11

    if-nez v5, :cond_7d

    invoke-static {v3, v4, v6}, Lhqa;->a([BILgqa;)I

    move-result v5

    iget v10, v6, Lgqa;->a:I

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/zzacv;->zzR(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_50

    :cond_7d
    move v11, v4

    move-object v4, v3

    move v3, v11

    move/from16 v16, v12

    move v11, v13

    move-object v13, v6

    goto/16 :goto_59

    :pswitch_1d
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v27

    move v13, v11

    if-nez v5, :cond_80

    invoke-static {v3, v4, v6}, Lhqa;->a([BILgqa;)I

    move-result v5

    iget v10, v6, Lgqa;->a:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->E(I)Lcom/google/android/gms/internal/measurement/zzadz;

    move-result-object v11

    if-eqz v11, :cond_7e

    invoke-interface {v11, v10}, Lcom/google/android/gms/internal/measurement/zzadz;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_7f

    :cond_7e
    move v11, v13

    goto :goto_53

    :cond_7f
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/d;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v1

    int-to-long v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move v11, v13

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/internal/measurement/zzaga;->b(ILjava/lang/Object;)V

    goto :goto_54

    :goto_53
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_54
    move v13, v4

    move-object v4, v3

    move v3, v13

    goto/16 :goto_4e

    :cond_80
    move v11, v13

    goto :goto_51

    :pswitch_1e
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v27

    const/4 v10, 0x2

    if-ne v5, v10, :cond_7b

    invoke-static {v3, v4, v6}, Lhqa;->g([BILgqa;)I

    move-result v5

    iget-object v10, v6, Lgqa;->c:Ljava/lang/Object;

    invoke-virtual {v15, v14, v7, v8, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_54

    :pswitch_1f
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v4, v13

    move/from16 v9, v27

    const/4 v10, 0x2

    if-ne v5, v10, :cond_81

    invoke-virtual {v0, v9, v12, v14}, Lcom/google/android/gms/internal/measurement/d;->H(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/measurement/d;->C(I)Lnsa;

    move-result-object v2

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lhqa;->i(Ljava/lang/Object;Lnsa;[BIILgqa;)I

    move-result v2

    move/from16 v16, v4

    move-object v13, v6

    move-object v4, v3

    invoke-virtual {v0, v9, v12, v14, v1}, Lcom/google/android/gms/internal/measurement/d;->I(IILjava/lang/Object;Ljava/lang/Object;)V

    move v5, v2

    move/from16 v3, v16

    goto/16 :goto_4f

    :cond_81
    move/from16 v16, v4

    move-object v13, v6

    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_52

    :pswitch_20
    move-object/from16 v4, p2

    move/from16 p3, v3

    move v3, v13

    move/from16 v9, v27

    const/4 v10, 0x2

    move-object/from16 v13, p6

    if-ne v5, v10, :cond_7c

    invoke-static {v4, v3, v13}, Lhqa;->a([BILgqa;)I

    move-result v5

    iget v10, v13, Lgqa;->a:I

    if-nez v10, :cond_82

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v16, v12

    goto :goto_56

    :cond_82
    add-int v6, v5, v10

    and-int v16, p3, v24

    if-eqz v16, :cond_83

    invoke-static {v4, v5, v6}, Lgta;->a([BII)Z

    move-result v16

    if-eqz v16, :cond_84

    :cond_83
    move/from16 p3, v6

    goto :goto_55

    :cond_84
    invoke-static/range {v23 .. v23}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :goto_55
    new-instance v6, Ljava/lang/String;

    move/from16 v16, v12

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v5, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, p3

    :goto_56
    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5a

    :pswitch_21
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    move-object/from16 v13, p6

    if-nez v5, :cond_86

    invoke-static {v4, v3, v13}, Lhqa;->c([BILgqa;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v13, Lgqa;->b:J

    cmp-long v5, v5, v25

    if-eqz v5, :cond_85

    const/16 v29, 0x1

    goto :goto_57

    :cond_85
    const/16 v29, 0x0

    :goto_57
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_58
    move/from16 v5, p3

    goto/16 :goto_5a

    :pswitch_22
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    const/4 v6, 0x5

    move-object/from16 v13, p6

    if-ne v5, v6, :cond_86

    add-int/lit8 v5, v3, 0x4

    invoke-static {v3, v4}, Lhqa;->d(I[B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5a

    :pswitch_23
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    const/4 v10, 0x1

    move-object/from16 v13, p6

    if-ne v5, v10, :cond_86

    add-int/lit8 v5, v3, 0x8

    invoke-static {v3, v4}, Lhqa;->e(I[B)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5a

    :pswitch_24
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    move-object/from16 v13, p6

    if-nez v5, :cond_86

    invoke-static {v4, v3, v13}, Lhqa;->a([BILgqa;)I

    move-result v5

    iget v6, v13, Lgqa;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5a

    :pswitch_25
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    move-object/from16 v13, p6

    if-nez v5, :cond_86

    invoke-static {v4, v3, v13}, Lhqa;->c([BILgqa;)I

    move-result v5

    move/from16 p3, v5

    iget-wide v5, v13, Lgqa;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_58

    :pswitch_26
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    const/4 v6, 0x5

    move-object/from16 v13, p6

    if-ne v5, v6, :cond_86

    add-int/lit8 v5, v3, 0x4

    invoke-static {v3, v4}, Lhqa;->d(I[B)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5a

    :pswitch_27
    move-object/from16 v4, p2

    move/from16 v16, v12

    move v3, v13

    move/from16 v9, v27

    const/4 v10, 0x1

    move-object/from16 v13, p6

    if-ne v5, v10, :cond_86

    add-int/lit8 v5, v3, 0x8

    invoke-static {v3, v4}, Lhqa;->e(I[B)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v15, v14, v7, v8, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v15, v14, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5a

    :cond_86
    :goto_59
    move v5, v3

    :goto_5a
    if-eq v5, v3, :cond_87

    move-object v3, v4

    move v4, v5

    move v7, v9

    move-object v6, v13

    move-object v2, v14

    move-object v1, v15

    move/from16 v8, v16

    move/from16 v9, v31

    move/from16 v15, v32

    move/from16 v5, p4

    move/from16 v16, v11

    goto/16 :goto_11

    :cond_87
    move/from16 v10, p5

    move v3, v5

    move/from16 v8, v16

    :goto_5b
    if-ne v11, v10, :cond_88

    if-eqz v10, :cond_88

    move/from16 v7, p4

    move v6, v3

    move/from16 v9, v31

    :goto_5c
    move/from16 v1, v32

    const v2, 0xfffff

    goto/16 :goto_5f

    :cond_88
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/d;->f:Z

    if-eqz v1, :cond_8a

    iget-object v1, v13, Lgqa;->d:Lcom/google/android/gms/internal/measurement/zzadf;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadf;->b:Lcom/google/android/gms/internal/measurement/zzadf;

    sget v2, Lfqa;->a:I

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadf;->c:Lcom/google/android/gms/internal/measurement/zzadf;

    if-eq v1, v2, :cond_8a

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/measurement/zzadf;->zzc(Lcom/google/android/gms/internal/measurement/zzafc;I)Lcom/google/android/gms/internal/measurement/zzadt;

    move-result-object v1

    if-nez v1, :cond_89

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/d;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object v2, v4

    move v1, v11

    move-object v6, v13

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lhqa;->n(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lgqa;)I

    move-result v3

    move/from16 v7, p4

    :goto_5d
    move v4, v3

    goto :goto_5e

    :cond_89
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadr;

    throw v17

    :cond_8a
    move v1, v11

    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/d;->x(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lhqa;->n(I[BIILcom/google/android/gms/internal/measurement/zzaga;Lgqa;)I

    move-result v3

    move v7, v4

    goto :goto_5d

    :goto_5e
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move/from16 v16, v1

    move v5, v7

    move v7, v9

    move-object v2, v14

    move-object v1, v15

    move/from16 v11, v22

    move/from16 v9, v31

    move/from16 v15, v32

    goto/16 :goto_0

    :cond_8b
    move/from16 v10, p5

    move-object v14, v2

    move v7, v5

    move/from16 v31, v9

    move/from16 v32, v15

    move-object v15, v1

    move v6, v4

    move/from16 v11, v16

    goto :goto_5c

    :goto_5f
    if-eq v9, v2, :cond_8c

    int-to-long v2, v9

    invoke-virtual {v15, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8c
    iget v1, v0, Lcom/google/android/gms/internal/measurement/d;->i:I

    move v8, v1

    move-object/from16 v3, v17

    :goto_60
    iget v1, v0, Lcom/google/android/gms/internal/measurement/d;->j:I

    if-ge v8, v1, :cond_8d

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/d;->h:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    aget v2, v1, v8

    move-object/from16 v5, p1

    move-object v1, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/d;->J(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaga;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, p1

    goto :goto_60

    :cond_8d
    if-eqz v3, :cond_8e

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d;->k:Lcom/google/android/gms/internal/measurement/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadu;

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    :cond_8e
    if-nez v10, :cond_90

    if-ne v6, v7, :cond_8f

    goto :goto_61

    :cond_8f
    invoke-static/range {v18 .. v18}, Lxg;->e(Ljava/lang/String;)V

    const/16 v21, 0x0

    return v21

    :cond_90
    const/16 v21, 0x0

    if-gt v6, v7, :cond_91

    if-ne v11, v10, :cond_91

    :goto_61
    return v6

    :cond_91
    invoke-static/range {v18 .. v18}, Lxg;->e(Ljava/lang/String;)V

    return v21

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

.method public final zza()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d;->e:Lcom/google/android/gms/internal/measurement/zzafc;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    return-object p0
.end method
