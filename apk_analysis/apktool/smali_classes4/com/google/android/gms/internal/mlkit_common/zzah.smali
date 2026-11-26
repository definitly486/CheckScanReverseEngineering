.class public final Lcom/google/android/gms/internal/mlkit_common/zzah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Lwsa;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->b:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzah;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->a:[Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->a:[Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->b:I

    add-int v2, v0, v0

    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->b:I

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null value in entry: "

    const-string p2, "=null"

    invoke-static {p1, p0, p2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "null key in entry: null="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_common/zzai;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->c:Lwsa;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->a:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lrua;->e(I[Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzah;)Lrua;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzah;->c:Lwsa;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lwsa;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {v0}, Lwsa;->a()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method
