.class public final Lcom/google/android/gms/internal/play_billing/zzjl;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjl;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method public static synthetic l(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkt;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzln;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/play_billing/zzjl;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzh:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkn;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->h()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjj;

    return-object v0
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/play_billing/zzjl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->j(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p0
.end method


# virtual methods
.method public final g(I)Ljava/lang/Object;
    .locals 11

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjj;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    return-object p0

    :cond_3
    const-class v9, Lcom/google/android/gms/internal/play_billing/zzln;

    const-class v10, Lcom/google/android/gms/internal/play_billing/zzkt;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    sget-object v4, Lfwb;->a:Lfwb;

    const-string v5, "zzh"

    const-class v6, Lcom/google/android/gms/internal/play_billing/zzkn;

    const-string v7, "zzi"

    sget-object v8, Lnxb;->a:Lnxb;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    new-instance v0, Lgqb;

    const-string v1, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzkt;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object p0

    return-object p0
.end method
