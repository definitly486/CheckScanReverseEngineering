.class public final Lm6c;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# static fields
.field private static final zzb:Lm6c;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Le1c;

.field private zzk:Le1c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm6c;

    invoke-direct {v0}, Lm6c;-><init>()V

    sput-object v0, Lm6c;->zzb:Lm6c;

    const-class v1, Lm6c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lm6c;->zze:Ljava/lang/String;

    iput-object v0, p0, Lm6c;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lm6c;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lm6c;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lm6c;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static m()Lm6c;
    .locals 1

    sget-object v0, Lm6c;->zzb:Lm6c;

    return-object v0
.end method


# virtual methods
.method public final j(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;
    .locals 8

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
    sget-object p0, Lm6c;->zzb:Lm6c;

    return-object p0

    :cond_1
    new-instance p0, Lzlb;

    sget-object p1, Lm6c;->zzb:Lm6c;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-object p0

    :cond_2
    new-instance p0, Lm6c;

    invoke-direct {p0}, Lm6c;-><init>()V

    return-object p0

    :cond_3
    const-string v6, "zzj"

    const-string v7, "zzk"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm6c;->zzb:Lm6c;

    new-instance p2, Ltgb;

    const-string v0, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1009\u0005\u0007\u1009\u0006"

    invoke-direct {p2, p1, v0, p0}, Ltgb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final k()Le1c;
    .locals 0

    iget-object p0, p0, Lm6c;->zzk:Le1c;

    if-nez p0, :cond_0

    invoke-static {}, Le1c;->o()Le1c;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final l()Le1c;
    .locals 0

    iget-object p0, p0, Lm6c;->zzj:Le1c;

    if-nez p0, :cond_0

    invoke-static {}, Le1c;->o()Le1c;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm6c;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm6c;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm6c;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm6c;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm6c;->zze:Ljava/lang/String;

    return-object p0
.end method
