.class public final synthetic Lcom/google/firebase/inappmessaging/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

.field public final synthetic c:Lcom/google/firebase/inappmessaging/model/InAppMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/d;->b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/d;->c:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/d;->b:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/d;->c:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->d(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method
