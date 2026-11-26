.class public abstract Lcom/google/android/gms/internal/measurement/zzxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzyi;
.implements Lcom/google/android/gms/internal/measurement/zzzd;


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/logging/Level;

.field public final b:J

.field public c:Lshc;

.field public d:Lcom/google/android/gms/internal/measurement/zzyc;

.field public e:Lcom/google/android/gms/internal/measurement/zzyq;

.field public f:Lcom/google/android/gms/internal/measurement/zzaaf;

.field public g:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzxz;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzk()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    const-string v2, "level"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->a:Ljava/util/logging/Level;

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->b:J

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/internal/measurement/zzabp;
.end method

.method public b(Lcom/google/android/gms/internal/measurement/zzyd;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    sget-object v3, Lcom/google/android/gms/internal/measurement/k;->b:Lmhc;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzxx;->zzd:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v0, v3}, Lshc;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnhc;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/measurement/k;->b:Lmhc;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzyf;->zzb(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/k;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzxz;->b:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-string v9, "timestamp cannot be negative"

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/zzabr;->zzb(ZLjava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-gez v7, :cond_14

    neg-long v5, v5

    invoke-virtual {v3, v9, v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    sget-object v5, Lcom/google/android/gms/internal/measurement/j;->b:Llhc;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzxx;->zzb:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v3, v5}, Lshc;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/google/android/gms/internal/measurement/j;->b:Llhc;

    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/measurement/zzyf;->zzb(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/j;

    iget-object v6, v3, Lcom/google/android/gms/internal/measurement/j;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    :goto_2
    if-nez v0, :cond_5

    :cond_4
    :goto_3
    move-object v0, v3

    goto :goto_4

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eq v0, v5, :cond_9

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzyq;->zzd:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne v3, v6, :cond_7

    goto :goto_4

    :cond_7
    if-eq v3, v5, :cond_4

    if-ne v0, v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance v5, Leic;

    invoke-direct {v5, v0, v3}, Leic;-><init>(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)V

    move-object v0, v5

    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    sget-object v5, Lcom/google/android/gms/internal/measurement/l;->b:Lhic;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzxx;->zzc:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v3, v5}, Lshc;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_a

    goto :goto_6

    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/measurement/l;->b:Lhic;

    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/measurement/zzyf;->zzb(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/l;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/l;->c:Liic;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Random;

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    goto :goto_5

    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/l;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    :goto_5
    if-lez v3, :cond_c

    goto :goto_7

    :cond_c
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    goto :goto_7

    :cond_d
    :goto_6
    move-object p1, v2

    :goto_7
    if-nez v0, :cond_f

    :cond_e
    :goto_8
    move-object v0, p1

    goto :goto_9

    :cond_f
    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eq v0, v3, :cond_13

    sget-object v5, Lcom/google/android/gms/internal/measurement/zzyq;->zzd:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne p1, v5, :cond_11

    goto :goto_9

    :cond_11
    if-eq p1, v3, :cond_e

    if-ne v0, v5, :cond_12

    goto :goto_8

    :cond_12
    new-instance v3, Leic;

    invoke-direct {v3, v0, p1}, Leic;-><init>(Lcom/google/android/gms/internal/measurement/zzyq;Lcom/google/android/gms/internal/measurement/zzyq;)V

    move-object v0, v3

    :cond_13
    :goto_9
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    if-ne v0, p1, :cond_15

    return v4

    :cond_14
    throw v2

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zzi:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p1, v0}, Lshc;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzyv;

    if-eqz p1, :cond_19

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-eqz v3, :cond_18

    invoke-virtual {v3, v0}, Lshc;->b(Lcom/google/android/gms/internal/measurement/zzyl;)I

    move-result v4

    if-ltz v4, :cond_18

    add-int/2addr v4, v4

    add-int/lit8 v5, v4, 0x2

    :goto_a
    iget v6, v3, Lshc;->b:I

    add-int v7, v6, v6

    if-ge v5, v7, :cond_17

    iget-object v6, v3, Lshc;->a:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v3, Lshc;->a:[Ljava/lang/Object;

    aput-object v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v7, v8

    aput-object v8, v7, v6

    add-int/lit8 v4, v4, 0x2

    :cond_16
    add-int/lit8 v5, v5, 0x2

    goto :goto_a

    :cond_17
    sub-int v0, v5, v4

    shr-int/2addr v0, v1

    sub-int/2addr v6, v0

    iput v6, v3, Lshc;->b:I

    :goto_b
    if-ge v4, v5, :cond_18

    iget-object v0, v3, Lshc;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    aput-object v2, v0, v4

    move v4, v6

    goto :goto_b

    :cond_18
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzyg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const-class v4, Lcom/google/android/gms/internal/measurement/zzxz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzyv;->zza()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/measurement/zzabq;->zzb(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_19
    return v1
.end method

.method public abstract c()Lcom/google/android/gms/internal/measurement/zzxs;
.end method

.method public abstract d()Lohc;
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-nez v0, :cond_0

    new-instance v0, Lshc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lshc;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Lshc;->b:I

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lshc;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze()Ljava/util/logging/Level;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->a:Ljava/util/logging/Level;

    return-object p0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->b:J

    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzyc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cannot request log site information prior to postProcess()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzaaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    return-object p0
.end method

.method public final zzi()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "cannot get arguments unless a template context exists"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->zzc(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "cannot get arguments before calling log()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzj()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "cannot get literal argument if a template context exists"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zzc(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const-string p0, "cannot get literal argument before calling log()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzk()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzxx;->zzg:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p0, v1}, Lshc;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzl()Lcom/google/android/gms/internal/measurement/zzzj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzzj;->zzg()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p0

    return-object p0
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/measurement/zzyi;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzyc;->zza:Lcom/google/android/gms/internal/measurement/zzyc;

    new-instance p1, Lbic;

    invoke-direct {p1}, Lbic;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->d()Lohc;

    move-result-object p0

    return-object p0
.end method

.method public final zzo(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/measurement/zzyi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v1, "metadata key"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;->e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->d()Lohc;

    move-result-object p0

    return-object p0
.end method

.method public final zzp(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzb()Lcom/google/android/gms/internal/measurement/zzaac;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/measurement/zzxz;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaac;->zzb(Ljava/lang/Class;I)Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->d:Lcom/google/android/gms/internal/measurement/zzyc;

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzyc;->zza:Lcom/google/android/gms/internal/measurement/zzyc;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-eqz v2, :cond_4

    iget v4, v2, Lshc;->b:I

    if-lez v4, :cond_4

    const-string v4, "logSiteKey"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/measurement/zzabr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v4, v2, Lshc;->b:I

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzxx;->zzf:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v2, v5}, Lshc;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Lshc;->zzc(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/android/gms/internal/measurement/zzyj;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzyj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzyj;->b()Lcom/google/android/gms/internal/measurement/zzyd;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v7, Ljic;

    invoke-direct {v7, v0, v6}, Ljic;-><init>(Lcom/google/android/gms/internal/measurement/zzyd;Ljava/lang/Object;)V

    move-object v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxz;->b(Lcom/google/android/gms/internal/measurement/zzyd;)Z

    move-result v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzxz;->e:Lcom/google/android/gms/internal/measurement/zzyq;

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    sget-object v6, Lgic;->c:Lfic;

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/measurement/zzyf;->zzb(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgic;

    iget-object v5, v0, Lgic;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, v0, Lgic;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzyq;->zzc:Lcom/google/android/gms/internal/measurement/zzyq;

    const/4 v8, -0x1

    if-eq v4, v7, :cond_6

    invoke-virtual {v6, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lgic;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v5

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    add-int/2addr v8, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    if-lez v8, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxz;->c:Lshc;

    if-eqz v0, :cond_7

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzxx;->zze:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lshc;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_7
    if-ltz v8, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    and-int/2addr v2, v1

    :cond_9
    if-eqz v2, :cond_11

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->g:[Ljava/lang/Object;

    :goto_4
    array-length v0, p2

    if-ge v3, v0, :cond_b

    aget-object v0, p2, v3

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzxu;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzxu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzxu;->zza()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzxz;->h:Ljava/lang/String;

    if-eq p1, p2, :cond_c

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzaaf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->a()Lcom/google/android/gms/internal/measurement/zzabp;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaaf;-><init>(Lcom/google/android/gms/internal/measurement/zzabn;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzxz;->f:Lcom/google/android/gms/internal/measurement/zzaaf;

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzi()Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabe;->zzc()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzxx;->zzh:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzabe;

    if-eqz p2, :cond_d

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzabe;->zzd(Lcom/google/android/gms/internal/measurement/zzabe;)Lcom/google/android/gms/internal/measurement/zzabe;

    move-result-object p1

    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzxz;->e(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxz;->c()Lcom/google/android/gms/internal/measurement/zzxs;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzxi;->a:Lcom/google/android/gms/internal/measurement/zzzf;

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzabt;->zzc()Lcom/google/android/gms/internal/measurement/zzabt;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzabt;->zzb()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_f

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzzf;->zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_f
    const-string v0, "unbounded recursion in log statement"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/measurement/zzxi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    :try_start_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_8

    :goto_6
    if-eqz p2, :cond_10

    :try_start_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzabt;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_7
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_8
    :try_start_6
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/measurement/zzzf;->zzd(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/measurement/zzzd;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/measurement/zzzg; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/measurement/zzxi;->a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxz;)V

    :try_start_7
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_9

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    :cond_11
    :goto_9
    return-void
.end method
