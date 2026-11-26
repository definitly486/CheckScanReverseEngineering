.class public final Lcom/google/android/gms/internal/measurement/zzjo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/measurement/zzjo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/zzjo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Z

.field public final d:D

.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:I

.field public final zza:Ljava/lang/String;

.field public final zzg:I

.field public final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BIII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    iput p9, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzh:I

    iput p11, p0, Lcom/google/android/gms/internal/measurement/zzjo;->g:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 6

    const-string v0, "Flag("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x4

    const-string v5, "\'"

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid type: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzh:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->g:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    iget v1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v1, :cond_3

    return v1

    :cond_3
    if-eq v0, v4, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    if-ne p0, p1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p0, :cond_5

    goto/16 :goto_2

    :cond_5
    if-nez p1, :cond_6

    goto/16 :goto_4

    :cond_6
    move v0, v3

    :goto_1
    array-length v1, p1

    array-length v5, p0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_8

    aget-byte v1, p0, v0

    aget-byte v5, p1, v0

    sub-int/2addr v1, v5

    if-eqz v1, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    if-ge v5, v1, :cond_9

    return v2

    :cond_9
    if-eq v5, v1, :cond_a

    return v4

    :cond_a
    return v3

    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x14

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Invalid enum value: "

    invoke-static {p1, p0, v0}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return v3

    :cond_c
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    if-ne p0, p1, :cond_d

    goto :goto_3

    :cond_d
    if-nez p0, :cond_e

    goto :goto_2

    :cond_e
    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_10
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    iget-wide p0, p1, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    :cond_11
    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    if-ne p0, p1, :cond_12

    goto :goto_3

    :cond_12
    if-eqz p0, :cond_14

    goto :goto_4

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    iget-wide p0, p1, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_15

    :cond_14
    :goto_2
    return v2

    :cond_15
    if-nez p0, :cond_16

    :goto_3
    return v3

    :cond_16
    :goto_4
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjo;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    iget v2, p1, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    if-ne v0, v2, :cond_9

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzh:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzjo;->zzh:I

    if-ne v2, v3, :cond_9

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->g:I

    iget v3, p1, Lcom/google/android/gms/internal/measurement/zzjo;->g:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x14

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Invalid enum value: "

    invoke-static {p1, p0, v0}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    iget-wide p0, p1, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    cmpl-double p0, v3, p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    if-eq p0, p1, :cond_6

    return v1

    :cond_6
    return v2

    :cond_7
    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    iget-wide p0, p1, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjo;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjp;->zzb(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_0
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    invoke-static {p1, p2, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    :cond_2
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    cmpl-double p2, v5, v3

    if-eqz p2, :cond_3

    const/4 p2, 0x5

    invoke-static {p1, p2, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjp;->zzb(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    invoke-static {p1, v0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjp;->zzb(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    invoke-static {p1, v0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    :cond_5
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(I)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    :cond_6
    iget p2, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzh:I

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    :cond_7
    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->g:I

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(I)Z

    move-result p2

    if-nez p2, :cond_8

    const/16 p2, 0xa

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    :cond_8
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->b:J

    return-wide v0

    :cond_0
    const-string p0, "Not a long type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzb()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->c:Z

    return p0

    :cond_0
    const-string p0, "Not a boolean type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final zzc()D
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->d:D

    return-wide v0

    :cond_0
    const-string p0, "Not a double type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Not a String type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zze()[B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->f:[B

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    const-string p0, "Not a bytes type"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
