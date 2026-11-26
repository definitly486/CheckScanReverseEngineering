.class public final Lcom/google/android/gms/internal/measurement/zzha;
.super Lcom/google/android/gms/internal/measurement/zzadu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzafd;


# static fields
.field private static final zzp:Lcom/google/android/gms/internal/measurement/zzha;

.field private static volatile zzq:Lcom/google/android/gms/internal/measurement/zzafj;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:Lcom/google/android/gms/internal/measurement/zzaew;

.field private zzn:Lcom/google/android/gms/internal/measurement/zzaew;

.field private zzo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->i(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzadu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaew;->zza()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzaew;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static zzt()Lcom/google/android/gms/internal/measurement/zzgx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzadu;->f()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgx;

    return-object v0
.end method

.method public static zzu()Lcom/google/android/gms/internal/measurement/zzha;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    return-object v0
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic B()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-void
.end method

.method public final synthetic C(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic D()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-void
.end method

.method public final synthetic E(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 14

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/4 p0, 0x6

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzha;->zzq:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/measurement/zzha;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzha;->zzq:Lcom/google/android/gms/internal/measurement/zzafj;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzadq;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzadq;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzha;->zzq:Lcom/google/android/gms/internal/measurement/zzafj;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzgx;

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzadp;-><init>(Lcom/google/android/gms/internal/measurement/zzadu;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzha;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzb"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v9, "zzm"

    sget-object v10, Lnlb;->a:Lcom/google/android/gms/internal/measurement/zzaev;

    const-string v11, "zzn"

    sget-object v12, Lolb;->a:Lcom/google/android/gms/internal/measurement/zzaev;

    const-string v13, "zzo"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    const-string v0, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0002\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007\t2\n2\u000b\u1008\u0008"

    new-instance v1, Lmsa;

    invoke-direct {v1, p1, v0, p0}, Lmsa;-><init>(Lcom/google/android/gms/internal/measurement/zzafc;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic n()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final synthetic o(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:J

    return-void
.end method

.method public final synthetic p(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final synthetic q()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-void
.end method

.method public final synthetic r(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final synthetic s()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-void
.end method

.method public final synthetic t(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:Ljava/lang/String;

    return-void
.end method

.method public final synthetic u()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:Ljava/lang/String;

    return-void
.end method

.method public final synthetic v(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:J

    return-void
.end method

.method public final synthetic w()Lcom/google/android/gms/internal/measurement/zzaew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaew;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzaew;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzm:Lcom/google/android/gms/internal/measurement/zzaew;

    return-object p0
.end method

.method public final synthetic x()Lcom/google/android/gms/internal/measurement/zzaew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaew;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzaew;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaew;->zzc()Lcom/google/android/gms/internal/measurement/zzaew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzaew;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzn:Lcom/google/android/gms/internal/measurement/zzaew;

    return-object p0
.end method

.method public final synthetic y(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzo:Ljava/lang/String;

    return-void
.end method

.method public final synthetic z()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzha;->zzp:Lcom/google/android/gms/internal/measurement/zzha;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzha;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzo:Ljava/lang/String;

    return-void
.end method

.method public final zza()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzh:J

    return-wide v0
.end method

.method public final zzj()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public final zzn()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method public final zzp()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzl:J

    return-wide v0
.end method

.method public final zzr()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzb:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzo:Ljava/lang/String;

    return-object p0
.end method
