.class public final Lxr5;
.super Lg1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxr5$b;,
        Lxr5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lg1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lhe7;


# direct methods
.method public constructor <init>(Ltq5;Lhe7;)V
    .locals 0

    invoke-direct {p0, p1}, Lg1;-><init>(Lwr5;)V

    iput-object p2, p0, Lxr5;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lxr5$a;

    invoke-direct {v0, p1}, Lxr5$a;-><init>(Lls5;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    new-instance p1, Lxr5$b;

    invoke-direct {p1, p0, v0}, Lxr5$b;-><init>(Lxr5;Lxr5$a;)V

    iget-object p0, p0, Lxr5;->c:Lhe7;

    invoke-virtual {p0, p1}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    invoke-static {v0, p0}, Lip2;->g(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)Z

    return-void
.end method
