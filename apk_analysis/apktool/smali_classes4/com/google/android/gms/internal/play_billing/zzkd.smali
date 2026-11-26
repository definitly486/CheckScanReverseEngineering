.class public final Lcom/google/android/gms/internal/play_billing/zzkd;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkd;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/play_billing/zzld;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    sget-object v0, Lgkb;->f:Lgkb;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    sget-object v0, Lppb;->f:Lppb;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
.end method

.method public static synthetic l(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzg(I)Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzh(I)V

    return-void
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzi:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    const-string v0, "ProxyBillingBroadcastReceiver"

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzld;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzl:Lcom/google/android/gms/internal/play_billing/zzld;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzka;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->h()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzka;

    return-object v0
.end method


# virtual methods
.method public final g(I)Ljava/lang/Object;
    .locals 12

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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzka;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    return-object p0

    :cond_3
    const-string v10, "zzk"

    const-string v11, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    sget-object v3, Lmyb;->a:Lmyb;

    const-string v4, "zzg"

    sget-object v5, Lnxb;->a:Lnxb;

    const-string v6, "zzh"

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzkz;

    const-string v8, "zzi"

    const-string v9, "zzj"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    new-instance v0, Lgqb;

    const-string v1, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004\u0008\u1009\u0005"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
