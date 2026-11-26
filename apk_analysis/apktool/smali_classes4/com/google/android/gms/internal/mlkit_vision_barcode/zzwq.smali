.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwr;

.field public final synthetic zzb:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwr;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwr;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwq;->zzb:J

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwr;

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwq;->zzb:J

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwr;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
