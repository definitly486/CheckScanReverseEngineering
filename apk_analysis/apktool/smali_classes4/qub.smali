.class public Lqub;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzk;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# virtual methods
.method public final zza(Ljava/lang/Object;)Lqub;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lqub;->b:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lqub;->a:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int v3, v0, v0

    :cond_0
    if-gez v3, :cond_1

    const v3, 0x7fffffff

    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lqub;->a:[Ljava/lang/Object;

    iput-boolean v4, p0, Lqub;->c:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lqub;->c:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Lqub;->a:[Ljava/lang/Object;

    iput-boolean v4, p0, Lqub;->c:Z

    :cond_3
    :goto_0
    iget v0, p0, Lqub;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lqub;->b:I

    aput-object p1, v2, v0

    return-object p0
.end method
