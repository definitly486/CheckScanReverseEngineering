.class public final Lhw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhw9;->b:Ljava/lang/Object;

    iput-object p1, p0, Lhw9;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lhw9;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhw9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lhw9;->c:Ljava/lang/Object;

    check-cast v0, Lks9;

    iget-object p0, p0, Lhw9;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    const/16 p1, 0xbbe

    invoke-virtual {p0, p1}, Lks9;->f(I)V

    return v2

    :cond_0
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    invoke-virtual {v0, p1}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p1

    const/16 v0, 0xbbf

    invoke-virtual {p1, v0}, Lks9;->f(I)V

    :cond_1
    return p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lhw9;->c:Ljava/lang/Object;

    check-cast v0, Lks9;

    iget-object p0, p0, Lhw9;->b:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    const/16 p1, 0xbbe

    invoke-virtual {p0, p1}, Lks9;->f(I)V

    return-object v2

    :cond_0
    const-string v1, "D00DC568-C315-4A5C-AE45-3C177B095B35-2165462B-6EC5-49BA-AD28-F48420D9A7DA"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lks9;->a(Ljava/lang/String;)Lks9;

    move-result-object p0

    const/16 p1, 0xbbf

    invoke-virtual {p0, p1}, Lks9;->f(I)V

    return-object v2
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p1, p0, Lhw9;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaaa;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaa;->b:Ljava/util/Map;

    iget-object p0, p0, Lhw9;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lhw9;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    iget-object p0, p0, Lhw9;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    sget v2, Lcom/google/android/gms/cloudmessaging/Rpc;->h:I

    if-eqz v1, :cond_1

    const-string v2, "google.messenger"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cloudmessaging/Rpc;->b(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lgsa;->b:Lgsa;

    sget-object v0, Lpc6;->b:Lpc6;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
