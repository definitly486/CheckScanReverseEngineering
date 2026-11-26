.class public final Lcom/google/android/gms/internal/play_billing/zzej;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzej;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/play_billing/zzdu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzej;->zzb:Lcom/google/android/gms/internal/play_billing/zzej;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzej;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/play_billing/zzej;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzej;->zzb:Lcom/google/android/gms/internal/play_billing/zzej;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->j(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzej;

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

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzej;->zzb:Lcom/google/android/gms/internal/play_billing/zzej;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzeh;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzej;->zzb:Lcom/google/android/gms/internal/play_billing/zzej;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzej;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzej;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zze"

    const-string p1, "zzf"

    const-string v0, "zzd"

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzej;->zzb:Lcom/google/android/gms/internal/play_billing/zzej;

    new-instance v0, Lgqb;

    const-string v1, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001"

    invoke-direct {v0, p1, v1, p0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/play_billing/zzdu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzej;->zzf:Lcom/google/android/gms/internal/play_billing/zzdu;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdu;->zzb()Lcom/google/android/gms/internal/play_billing/zzdu;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzej;->zzd:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
