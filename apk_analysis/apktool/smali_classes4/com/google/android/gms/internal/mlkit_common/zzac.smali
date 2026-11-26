.class public final Lcom/google/android/gms/internal/mlkit_common/zzac;
.super Lcom/google/android/gms/internal/mlkit_common/zzaa;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzaa;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->b:I

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzac;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->a:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->a:[Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->c:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->a:[Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->c:Z

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->b:I

    aput-object p1, v1, v0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_common/zzaf;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->a:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzac;->b:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzaf;->c:Lxqa;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/a;->f:Lcom/google/android/gms/internal/mlkit_common/a;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/a;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_common/a;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method
