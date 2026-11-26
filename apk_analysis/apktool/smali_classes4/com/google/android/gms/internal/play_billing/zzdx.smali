.class public final Lcom/google/android/gms/internal/play_billing/zzdx;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdx;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzd:I

    return-void
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/play_billing/zzdx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->j(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdx;

    return-object p0
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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzdv;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzdx;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzd"

    const-class p1, Lcom/google/android/gms/internal/play_billing/zzeg;

    const-string v0, "zze"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    new-instance v0, Lgqb;

    const-string v1, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001;\u0000\u0002<\u0000"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/play_billing/zzeg;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zze:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzeg;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzb()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p0

    return-object p0
.end method
