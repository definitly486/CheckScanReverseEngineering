.class public final Lka5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llu6;


# virtual methods
.method public final a(Lqo7;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p0}, Lc31;->u()V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lt9;

    invoke-direct {v1, p0, v0}, Lt9;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lka5$a;

    invoke-direct {v0, v1}, Lka5$a;-><init>(Lt9;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lja5;

    invoke-direct {v0, p0}, Lja5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method
