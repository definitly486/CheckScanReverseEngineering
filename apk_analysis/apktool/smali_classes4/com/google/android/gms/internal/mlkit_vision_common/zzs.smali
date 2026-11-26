.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzs;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzl;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public transient c:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p1, p0, :cond_3

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v0

    :catch_0
    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public g()Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzl;->toArray()[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->c:Lt6c;

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/b;->f:Lcom/google/android/gms/internal/mlkit_vision_common/b;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/b;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 3

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzab;

    move-result-object p0

    return-object p0
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzab;
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->g()Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzs;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    :cond_0
    return-object v0
.end method
