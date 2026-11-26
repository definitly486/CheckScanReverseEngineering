.class Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;
.super Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClicksExecutorAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener<",
        "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 8
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->listener:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    return-object p0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    move-result-object p0

    return-object p0
.end method
