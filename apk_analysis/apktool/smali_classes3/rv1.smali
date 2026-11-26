.class public final synthetic Lrv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lv75;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lrv1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lrv1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc75$a;)V
    .locals 3

    iget-object v0, p0, Lrv1;->b:Ljava/lang/Object;

    check-cast v0, Lo22;

    iget-object p0, p0, Lrv1;->c:Ljava/lang/Object;

    check-cast p0, Lbm3;

    sget-object v1, Lgx2;->b:Lgx2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lq22;->a(Lo22;Lo22;Z)Lo22;

    move-result-object v0

    sget-object v1, Lqo2;->a:Loi2;

    if-eq v0, v1, :cond_0

    sget-object v2, Lg02$a;->b:Lg02$a;

    invoke-interface {v0, v2}, Lo22;->get(Lo22$b;)Lo22$a;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    :cond_0
    new-instance v1, Le97;

    invoke-direct {v1, v0, p1}, Le97;-><init>(Lo22;Lc75$a;)V

    new-instance v0, Lx87;

    invoke-direct {v0, v1}, Lx87;-><init>(La0;)V

    new-instance v2, Lf31;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    sget-object p1, Lc32;->DEFAULT:Lc32;

    invoke-virtual {v1, p1, v1, p0}, La0;->m0(Lc32;La0;Lbm3;)V

    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrv1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    iget-object p0, p0, Lrv1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->d(Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Ljava/util/HashMap;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
