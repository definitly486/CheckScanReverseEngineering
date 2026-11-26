.class public final Llm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Llm1;->b:Ljava/lang/Object;

    iput-object p2, p0, Llm1;->c:Ljava/lang/Object;

    iput-object p3, p0, Llm1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Llm1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/location/zzf;

    new-instance v1, Lvsa;

    invoke-direct {v1, v0, p2}, Lvsa;-><init>(Lcom/google/android/gms/internal/location/zzao;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzu;

    iget-object p2, p0, Llm1;->c:Ljava/lang/Object;

    check-cast p2, Landroid/app/PendingIntent;

    iget-object p0, p0, Llm1;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/location/SleepSegmentRequest;

    invoke-interface {p1, p2, p0, v1}, Lcom/google/android/gms/internal/location/zzu;->zzm(Landroid/app/PendingIntent;Lcom/google/android/gms/location/SleepSegmentRequest;Lcom/google/android/gms/common/api/internal/IStatusCallback;)V

    return-void
.end method
