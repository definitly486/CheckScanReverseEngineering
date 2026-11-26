.class public final Lx60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln60;


# instance fields
.field public final a:La10;

.field public final b:Lel0;

.field public final c:Lzs7;

.field public final d:Lzs7;


# direct methods
.method public constructor <init>(La10;Lel0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx60;->a:La10;

    iput-object p2, p0, Lx60;->b:Lel0;

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Lx60;->c:Lzs7;

    iput-object p1, p0, Lx60;->d:Lzs7;

    return-void
.end method


# virtual methods
.method public final A(ZLp40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->x(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final B(Lo40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1}, La10;->g(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final C(ZLl40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->k(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ltb7;
    .locals 2

    new-instance v0, Lv60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lv60;-><init>(Lx60;Ljava/lang/String;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final c()Lzs7;
    .locals 0

    iget-object p0, p0, Lx60;->d:Lzs7;

    return-object p0
.end method

.method public final d(Lk40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1}, La10;->b(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(ZLm40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->b:Lel0;

    invoke-interface {p0, p1, p2}, Lel0;->e(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(I)Lde3;
    .locals 2

    new-instance v0, Lt60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lt60;-><init>(Lx60;ILe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method

.method public final fetchAlfaIdLink()Ltb7;
    .locals 2

    new-instance v0, Lo60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo60;-><init>(Lx60;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final g(ILjava/lang/String;Ljava/lang/Integer;Lt73;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2, p3, p4}, La10;->f(ILjava/lang/String;Ljava/lang/Integer;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lc40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1}, La10;->s(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lde3;
    .locals 2

    new-instance v0, Ls60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls60;-><init>(Lx60;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method

.method public final j(ILu40;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lyv3;

    invoke-direct {v0, p1}, Lyv3;-><init>(I)V

    iget-object p0, p0, Lx60;->b:Lel0;

    invoke-interface {p0, v0, p2}, Lel0;->i(Lyv3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final k(J)Lde3;
    .locals 2

    new-instance v0, Lw60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lw60;-><init>(Lx60;JLe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method

.method public final l(ZLb40$e;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->o(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(ZLg40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->q(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(ZLr40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->u(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final o(ZLe40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->h(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lu37;Ljava/lang/String;Ljava/lang/String;)Ltb7;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lu60;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lu60;-><init>(Lu37;Lx60;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final q(Li40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1}, La10;->c(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ltb7;
    .locals 2

    new-instance v0, Lp60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lp60;-><init>(Lx60;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final s(ZLf40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->j(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final t(ILt40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->t(ILe02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lx60;->c:Lzs7;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lzs7;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final v(Ls40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1}, La10;->z(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lm60;ZLf02;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lm60;->a()I

    move-result v0

    invoke-virtual {p1}, Lm60;->b()I

    move-result p1

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, v0, p1, p2, p3}, La10;->v(IIZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(ZLj40;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx60;->a:La10;

    invoke-interface {p0, p1, p2}, La10;->r(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y(I)Lde3;
    .locals 2

    new-instance v0, Lq60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lq60;-><init>(Lx60;ILe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p0

    return-object p0
.end method

.method public final z(II)Ltb7;
    .locals 2

    new-instance v0, Lr60;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lr60;-><init>(Lx60;IILe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method
