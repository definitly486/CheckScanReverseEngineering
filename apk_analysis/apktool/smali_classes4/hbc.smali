.class public final Lhbc;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lhbc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

.field private zzl:Ljava/lang/String;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhbc;

    invoke-direct {v0}, Lhbc;-><init>()V

    sput-object v0, Lhbc;->zzb:Lhbc;

    const-class v1, Lhbc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lhbc;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lhbc;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lhbc;->zzg:Ljava/lang/String;

    sget-object v1, Lqgb;->e:Lqgb;

    iput-object v1, p0, Lhbc;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    iput-object v1, p0, Lhbc;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    iput-object v1, p0, Lhbc;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    iput-object v1, p0, Lhbc;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    iput-object v0, p0, Lhbc;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static l()Lhbc;
    .locals 1

    sget-object v0, Lhbc;->zzb:Lhbc;

    return-object v0
.end method


# virtual methods
.method public final j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 12

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lhbc;->zzm:B

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lhbc;->zzb:Lhbc;

    return-object p0

    :cond_2
    new-instance p0, Lt8c;

    sget-object p1, Lhbc;->zzb:Lhbc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_3
    new-instance p0, Lhbc;

    invoke-direct {p0}, Lhbc;-><init>()V

    return-object p0

    :cond_4
    const-class v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzci;

    const-string v11, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;

    const-string v6, "zzi"

    const-class v7, Lqfc;

    const-string v8, "zzj"

    const-string v9, "zzk"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lhbc;->zzb:Lhbc;

    new-instance p2, Ltgb;

    const-string v0, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0004\u0001\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u001b\u0005\u001b\u0006\u001a\u0007\u041b\u0008\u1008\u0003"

    invoke-direct {p2, p1, v0, p0}, Ltgb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_5
    iget-byte p0, p0, Lhbc;->zzm:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;
    .locals 0

    iget-object p0, p0, Lhbc;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final m()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Lhbc;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final n()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Lhbc;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final o()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Lhbc;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final p()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
    .locals 0

    iget-object p0, p0, Lhbc;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhbc;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhbc;->zzg:Ljava/lang/String;

    return-object p0
.end method
