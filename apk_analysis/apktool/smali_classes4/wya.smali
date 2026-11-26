.class public final Lwya;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lwya;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwya;

    invoke-direct {v0}, Lwya;-><init>()V

    sput-object v0, Lwya;->zzb:Lwya;

    const-class v1, Lwya;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    sget-object v0, Lk8b;->e:Lk8b;

    iput-object v0, p0, Lwya;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    iput-object v0, p0, Lwya;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    return-void
.end method

.method public static k()Luva;
    .locals 1

    sget-object v0, Lwya;->zzb:Lwya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->b()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    check-cast v0, Luva;

    return-object v0
.end method

.method public static synthetic l(Lwya;I)V
    .locals 1

    iget v0, p0, Lwya;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lwya;->zzd:I

    iput p1, p0, Lwya;->zzh:I

    return-void
.end method

.method public static m(Lwya;F)V
    .locals 2

    iget-object v0, p0, Lwya;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-result-object v0

    iput-object v0, p0, Lwya;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    :cond_1
    iget-object p0, p0, Lwya;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzh(F)V

    return-void
.end method

.method public static n(Lwya;F)V
    .locals 2

    iget-object v0, p0, Lwya;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    move-result-object v0

    iput-object v0, p0, Lwya;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    :cond_1
    iget-object p0, p0, Lwya;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzh(F)V

    return-void
.end method

.method public static synthetic o(Lwya;I)V
    .locals 1

    iget v0, p0, Lwya;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lwya;->zzd:I

    iput p1, p0, Lwya;->zzg:I

    return-void
.end method


# virtual methods
.method public final j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
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

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lwya;->zzb:Lwya;

    return-object p0

    :cond_1
    new-instance p0, Luva;

    sget-object p1, Lwya;->zzb:Lwya;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lwya;

    invoke-direct {p0}, Lwya;-><init>()V

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

    sget-object p1, Lwya;->zzb:Lwya;

    new-instance p2, Ltgb;

    const-string v0, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u0013\u0002\u0013\u0003\u100b\u0000\u0004\u100b\u0001\u0005\u100b\u0002\u0006\u100b\u0003"

    invoke-direct {p2, p1, v0, p0}, Ltgb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
