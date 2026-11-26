.class public final Lcom/google/android/gms/internal/play_billing/zzln;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzln;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:J

.field private zzh:Z

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/gms/internal/play_billing/zzln;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzh:Z

    return-void
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/play_billing/zzln;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzi:I

    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/play_billing/zzln;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzg:J

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/zzln;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzj:I

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/zzln;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzf:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzll;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->h()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzll;

    return-object v0
.end method


# virtual methods
.method public final g(I)Ljava/lang/Object;
    .locals 7

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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzll;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzln;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzln;-><init>()V

    return-object p0

    :cond_3
    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzln;->zzb:Lcom/google/android/gms/internal/play_billing/zzln;

    new-instance v0, Lgqb;

    const-string v1, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1007\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1004\u0004\u0006\u1004\u0005"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
