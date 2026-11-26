.class public abstract Lcom/google/android/gms/internal/play_billing/zzgp;
.super Lcom/google/android/gms/internal/play_billing/zzfa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzgp<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzgl<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/zzfa<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/play_billing/zzir;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    return-void
.end method

.method public static c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->b()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final f(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

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
    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, p0}, Lkqb;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public static i(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

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

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

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
    sget-object v1, Lwtb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

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

.method public static j(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;
    .locals 6

    array-length v4, p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    sget v0, Lydb;->a:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgc;->b:Lcom/google/android/gms/internal/play_billing/zzgc;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    :try_start_0
    sget-object p0, Lkpb;->b:Lkpb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object p0

    new-instance v5, Lceb;

    invoke-direct {v5, v0}, Lceb;-><init>(Lcom/google/android/gms/internal/play_billing/zzgc;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lkqb;->d(Ljava/lang/Object;[BIILceb;)V

    invoke-interface {v0, v1}, Lkqb;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/play_billing/zzip; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->f(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzip;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zza()Lcom/google/android/gms/internal/play_billing/zzhb;

    move-result-object p0

    throw p0

    :cond_2
    :goto_1
    return-object p0

    :catch_0
    const-string p0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-static {p0}, Lah;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/zzhb;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    throw p0

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzip;->zza()Lcom/google/android/gms/internal/play_billing/zzhb;

    move-result-object p0

    throw p0

    :catch_3
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public static varargs k(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/play_billing/zzgp;[Ljava/lang/Object;)Ljava/lang/Object;
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


# virtual methods
.method public final a(Lkqb;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lkqb;->e(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p0, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    invoke-interface {p1, p0}, Lkqb;->e(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result p1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return p1

    :cond_2
    invoke-static {p1, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_3
    return v0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return-void
.end method

.method public final e()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    sget-object v1, Lkpb;->b:Lkpb;

    invoke-virtual {v1, v0}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-interface {v0, p0, p1}, Lkqb;->g(Lcom/google/android/gms/internal/play_billing/zzgp;Lcom/google/android/gms/internal/play_billing/zzgp;)Z

    move-result p0

    return p0
.end method

.method public abstract g(I)Ljava/lang/Object;
.end method

.method public final h()Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:I

    if-nez v0, :cond_0

    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, p0}, Lkqb;->f(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:I

    :cond_0
    return v0

    :cond_1
    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, p0}, Lkqb;->f(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/o;->a:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/play_billing/o;->c(Lcom/google/android/gms/internal/play_billing/zzgp;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V
    .locals 2

    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzfx;->a:Lbhb;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lbhb;

    invoke-direct {v1, p1}, Lbhb;-><init>(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lkqb;->h(Ljava/lang/Object;Lbhb;)V

    return-void
.end method

.method public final synthetic zzl()Lcom/google/android/gms/internal/play_billing/zzhr;
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object p0
.end method

.method public final zzn()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "serialized size must be non-negative, was "

    if-eqz v0, :cond_1

    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, p0}, Lkqb;->e(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p0, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2

    return v0

    :cond_2
    sget-object v0, Lkpb;->b:Lkpb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkpb;->a(Ljava/lang/Class;)Lkqb;

    move-result-object v0

    invoke-interface {v0, p0}, Lkqb;->e(Lcom/google/android/gms/internal/play_billing/zzgp;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return v0

    :cond_3
    invoke-static {v0, v2}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public final zzo()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->f(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result p0

    return p0
.end method

.method public final zzq()Lcom/google/android/gms/internal/play_billing/zzgl;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzh(Lcom/google/android/gms/internal/play_billing/zzgp;)Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object v0
.end method

.method public final synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzhq;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->g(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object p0
.end method
