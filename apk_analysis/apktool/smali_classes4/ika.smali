.class public final synthetic Lika;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

.field public final synthetic c:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lika;->b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    iput-object p2, p0, Lika;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lika;->b:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    iput-boolean v0, v1, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->j:Z

    iget-object p0, p0, Lika;->c:Landroid/os/IBinder;

    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->i:Landroid/os/IBinder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->b()V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->f:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method
