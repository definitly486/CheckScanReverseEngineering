.class public final Lcom/tapjoy/internal/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/p2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g2;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/j2;->a:Lcom/tapjoy/internal/p2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    sget-object p1, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tapjoy/internal/j2;->a:Lcom/tapjoy/internal/p2;

    iget-object p2, p1, Lcom/tapjoy/internal/p2;->h:Lcom/tapjoy/internal/l2;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/tapjoy/internal/l2;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/tapjoy/internal/o2;

    invoke-direct {p2, p1}, Lcom/tapjoy/internal/o2;-><init>(Lcom/tapjoy/internal/p2;)V

    iput-object p2, p1, Lcom/tapjoy/internal/p2;->f:Lcom/tapjoy/internal/o2;

    iget-object p0, p0, Lcom/tapjoy/internal/j2;->a:Lcom/tapjoy/internal/p2;

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->c:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->f:Lcom/tapjoy/internal/o2;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
