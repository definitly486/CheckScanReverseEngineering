.class public final synthetic Lcma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/moduleinstall/internal/zay;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

.field public final synthetic e:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

.field public final synthetic f:Luia;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Luia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcma;->b:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iput-object p2, p0, Lcma;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcma;->d:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iput-object p4, p0, Lcma;->e:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iput-object p5, p0, Lcma;->f:Luia;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    new-instance v0, Lpla;

    iget-object v1, p0, Lcma;->d:Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;

    iget-object v2, p0, Lcma;->b:Lcom/google/android/gms/common/moduleinstall/internal/zay;

    iget-object v3, p0, Lcma;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2, v3, p2, v1}, Lpla;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/moduleinstall/InstallStatusListener;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p2, p0, Lcma;->e:Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    iget-object p0, p0, Lcma;->f:Luia;

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zaf(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    return-void
.end method
