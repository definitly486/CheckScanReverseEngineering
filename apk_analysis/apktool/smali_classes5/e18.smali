.class public final Le18;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le18$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;

.field public final c:Lhe7;


# direct methods
.method public constructor <init>(Lmz7;Lhe7;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Le18;->b:Lmz7;

    iput-object p2, p0, Le18;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le18$a;

    iget-object v1, p0, Le18;->b:Lmz7;

    invoke-direct {v0, p1, v1}, Le18$a;-><init>(Lt08;Lmz7;)V

    invoke-interface {p1, v0}, Lt08;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Le18;->c:Lhe7;

    invoke-virtual {p0, v0}, Lhe7;->c(Ljava/lang/Runnable;)Lcp2;

    move-result-object p0

    iget-object p1, v0, Le18$a;->c:Lkp7;

    invoke-static {p1, p0}, Lip2;->e(Ljava/util/concurrent/atomic/AtomicReference;Lcp2;)V

    return-void
.end method
