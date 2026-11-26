.class public final Lcom/google/android/gms/internal/common/zzad;
.super Lsoa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsoa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzad;
    .locals 0

    invoke-virtual {p0, p1}, Lsoa;->zza(Ljava/lang/Object;)Lsoa;

    return-object p0
.end method

.method public final zzc(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/zzad;
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsoa;->zza(Ljava/lang/Object;)Lsoa;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/common/zzah;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsoa;->c:Z

    iget-object v0, p0, Lsoa;->a:[Ljava/lang/Object;

    iget p0, p0, Lsoa;->b:I

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/common/zzah;->i(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/common/a;

    move-result-object p0

    return-object p0
.end method
