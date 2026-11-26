.class public final Lvya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/tasks/Task;

.field public final synthetic c:Lb3b;


# direct methods
.method public constructor <init>(Lb3b;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lvya;->b:Lcom/google/android/gms/tasks/Task;

    iput-object p1, p0, Lvya;->c:Lb3b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvya;->b:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v1

    iget-object p0, p0, Lvya;->c:Lb3b;

    iget-object v2, p0, Lb3b;->d:Llgc;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Llgc;->d()V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lb3b;->c:Lcom/google/android/gms/tasks/Continuation;

    invoke-interface {p0, v0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, p0}, Llgc;->a(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {v2, p0}, Llgc;->c(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {v2, p0}, Llgc;->c(Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {v2, p0}, Llgc;->c(Ljava/lang/Exception;)V

    return-void
.end method
