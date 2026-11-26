.class public final Lzic;
.super Lcom/google/android/gms/internal/measurement/zzaaa;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/measurement/zzzj;

.field public final c:Lcom/google/android/gms/internal/measurement/zzzj;

.field public final d:[I

.field public final e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzic;->b:Lcom/google/android/gms/internal/measurement/zzzj;

    iput-object p2, p0, Lzic;->c:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result p1

    const/16 p2, 0x1c

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v2, "metadata size too large"

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->zzb(ZLjava/lang/String;)V

    new-array p2, p1, [I

    iput-object p2, p0, Lzic;->d:[I

    const-wide/16 v2, 0x0

    move v4, v0

    move v5, v4

    :goto_1
    if-ge v4, p1, :cond_5

    invoke-virtual {p0, v4}, Lzic;->a(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzyl;->zzi()J

    move-result-wide v7

    or-long/2addr v7, v2

    cmp-long v2, v7, v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_2
    const/4 v3, -0x1

    if-ge v2, v5, :cond_2

    aget v9, p2, v2

    and-int/lit8 v9, v9, 0x1f

    invoke-virtual {p0, v9}, Lzic;->a(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_3
    if-eq v2, v3, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v3

    if-eqz v3, :cond_3

    aget v3, p2, v2

    add-int/lit8 v6, v4, 0x4

    shl-int v6, v1, v6

    or-int/2addr v3, v6

    goto :goto_4

    :cond_3
    move v3, v4

    :goto_4
    aput v3, p2, v2

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v5, 0x1

    aput v4, p2, v5

    move v5, v2

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v7

    goto :goto_1

    :cond_5
    iput v5, p0, Lzic;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/zzyl;
    .locals 2

    iget-object v0, p0, Lzic;->b:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lzic;->c:Lcom/google/android/gms/internal/measurement/zzzj;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzzq;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lzic;->e:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lzic;->d:[I

    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0, v2}, Lzic;->a(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzyl;->zzf()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lzic;->b:Lcom/google/android/gms/internal/measurement/zzzj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v4

    if-lt v1, v4, :cond_0

    iget-object v3, p0, Lzic;->c:Lcom/google/android/gms/internal/measurement/zzzj;

    sub-int/2addr v1, v4

    :cond_0
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzyl;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/android/gms/internal/measurement/zzzq;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lyic;

    invoke-direct {v3, p0, v2, v1}, Lyic;-><init>(Lzic;Lcom/google/android/gms/internal/measurement/zzyl;I)V

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/zzzq;->b(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lzic;->e:I

    return p0
.end method

.method public final zzc()Ljava/util/Set;
    .locals 1

    new-instance v0, Lxic;

    invoke-direct {v0, p0}, Lxic;-><init>(Lzic;)V

    return-object v0
.end method
