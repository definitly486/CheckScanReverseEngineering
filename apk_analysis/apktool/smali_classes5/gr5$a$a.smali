.class public final Lgr5$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lmq1;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcp2;",
        ">;",
        "Lmq1;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lgr5$a;


# direct methods
.method public constructor <init>(Lgr5$a;)V
    .locals 0

    iput-object p1, p0, Lgr5$a$a;->b:Lgr5$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcp2;

    invoke-static {p0}, Lip2;->d(Lcp2;)Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lgr5$a$a;->b:Lgr5$a;

    iget-object v1, v0, Lgr5$a;->e:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0}, Lgr5$a;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgr5$a$a;->b:Lgr5$a;

    iget-object v1, v0, Lgr5$a;->e:Lfu1;

    invoke-virtual {v1, p0}, Lfu1;->a(Lcp2;)Z

    invoke-virtual {v0, p1}, Lgr5$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    invoke-static {p0, p1}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method
