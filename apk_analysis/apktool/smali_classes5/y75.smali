.class public final Ly75;
.super Lb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly75$a;,
        Ly75$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lhe7;


# direct methods
.method public constructor <init>(La75;Lhe7;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1;-><init>(La75;)V

    iput-object p2, p0, Ly75;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ly75$a;

    invoke-direct {v0, p1}, Ly75$a;-><init>(Lt75;)V

    invoke-interface {p1, v0}, Lt75;->onSubscribe(Lcp2;)V

    new-instance p1, Ly75$b;

    iget-object v1, p0, Lb1;->b:Lx75;

    invoke-direct {p1, v0, v1}, Ly75$b;-><init>(Ly75$a;Lx75;)V

    iget-object p0, p0, Ly75;->c:Lhe7;

    invoke-virtual {p0, p1}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    iget-object p1, v0, Ly75$a;->b:Lkp7;

    invoke-static {p1, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
