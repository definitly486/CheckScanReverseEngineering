.class public final Lyb8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyb8$c;

.field public static final b:Lyb8$b;

.field public static final c:Lyb8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyb8$c;->f:Lyb8$c;

    sput-object v0, Lyb8;->a:Lyb8$c;

    sget-object v0, Lyb8$b;->f:Lyb8$b;

    sput-object v0, Lyb8;->b:Lyb8$b;

    sget-object v0, Lyb8$a;->f:Lyb8$a;

    sput-object v0, Lyb8;->c:Lyb8$a;

    return-void
.end method

.method public static final a(Lnl3;)Lqx1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;)",
            "Lqx1<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lyb8;->a:Lyb8$c;

    if-ne p0, v0, :cond_0

    sget-object p0, Lrm3;->d:Lrm3$e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lac8;

    invoke-direct {v0, p0}, Lac8;-><init>(Lnl3;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Lqx1;

    return-object p0
.end method

.method public static final b(Lll3;)Lh6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Lh6;"
        }
    .end annotation

    sget-object v0, Lyb8;->c:Lyb8$a;

    if-ne p0, v0, :cond_0

    sget-object p0, Lrm3;->c:Lrm3$d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lzb8;

    invoke-direct {v0, p0}, Lzb8;-><init>(Lll3;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Lh6;

    return-object p0
.end method

.method public static final c(Lnl3;)Lqx1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)",
            "Lqx1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lyb8;->b:Lyb8$b;

    if-ne p0, v0, :cond_0

    sget-object p0, Lrm3;->e:Lrm3$l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lac8;

    invoke-direct {v0, p0}, Lac8;-><init>(Lnl3;)V

    move-object p0, v0

    :cond_1
    check-cast p0, Lqx1;

    return-object p0
.end method

.method public static final d(Lmz7;Lnl3;Lnl3;)Lrx1;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyb8;->a(Lnl3;)Lqx1;

    move-result-object p2

    invoke-static {p1}, Lyb8;->c(Lnl3;)Lqx1;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lqp1;Lll3;Lnl3;)Lcp2;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyb8;->b:Lyb8$b;

    if-ne p2, v0, :cond_0

    sget-object v1, Lyb8;->c:Lyb8$a;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lqp1;->g()Lcp2;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p2, v0, :cond_1

    new-instance p2, Lzb8;

    invoke-direct {p2, p1}, Lzb8;-><init>(Lll3;)V

    new-instance p1, Luy0;

    invoke-direct {p1, p2}, Luy0;-><init>(Lh6;)V

    invoke-virtual {p0, p1}, Lqp1;->b(Lmq1;)V

    return-object p1

    :cond_1
    invoke-static {p1}, Lyb8;->b(Lll3;)Lh6;

    move-result-object p1

    new-instance v0, Lac8;

    invoke-direct {v0, p2}, Lac8;-><init>(Lnl3;)V

    const-string p2, "onComplete is null"

    invoke-static {p1, p2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Luy0;

    invoke-direct {p2, v0, p1}, Luy0;-><init>(Lqx1;Lh6;)V

    invoke-virtual {p0, p2}, Lqp1;->b(Lmq1;)V

    return-object p2
.end method

.method public static synthetic f(Lmz7;Lnl3;Lnl3;I)Lrx1;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lyb8;->b:Lyb8$b;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lyb8;->a:Lyb8$c;

    :cond_1
    invoke-static {p0, p1, p2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Llq1;Lnl3;Lll3;I)Lcp2;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lyb8;->b:Lyb8$b;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lyb8;->c:Lyb8$a;

    :cond_1
    invoke-static {p0, p2, p1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;
    .locals 1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lyb8;->b:Lyb8$b;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lyb8;->c:Lyb8$a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyb8;->a(Lnl3;)Lqx1;

    move-result-object p2

    invoke-static {p1}, Lyb8;->c(Lnl3;)Lqx1;

    move-result-object p1

    invoke-static {p3}, Lyb8;->b(Lll3;)Lh6;

    move-result-object p3

    const-string v0, "onNext is null"

    invoke-static {p2, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhh4;

    invoke-direct {v0, p2, p1, p3}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-object v0
.end method

.method public static i(Lgg3;Lnl3;I)Lih4;
    .locals 2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_0

    sget-object p1, Lyb8;->a:Lyb8$c;

    :cond_0
    sget-object p2, Lyb8;->b:Lyb8$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyb8;->c:Lyb8$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyb8;->a(Lnl3;)Lqx1;

    move-result-object p1

    invoke-static {p2}, Lyb8;->c(Lnl3;)Lqx1;

    move-result-object p2

    invoke-static {v0}, Lyb8;->b(Lll3;)Lh6;

    move-result-object v0

    sget-object v1, Lbh3;->INSTANCE:Lbh3;

    invoke-virtual {p0, p1, p2, v0, v1}, Lgg3;->e(Lqx1;Lqx1;Lh6;Lqx1;)Lcp2;

    move-result-object p0

    check-cast p0, Lih4;

    return-object p0
.end method

.method public static j(Ls75;Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;Lnl3;I)Lb75;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p1, Lyb8;->c:Lyb8$a;

    :cond_0
    sget-object p3, Lyb8;->b:Lyb8$b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyb8;->a(Lnl3;)Lqx1;

    move-result-object p2

    invoke-static {p3}, Lyb8;->c(Lnl3;)Lqx1;

    move-result-object p3

    invoke-static {p1}, Lyb8;->b(Lll3;)Lh6;

    move-result-object p1

    const-string v0, "onSuccess is null"

    invoke-static {p2, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p3, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb75;

    invoke-direct {v0, p2, p3, p1}, Lb75;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {p0, v0}, La75;->a(Lt75;)V

    return-object v0
.end method
