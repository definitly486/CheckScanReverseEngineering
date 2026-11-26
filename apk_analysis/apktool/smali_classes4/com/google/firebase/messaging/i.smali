.class public final synthetic Lcom/google/firebase/messaging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic b:Lcom/google/firebase/messaging/GmsRegistrationClient;

.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/i;->b:Lcom/google/firebase/messaging/GmsRegistrationClient;

    iput-object p2, p0, Lcom/google/firebase/messaging/i;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/i;->b:Lcom/google/firebase/messaging/GmsRegistrationClient;

    iget-object p0, p0, Lcom/google/firebase/messaging/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/messaging/GmsRegistrationClient;->c(Lcom/google/firebase/messaging/GmsRegistrationClient;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
