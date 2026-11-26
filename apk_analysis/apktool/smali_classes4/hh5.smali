.class public final Lhh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field public static volatile e:Lhh5;

.field public static final f:Ljava/lang/Object;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhh5;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrf6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lrf6;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lrf6;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lhh5;->d:Ljava/lang/Object;

    new-instance v0, Lqf6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lqf6;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lhh5;->b:Ljava/lang/Object;

    new-instance v0, Leg9;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Leg9;-><init>(I)V

    iput-object v0, p0, Lhh5;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/tasks/zza;Lcom/google/android/gms/tasks/TaskCompletionSource;Liwa;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhh5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhh5;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lhh5;
    .locals 2

    sget-object v0, Lhh5;->e:Lhh5;

    if-nez v0, :cond_1

    sget-object v0, Lhh5;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lhh5;->e:Lhh5;

    if-nez v1, :cond_0

    new-instance v1, Lhh5;

    invoke-direct {v1}, Lhh5;-><init>()V

    sput-object v1, Lhh5;->e:Lhh5;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lhh5;->e:Lhh5;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lhh5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/tasks/zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lhh5;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lhh5;->d:Ljava/lang/Object;

    check-cast p0, Liwa;

    iget-object p0, p0, Liwa;->a:Llgc;

    invoke-virtual {p0, v1}, Llgc;->b(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
