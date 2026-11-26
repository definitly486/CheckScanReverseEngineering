.class public final Lcom/google/android/gms/location/DeviceOrientation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/DeviceOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:[F

.field public b:F

.field public c:F

.field public d:J

.field public e:B

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/DeviceOrientation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    iget-object v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->b:[F

    invoke-static {v0}, Lcom/google/android/gms/location/DeviceOrientation;->a([F)V

    iget-object v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->b:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->a:[F

    iget v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->c:F

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    iget v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->d:F

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    iget v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->h:F

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setConservativeHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    iget-wide v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    iget v0, p1, Lcom/google/android/gms/location/DeviceOrientation;->g:F

    iput v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->f:F

    iget-byte p1, p1, Lcom/google/android/gms/location/DeviceOrientation;->f:B

    iput-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    return-void
.end method

.method public constructor <init>([FFFJ)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/location/DeviceOrientation;->a([F)V

    .line 51
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->a:[F

    .line 52
    invoke-virtual {p0, p2}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    .line 53
    invoke-virtual {p0, p3}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    .line 54
    invoke-virtual {p0, p4, p5}, Lcom/google/android/gms/location/DeviceOrientation$Builder;->setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->f:F

    const/high16 p1, 0x43340000    # 180.0f

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->g:F

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/DeviceOrientation;
    .locals 9

    new-instance v0, Lcom/google/android/gms/location/DeviceOrientation;

    iget v2, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->b:F

    iget v3, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->c:F

    iget-wide v4, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->d:J

    iget-byte v6, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    iget v7, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->f:F

    iget v8, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->g:F

    iget-object v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->a:[F

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/DeviceOrientation;-><init>([FFFJBFF)V

    return-object v0
.end method

.method public clearConservativeHeadingErrorDegrees()Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->g:F

    iget-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    and-int/lit8 v0, v0, -0x41

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->f:F

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    return-object p0
.end method

.method public setAttitude([F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/location/DeviceOrientation;->a([F)V

    array-length v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->a:[F

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setConservativeHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    if-ltz v1, :cond_0

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v1, "conservativeHeadingErrorDegrees should be between 0 and 180."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/location/zzeo;->zza(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->g:F

    iget-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    sget-object v1, Lcom/google/android/gms/location/DeviceOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->f:F

    iget-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->e:B

    return-object p0
.end method

.method public setElapsedRealtimeNs(J)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "elapsedRealtimeNs should be greater than or equal to 0."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/location/zzeo;->zza(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->d:J

    return-object p0
.end method

.method public setHeadingDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "headingDegrees should be greater than or equal to 0 and less than 360."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/location/zzeo;->zza(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->b:F

    return-object p0
.end method

.method public setHeadingErrorDegrees(F)Lcom/google/android/gms/location/DeviceOrientation$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "headingErrorDegrees should be between 0 and 180."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/location/zzeo;->zza(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/DeviceOrientation$Builder;->c:F

    return-object p0
.end method
