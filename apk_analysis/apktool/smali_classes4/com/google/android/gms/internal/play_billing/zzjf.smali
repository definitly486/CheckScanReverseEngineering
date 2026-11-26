.class public final Lcom/google/android/gms/internal/play_billing/zzjf;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjf;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzd:I

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iput v0, p1, Lcom/google/android/gms/internal/play_billing/zzjf;->zzd:I

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzjf;->zze:Ljava/lang/Object;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->h()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjd;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzjf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    return-object v0
.end method


# virtual methods
.method public final g(I)Ljava/lang/Object;
    .locals 2

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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjd;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzjf;-><init>()V

    return-object p0

    :cond_3
    const-class p0, Lcom/google/android/gms/internal/play_billing/zzim;

    const-class p1, Lcom/google/android/gms/internal/play_billing/zzhi;

    const-string v0, "zze"

    const-string v1, "zzd"

    filled-new-array {v0, v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    new-instance v0, Lgqb;

    const-string v1, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003\u023b\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
