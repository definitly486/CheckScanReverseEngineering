.class public final synthetic Lcka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcka;->b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcka;->b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->i:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->b()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->f:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnectionSuspended(I)V

    return-void
.end method
