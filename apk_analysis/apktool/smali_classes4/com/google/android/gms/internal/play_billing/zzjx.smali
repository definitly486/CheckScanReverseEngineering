.class public final Lcom/google/android/gms/internal/play_billing/zzjx;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->c(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/play_billing/zzjx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    return-object v0
.end method


# virtual methods
.method public final g(I)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    return-object p0

    :cond_0
    throw v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjv;

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzjx;-><init>()V

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    new-instance p1, Lgqb;

    const-string v1, "\u0004\u0000"

    invoke-direct {p1, p0, v1, v0}, Lgqb;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
