.class public final synthetic Lcom/google/firebase/inappmessaging/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

.field public final synthetic c:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field public final synthetic d:Lcom/google/firebase/inappmessaging/model/Action;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/b;->b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/b;->c:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/b;->d:Lcom/google/firebase/inappmessaging/model/Action;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/b;->c:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/b;->d:Lcom/google/firebase/inappmessaging/model/Action;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/b;->b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->b(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method
