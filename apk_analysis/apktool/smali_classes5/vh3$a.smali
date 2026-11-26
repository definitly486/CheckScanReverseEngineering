.class public final Lvh3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrh3;
.implements Lcp2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lrh3<",
        "TT;>;",
        "Lcp2;"
    }
.end annotation


# instance fields
.field public final b:Lt08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt08<",
            "-TU;>;"
        }
    .end annotation
.end field

.field public c:Lbc8;

.field public d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt08;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TU;>;TU;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvh3$a;->b:Lt08;

    iput-object p2, p0, Lvh3$a;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Lbc8;)V
    .locals 2

    iget-object v0, p0, Lvh3$a;->c:Lbc8;

    invoke-static {v0, p1}, Lhc8;->f(Lbc8;Lbc8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lvh3$a;->c:Lbc8;

    iget-object v0, p0, Lvh3$a;->b:Lt08;

    invoke-interface {v0, p0}, Lt08;->onSubscribe(Lcp2;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lbc8;->request(J)V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lvh3$a;->c:Lbc8;

    invoke-interface {v0}, Lbc8;->cancel()V

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lvh3$a;->c:Lbc8;

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lvh3$a;->c:Lbc8;

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onComplete()V
    .locals 1

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lvh3$a;->c:Lbc8;

    iget-object v0, p0, Lvh3$a;->b:Lt08;

    iget-object p0, p0, Lvh3$a;->d:Ljava/util/Collection;

    invoke-interface {v0, p0}, Lt08;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lvh3$a;->d:Ljava/util/Collection;

    sget-object v0, Lhc8;->CANCELLED:Lhc8;

    iput-object v0, p0, Lvh3$a;->c:Lbc8;

    iget-object p0, p0, Lvh3$a;->b:Lt08;

    invoke-interface {p0, p1}, Lt08;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lvh3$a;->d:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
