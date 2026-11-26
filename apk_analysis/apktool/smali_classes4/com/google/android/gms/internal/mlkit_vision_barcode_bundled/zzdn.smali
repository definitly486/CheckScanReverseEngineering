.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcx;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Ld6b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->b:Ljava/util/logging/Logger;

    sget-boolean v0, Lqlb;->e:Z

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static zzA(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzB(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;->zzF()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzz(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lwmb;->c(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ltmb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzep;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zzA(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public abstract a(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;Ljib;)V
.end method

.method public final zzC()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdn;->zza()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Did not write as much data as expected."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(B)V
.end method

.method public abstract zzd(IZ)V
.end method

.method public abstract zze(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
.end method

.method public abstract zzf(II)V
.end method

.method public abstract zzg(I)V
.end method

.method public abstract zzh(IJ)V
.end method

.method public abstract zzi(J)V
.end method

.method public abstract zzj(II)V
.end method

.method public abstract zzk(I)V
.end method

.method public abstract zzl([BII)V
.end method

.method public abstract zzn(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfm;)V
.end method

.method public abstract zzo(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;)V
.end method

.method public abstract zzp(ILjava/lang/String;)V
.end method

.method public abstract zzr(II)V
.end method

.method public abstract zzs(II)V
.end method

.method public abstract zzt(I)V
.end method

.method public abstract zzu(IJ)V
.end method

.method public abstract zzv(J)V
.end method
