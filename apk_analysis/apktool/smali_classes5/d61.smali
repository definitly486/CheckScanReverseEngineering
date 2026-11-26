.class public final Ld61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu51;


# instance fields
.field public final a:Lo51;

.field public final b:Lzt6;

.field public final c:Ljf6;

.field public final d:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lq99;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo51;Lzt6;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld61;->a:Lo51;

    iput-object p2, p0, Ld61;->b:Lzt6;

    iput-object p3, p0, Ld61;->c:Ljf6;

    new-instance p1, Lhi0;

    invoke-direct {p1}, Lhi0;-><init>()V

    iput-object p1, p0, Ld61;->d:Lhi0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Ld61;->e:Lhi0;

    return-void
.end method


# virtual methods
.method public final a()Lh08;
    .locals 3

    iget-object v0, p0, Ld61;->a:Lo51;

    invoke-interface {v0}, Lo51;->d()Lmz7;

    move-result-object v0

    new-instance v1, Ly51;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ly51;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lv51;

    invoke-direct {p0, v1, v2}, Lv51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh08;

    invoke-direct {v1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final b(I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lgq6;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ld61;->a:Lo51;

    invoke-interface {p0, p1}, Lo51;->b(I)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lot6;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld61;->b:Lzt6;

    invoke-interface {p0, p1, p2}, Lzt6;->c(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lqp1;
    .locals 0

    iget-object p0, p0, Ld61;->b:Lzt6;

    invoke-interface {p0}, Lzt6;->d()Lqp1;

    move-result-object p0

    return-object p0
.end method

.method public final e(II)Lmz7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmz7<",
            "Le09;",
            ">;"
        }
    .end annotation

    new-instance v0, Lhz8;

    invoke-direct {v0, p1, p2}, Lhz8;-><init>(II)V

    iget-object p0, p0, Ld61;->a:Lo51;

    invoke-interface {p0, v0}, Lo51;->f(Lhz8;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lq51;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld61;->a:Lo51;

    invoke-interface {p0, p1}, Lo51;->g(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(ILr51;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld61;->a:Lo51;

    invoke-interface {p0, p1, p2}, Lo51;->h(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(I)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Lwb0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld61;->a:Lo51;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lo51;->e(Ljava/lang/Integer;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lhi0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhi0<",
            "Lq99;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld61;->d:Lhi0;

    return-object p0
.end method

.method public final j(JLf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lz51;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lz51;

    iget v1, v0, Lz51;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lz51;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lz51;

    invoke-direct {v0, p0, p3}, Lz51;-><init>(Ld61;Lf02;)V

    :goto_0
    iget-object p3, v0, Lz51;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lz51;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lgd3;

    const-string v2, "CLICK"

    invoke-direct {p3, p1, p2, v2}, Lgd3;-><init>(JLjava/lang/String;)V

    iput v3, v0, Lz51;->n:I

    iget-object p1, p0, Ld61;->a:Lo51;

    invoke-interface {p1, p3, v0}, Lo51;->i(Lgd3;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, La57;

    iget-object p1, p3, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Ld61;->c:Ljf6;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljf6;->o(J)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final k(JLf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, La61;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, La61;

    iget v1, v0, La61;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, La61;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, La61;

    invoke-direct {v0, p0, p3}, La61;-><init>(Ld61;Lf02;)V

    :goto_0
    iget-object p3, v0, La61;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, La61;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lgd3;

    const-string v2, "HIDE"

    invoke-direct {p3, p1, p2, v2}, Lgd3;-><init>(JLjava/lang/String;)V

    iput v3, v0, La61;->n:I

    iget-object p1, p0, Ld61;->a:Lo51;

    invoke-interface {p1, p3, v0}, Lo51;->i(Lgd3;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, La57;

    iget-object p1, p3, La57;->a:Lz47;

    invoke-virtual {p1}, Lz47;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Ld61;->c:Ljf6;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljf6;->o(J)V

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final l(JLlg5$c;Llg5$c;Lyt6;)Le08;
    .locals 7

    invoke-virtual {p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p5

    sget-object v0, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v0, "text/plain"

    invoke-static {v0}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v0

    invoke-static {p5, v0}, Lg37$a;->a(Ljava/lang/String;Lj95;)Lf37;

    move-result-object v6

    iget-object v1, p0, Ld61;->a:Lo51;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lo51;->c(JLlg5$c;Llg5$c;Lg37;)Lmz7;

    move-result-object p1

    new-instance p2, Lc61;

    invoke-direct {p2, p0, v2, v3}, Lc61;-><init>(Ld61;J)V

    new-instance p0, Ljl0;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Ljl0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Le08;

    invoke-direct {p2, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method
