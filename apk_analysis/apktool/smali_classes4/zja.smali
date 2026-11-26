.class public final synthetic Lzja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzja;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p2, p0, Lzja;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lzja;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object p0, p0, Lzja;->c:Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ListenerHolder;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->onNotifyListenerFailed()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;->a:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->notifyListener(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;->onNotifyListenerFailed()V

    throw v0
.end method
