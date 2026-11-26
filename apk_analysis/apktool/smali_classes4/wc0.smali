.class public final Lwc0;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh<",
        "Lwc0;",
        "Leyb;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;"
    }
.end annotation


# static fields
.field private static final zzb:Lwc0;


# instance fields
.field private zzd:I

.field private zze:Lspb;

.field private zzf:Lcqa;

.field private zzg:Lfcc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc0;

    invoke-direct {v0}, Lwc0;-><init>()V

    sput-object v0, Lwc0;->zzb:Lwc0;

    const-class v1, Lwc0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    return-void
.end method

.method public static k()Leyb;
    .locals 1

    sget-object v0, Lwc0;->zzb:Lwc0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->b()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    check-cast v0, Leyb;

    return-object v0
.end method

.method public static synthetic l(Lwc0;Lspb;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lwc0;->zze:Lspb;

    iget p1, p0, Lwc0;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lwc0;->zzd:I

    return-void
.end method

.method public static synthetic m(Lwc0;Lcqa;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lwc0;->zzf:Lcqa;

    iget p1, p0, Lwc0;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lwc0;->zzd:I

    return-void
.end method


# virtual methods
.method public final j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
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
    sget-object p0, Lwc0;->zzb:Lwc0;

    return-object p0

    :cond_1
    new-instance p0, Leyb;

    sget-object p1, Lwc0;->zzb:Lwc0;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lwc0;

    invoke-direct {p0}, Lwc0;-><init>()V

    return-object p0

    :cond_3
    const-string p0, "zzf"

    const-string p1, "zzg"

    const-string p2, "zzd"

    const-string v0, "zze"

    filled-new-array {p2, v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lwc0;->zzb:Lwc0;

    new-instance p2, Ltgb;

    const-string v0, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-direct {p2, p1, v0, p0}, Ltgb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
