.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzm;
.super Lqub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzk;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lqub;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lqub;->b:I

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzm;
    .locals 0

    invoke-virtual {p0, p1}, Lqub;->zza(Ljava/lang/Object;)Lqub;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqub;->c:Z

    iget-object v0, p0, Lqub;->a:[Ljava/lang/Object;

    iget p0, p0, Lqub;->b:I

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->c:Lt6c;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_common/b;->f:Lcom/google/android/gms/internal/mlkit_vision_common/b;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/b;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/b;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method
