.class public final Ls26$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls26;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls26$j;->a:Ls26;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object p0, p0, Ls26$j;->a:Ls26;

    iget-object v1, p0, Ls26;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Ls26;->b:Ls26$m;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ls26$d;

    invoke-direct {v0, p0}, Ls26$d;-><init>(Ls26;)V

    iput-object v0, p0, Ls26;->c:Ls26$l;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v4, p0, Ls26;->d:I

    invoke-interface {v2, v4}, Ls26$m;->f(Z)V

    invoke-interface {v2, v1, v3}, Ls26$m;->d(Ljava/util/List;Z)V

    return-void

    :cond_0
    new-instance p1, Ls26$f;

    invoke-direct {p1, p0}, Ls26$f;-><init>(Ls26;)V

    iput-object p1, p0, Ls26;->c:Ls26$l;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object p0, Lkx2;->b:Lkx2;

    invoke-interface {v2, p0, v4}, Ls26$m;->d(Ljava/util/List;Z)V

    invoke-interface {v2, v4}, Ls26$m;->f(Z)V

    invoke-interface {v2, v3}, Ls26$m;->g(Z)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ls26$d;

    iget-object p0, p0, Ls26$j;->a:Ls26;

    invoke-direct {v0, p0}, Ls26$d;-><init>(Ls26;)V

    iput-object v0, p0, Ls26;->c:Ls26$l;

    iget-object p0, p0, Ls26;->b:Ls26$m;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ls26$m;->f(Z)V

    invoke-interface {p0, p1}, Ls26$m;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final refresh()V
    .locals 0

    return-void
.end method

.method public final release()V
    .locals 1

    new-instance v0, Ls26$k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Ls26$j;->a:Ls26;

    iput-object v0, p0, Ls26;->c:Ls26$l;

    iget-object p0, p0, Ls26;->f:Lrx1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    return-void
.end method
