.class public final Lub0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb0;


# instance fields
.field public final a:Lx80;

.field public final b:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub0;->a:Lx80;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Lub0;->b:Lhi0;

    return-void
.end method


# virtual methods
.method public final a()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ld41;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0}, Lx80;->a()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Lv99;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0}, Lx80;->b()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lqp1;
    .locals 0

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0}, Lx80;->c()Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lqp1;
    .locals 0

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0}, Lx80;->d()Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ltb7;
    .locals 2

    new-instance v0, Lsb0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsb0;-><init>(Lub0;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final f()Lhi0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhi0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lub0;->b:Lhi0;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lp08;
    .locals 2

    new-instance v0, Ljc;

    invoke-direct {v0, p1}, Ljc;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0, v0}, Lx80;->h(Ljc;)Lmz7;

    move-result-object p0

    new-instance p1, Ly3;

    const/4 v0, 0x1

    sget-object v1, Ltb0;->f:Ltb0;

    invoke-direct {p1, v1, v0}, Ly3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final h(Lr76;)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr76;",
            ")",
            "Lmz7<",
            "La57<",
            "Lbw1;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0, p1}, Lx80;->e(Lr76;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final i()Le08;
    .locals 3

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0}, Lx80;->i()Lmz7;

    move-result-object p0

    new-instance v0, Lqb0;

    const/4 v1, 0x0

    sget-object v2, Lrb0;->f:Lrb0;

    invoke-direct {v0, v2, v1}, Lqb0;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le08;

    invoke-direct {v1, p0, v0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final j(Lxm1;)Lqp1;
    .locals 0

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0, p1}, Lx80;->g(Lxm1;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lmz7;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lub0;->a:Lx80;

    invoke-interface {p0, v0}, Lx80;->f(I)Lmz7;

    move-result-object p0

    return-object p0
.end method
