.class public final Ljpa;
.super Lvqa;
.source "SourceFile"


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/location/zzae;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 0

    iput-wide p3, p0, Ljpa;->r:J

    iput-object p5, p0, Ljpa;->s:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lvqa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/location/zzf;

    iget-object v0, p0, Ljpa;->s:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Ljpa;->r:J

    cmp-long v1, v3, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "detectionIntervalMillis must be >= 0"

    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzu;

    invoke-interface {p1, v3, v4, v2, v0}, Lcom/google/android/gms/internal/location/zzu;->zzh(JZLandroid/app/PendingIntent;)V

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
