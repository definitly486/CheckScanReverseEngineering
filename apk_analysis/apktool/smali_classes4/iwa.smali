.class public final Liwa;
.super Lcom/google/android/gms/tasks/CancellationToken;
.source "SourceFile"


# instance fields
.field public final a:Llgc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    new-instance v0, Llgc;

    invoke-direct {v0}, Llgc;-><init>()V

    iput-object v0, p0, Liwa;->a:Llgc;

    return-void
.end method


# virtual methods
.method public final isCancellationRequested()Z
    .locals 0

    iget-object p0, p0, Liwa;->a:Llgc;

    invoke-virtual {p0}, Llgc;->isComplete()Z

    move-result p0

    return p0
.end method

.method public final onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
    .locals 2

    new-instance v0, Lboa;

    invoke-direct {v0, p0, p1}, Lboa;-><init>(Liwa;Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V

    iget-object p1, p0, Liwa;->a:Llgc;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Llgc;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-object p0
.end method
