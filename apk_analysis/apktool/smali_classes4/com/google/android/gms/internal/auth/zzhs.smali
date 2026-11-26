.class public final Lcom/google/android/gms/internal/auth/zzhs;
.super Lcom/google/android/gms/internal/auth/zzev;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/zzhs;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/zzez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzhs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzev;->e(Lcom/google/android/gms/internal/auth/zzhs;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzev;-><init>()V

    sget-object v0, Ltib;->e:Ltib;

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzd:Lcom/google/android/gms/internal/auth/zzez;

    return-void
.end method

.method public static synthetic i()Lcom/google/android/gms/internal/auth/zzhs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    return-object v0
.end method

.method public static zzp([B)Lcom/google/android/gms/internal/auth/zzhs;
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    array-length v5, p0

    sget-object v1, Lcom/google/android/gms/internal/auth/zzel;->b:Lcom/google/android/gms/internal/auth/zzel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v2

    :try_start_0
    sget-object v0, Lqib;->c:Lqib;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lqib;->a(Ljava/lang/Class;)Lcjb;

    move-result-object v3

    new-instance v6, Lh7b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    move-object v1, v3

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lcjb;->e(Ljava/lang/Object;[BIILh7b;)V

    invoke-interface {v1, v2}, Lcjb;->zze(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/auth/zzfb; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/auth/zzgy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqib;->a(Ljava/lang/Class;)Lcjb;

    move-result-object p0

    invoke-interface {p0, v2}, Lcjb;->d(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    if-eqz p0, :cond_1

    :goto_0
    check-cast v2, Lcom/google/android/gms/internal/auth/zzhs;

    return-object v2

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzgy;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzgy;-><init>(Lcom/google/android/gms/internal/auth/zzfx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgy;->zza()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzfb;->zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->d()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzfb;->zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;

    throw p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/auth/zzfb;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzfb;

    throw p0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzfb;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/auth/zzfb;->zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;

    throw v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgy;->zza()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzfb;->zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;

    throw p0

    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzfb;->zze(Lcom/google/android/gms/internal/auth/zzfx;)Lcom/google/android/gms/internal/auth/zzfb;

    throw p0
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzhr;

    sget-object p1, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzet;-><init>(Lcom/google/android/gms/internal/auth/zzhs;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/auth/zzhs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzhs;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    new-instance v0, Lyib;

    invoke-direct {v0, p1, p0}, Lyib;-><init>(Lcom/google/android/gms/internal/auth/zzhs;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzq()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzd:Lcom/google/android/gms/internal/auth/zzez;

    return-object p0
.end method
