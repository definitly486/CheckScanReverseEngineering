.class public final synthetic Ly52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lxl3;
.implements Lokhttp3/b$c;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ly52;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljy6;)Lokhttp3/b;
    .locals 0

    iget-object p0, p0, Ly52;->b:Ljava/lang/Object;

    check-cast p0, Lokhttp3/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly52;->b:Ljava/lang/Object;

    check-cast p0, Lss5;

    invoke-virtual {p0, p1}, Lss5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Ly52;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/pb;

    sget v0, Lcom/my/target/pb;->m:I

    iput-object p1, p0, Lcom/my/target/pb;->f:Le6a;

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ly52;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/SuccessContinuation;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorker;->e(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
