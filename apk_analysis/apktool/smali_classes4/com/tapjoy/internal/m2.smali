.class public final Lcom/tapjoy/internal/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:Lcom/tapjoy/internal/o2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/o2;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/m2;->b:Lcom/tapjoy/internal/o2;

    iput-object p2, p0, Lcom/tapjoy/internal/m2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    sget-object p1, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tapjoy/internal/m2;->b:Lcom/tapjoy/internal/o2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/tapjoy/internal/o2;->a:Z

    goto :goto_0

    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tapjoy/internal/m2;->b:Lcom/tapjoy/internal/o2;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/tapjoy/internal/o2;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iput-object p2, p1, Lcom/tapjoy/internal/p2;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/tapjoy/internal/m2;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
