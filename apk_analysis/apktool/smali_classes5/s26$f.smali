.class public final Ls26$f;
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
    name = "f"
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

    iput-object p1, p0, Ls26$f;->a:Ls26;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final refresh()V
    .locals 3

    new-instance v0, Ls26$h;

    iget-object p0, p0, Ls26$f;->a:Ls26;

    invoke-direct {v0, p0}, Ls26$h;-><init>(Ls26;)V

    iput-object v0, p0, Ls26;->c:Ls26$l;

    iget-object v0, p0, Ls26;->b:Ls26$m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ls26$m;->g(Z)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ls26$m;->e(Z)V

    invoke-virtual {p0, v1}, Ls26;->b(I)V

    return-void
.end method

.method public final release()V
    .locals 1

    new-instance v0, Ls26$k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Ls26$f;->a:Ls26;

    iput-object v0, p0, Ls26;->c:Ls26$l;

    iget-object p0, p0, Ls26;->f:Lrx1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    return-void
.end method
