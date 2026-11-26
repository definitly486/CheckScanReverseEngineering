.class public final Lyr5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lls5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lls5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lls5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lls5<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lwr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwr5<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Lkp7;

.field public e:Z


# direct methods
.method public constructor <init>(Lls5;Lor5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyr5$a;->b:Lls5;

    iput-object p2, p0, Lyr5$a;->c:Lwr5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyr5$a;->e:Z

    new-instance p1, Lkp7;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lyr5$a;->d:Lkp7;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lyr5$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyr5$a;->e:Z

    iget-object v0, p0, Lyr5$a;->c:Lwr5;

    invoke-interface {v0, p0}, Lwr5;->a(Lls5;)V

    return-void

    :cond_0
    iget-object p0, p0, Lyr5$a;->b:Lls5;

    invoke-interface {p0}, Lls5;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lyr5$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lyr5$a;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyr5$a;->e:Z

    :cond_0
    iget-object p0, p0, Lyr5$a;->b:Lls5;

    invoke-interface {p0, p1}, Lls5;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lcp2;)V
    .locals 0

    iget-object p0, p0, Lyr5$a;->d:Lkp7;

    invoke-static {p0, p1}, Lip2;->f(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
