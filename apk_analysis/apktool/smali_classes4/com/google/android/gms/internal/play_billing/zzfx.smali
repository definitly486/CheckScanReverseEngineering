.class public abstract Lcom/google/android/gms/internal/play_billing/zzfx;
.super Lcom/google/android/gms/internal/play_billing/zzfg;
.source "SourceFile"


# instance fields
.field public a:Lbhb;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static zzx(Lcom/google/android/gms/internal/play_billing/zzhr;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzhr;->zzn()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzy(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzz(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method


# virtual methods
.method public abstract a(I[B)V
.end method

.method public final zzA()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zza()I

    move-result p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Wrote more data than expected."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
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

.method public abstract zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/play_billing/zzfp;)V
.end method

.method public abstract zzh(II)V
.end method

.method public abstract zzi(I)V
.end method

.method public abstract zzj(IJ)V
.end method

.method public abstract zzk(J)V
.end method

.method public abstract zzl(II)V
.end method

.method public abstract zzm(I)V
.end method

.method public abstract zzn(Lcom/google/android/gms/internal/play_billing/zzhr;)V
.end method

.method public abstract zzo(ILcom/google/android/gms/internal/play_billing/zzhr;)V
.end method

.method public abstract zzp(ILcom/google/android/gms/internal/play_billing/zzfp;)V
.end method

.method public abstract zzq(ILjava/lang/String;)V
.end method

.method public abstract zzr(Ljava/lang/String;)V
.end method

.method public abstract zzs(II)V
.end method

.method public abstract zzt(II)V
.end method

.method public abstract zzu(I)V
.end method

.method public abstract zzv(IJ)V
.end method

.method public abstract zzw(J)V
.end method
