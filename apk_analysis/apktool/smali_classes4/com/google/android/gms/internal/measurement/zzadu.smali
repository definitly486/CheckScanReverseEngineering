.class public abstract Lcom/google/android/gms/internal/measurement/zzadu;
.super Lcom/google/android/gms/internal/measurement/zzacb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzadu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzadp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzacb<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field public static final synthetic zzd:I

.field private static final zze:Ljava/util/Map;


# instance fields
.field private zzb:I

.field protected zzc:Lcom/google/android/gms/internal/measurement/zzaga;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzadu;->zze:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzacb;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaga;->zza()Lcom/google/android/gms/internal/measurement/zzaga;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzc:Lcom/google/android/gms/internal/measurement/zzaga;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/measurement/zzadu;[BLcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzadu;
    .locals 6

    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->e()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v1

    :try_start_0
    sget-object p0, Lksa;->c:Lksa;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    new-instance v5, Lgqa;

    invoke-direct {v5, p2}, Lgqa;-><init>(Lcom/google/android/gms/internal/measurement/zzadf;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lnsa;->c(Ljava/lang/Object;[BIILgqa;)V

    invoke-interface {v0, v1}, Lnsa;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/measurement/zzafy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->l(Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-object p0

    :catch_0
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-static {p0}, Lxg;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    throw p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzafy;->zza()Lcom/google/android/gms/internal/measurement/zzaeh;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzaeh;->b:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaeh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    throw p0
.end method

.method public static h(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzadu;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadu;->zze:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Class initialization cannot fail."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    :try_start_1
    sget-object v1, Leta;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzadu;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    invoke-static {}, Lud;->g()V

    return-object v2

    :catch_1
    move-exception p0

    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static i(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzadu;->d()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzadu;->zze:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs j(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/measurement/zzadu;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_0

    const-string p1, "Unexpected exception thrown by generated accessor method."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final k(Lcom/google/android/gms/internal/measurement/zzadu;Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, p0}, Lnsa;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public static l(Lcom/google/android/gms/internal/measurement/zzadu;)V
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->k(Lcom/google/android/gms/internal/measurement/zzadu;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzafy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzafy;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzafy;->zza()Lcom/google/android/gms/internal/measurement/zzaeh;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lnsa;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lnsa;->g(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2a

    invoke-static {p1, p0, v2}, Lr01;->d(IILjava/lang/Object;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    invoke-interface {p1, p0}, Lnsa;->g(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result p1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    return p1

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2a

    invoke-static {p0, p1, v2}, Lr01;->d(IILjava/lang/Object;)V

    return v1

    :cond_3
    return v0
.end method

.method public final c()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    return-void
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/zzadu;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lksa;->c:Lksa;

    invoke-virtual {v1, v0}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-interface {v0, p0, p1}, Lnsa;->i(Lcom/google/android/gms/internal/measurement/zzadu;Lcom/google/android/gms/internal/measurement/zzadu;)Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/google/android/gms/internal/measurement/zzadp;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadp;

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    return-void
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    if-nez v0, :cond_0

    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, p0}, Lnsa;->e(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzacb;->zza:I

    :cond_0
    return v0

    :cond_1
    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, p0}, Lnsa;->e(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result p0

    return p0
.end method

.method public abstract m(I)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/c;->a:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/c;->b(Lcom/google/android/gms/internal/measurement/zzadu;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzcH(Lcom/google/android/gms/internal/measurement/zzada;)V
    .locals 2

    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzada;->a:Lbra;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lbra;

    invoke-direct {v1, p1}, Lbra;-><init>(Lcom/google/android/gms/internal/measurement/zzada;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lnsa;->d(Ljava/lang/Object;Lbra;)V

    return-void
.end method

.method public final synthetic zzcI()Lcom/google/android/gms/internal/measurement/zzafb;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadp;

    return-object p0
.end method

.method public final zzcJ()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->k(Lcom/google/android/gms/internal/measurement/zzadu;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic zzcK()Lcom/google/android/gms/internal/measurement/zzafc;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzadu;

    return-object p0
.end method

.method public final zzcj()Lcom/google/android/gms/internal/measurement/zzafj;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzafj;

    return-object p0
.end method

.method public final zzco()Lcom/google/android/gms/internal/measurement/zzadp;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->m(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzadp;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbe(Lcom/google/android/gms/internal/measurement/zzadu;)Lcom/google/android/gms/internal/measurement/zzadp;

    return-object v0
.end method

.method public final zzcq()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadu;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, p0}, Lnsa;->g(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {v0, p0, v2}, Lr01;->d(IILjava/lang/Object;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    return v0

    :cond_2
    sget-object v0, Lksa;->c:Lksa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lksa;->a(Ljava/lang/Class;)Lnsa;

    move-result-object v0

    invoke-interface {v0, p0}, Lnsa;->g(Lcom/google/android/gms/internal/measurement/zzadu;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzadu;->zzb:I

    return v0

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2a

    invoke-static {p0, v0, v2}, Lr01;->d(IILjava/lang/Object;)V

    return v1
.end method
