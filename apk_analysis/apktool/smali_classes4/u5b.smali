.class public final Lu5b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;)V
    .locals 1

    iput-object p1, p0, Lu5b;->f:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lu5b;->f:Lcom/google/android/gms/internal/measurement/zzez;

    iget-wide v1, v0, Lcom/google/android/gms/internal/measurement/zzez;->i:J

    const-wide/16 v3, 0xaa

    cmp-long v1, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-ltz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-wide v1, p0, Lcbb;->b:J

    iget-wide v3, p0, Lcbb;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcp;->resetAnalyticsDataWithElapsedTime(JJ)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    iget-wide v1, p0, Lcbb;->b:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcp;->resetAnalyticsData(J)V

    return-void
.end method
