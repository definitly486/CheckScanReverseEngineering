.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public transient c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;->b(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public g()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcn;->toArray()[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;->c:Lq1b;

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;->f:Lcom/google/android/gms/internal/mlkit_vision_barcode/a;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/a;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzds;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdu;

    move-result-object p0

    return-object p0
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdu;
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->g()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcv;->c:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    :cond_0
    return-object v0
.end method
