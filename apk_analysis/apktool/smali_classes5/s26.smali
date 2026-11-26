.class public final Ls26;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls26$c;,
        Ls26$d;,
        Ls26$e;,
        Ls26$f;,
        Ls26$g;,
        Ls26$h;,
        Ls26$i;,
        Ls26$j;,
        Ls26$k;,
        Ls26$l;,
        Ls26$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Lmz7<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ls26$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26$m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Ls26$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26$l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field public f:Lrx1;


# direct methods
.method public constructor <init>(Lnl3;Ls26$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lmz7<",
            "Ljava/util/List<",
            "TT;>;>;>;",
            "Ls26$m<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls26;->a:Lnl3;

    iput-object p2, p0, Ls26;->b:Ls26$m;

    new-instance p1, Ls26$e;

    invoke-direct {p1, p0}, Ls26$e;-><init>(Ls26;)V

    iput-object p1, p0, Ls26;->c:Ls26$l;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls26;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Ls26;->c:Ls26$l;

    invoke-interface {p0}, Ls26$l;->c()V

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Ls26;->f:Lrx1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_0
    iget-object v0, p0, Ls26;->a:Lnl3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmz7;

    new-instance v0, Ls26$a;

    invoke-direct {v0, p0}, Ls26$a;-><init>(Ls26;)V

    new-instance v1, Ll26;

    invoke-direct {v1, v0}, Ll26;-><init>(Ls26$a;)V

    new-instance v0, Ls26$b;

    invoke-direct {v0, p0}, Ls26$b;-><init>(Ls26;)V

    new-instance v2, Lm26;

    invoke-direct {v2, v0}, Lm26;-><init>(Ls26$b;)V

    invoke-virtual {p1, v1, v2}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    iput-object p1, p0, Ls26;->f:Lrx1;

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Ls26;->c:Ls26$l;

    invoke-interface {p0}, Ls26$l;->refresh()V

    return-void
.end method
