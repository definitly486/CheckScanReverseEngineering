.class public final synthetic Lld6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liy8;


# instance fields
.field public final synthetic a:Lod6;


# direct methods
.method public synthetic constructor <init>(Lod6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld6;->a:Lod6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lji9$d;)Leo2;
    .locals 4

    iget-object p0, p0, Lld6;->a:Lod6;

    :try_start_0
    invoke-virtual {p2, p1}, Lji9$d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leo2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lod6;->l:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lod6;->c:Lta6;

    iget-object v0, v0, Lnb6;->I:Lqb6;

    invoke-interface {v0}, Lqb6;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v2, p0, Lod6;->g:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lgd6;

    invoke-direct {v3, p0, p1, v0, v1}, Lgd6;-><init>(Lod6;Landroid/view/MotionEvent;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-object p2

    :catchall_1
    move-exception p2

    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TouchEventInterceptor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    throw p2
.end method
