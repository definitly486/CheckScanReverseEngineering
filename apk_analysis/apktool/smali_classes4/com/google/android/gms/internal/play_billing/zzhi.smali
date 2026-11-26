.class public final Lcom/google/android/gms/internal/play_billing/zzhi;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzhi;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzgu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    sget-object v0, Lppb;->f:Lppb;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhg;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzhi;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-class p1, Lcom/google/android/gms/internal/play_billing/zzjf;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    new-instance v0, Lgqb;

    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
