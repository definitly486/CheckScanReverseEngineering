.class public final Lao0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn0;


# instance fields
.field public final a:Lel0;

.field public final b:Lcc8;

.field public final c:Lya;

.field public final d:Luo1;

.field public final e:Ljf6;


# direct methods
.method public constructor <init>(Lel0;Lcc8;Lya;Luo1;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao0;->a:Lel0;

    iput-object p2, p0, Lao0;->b:Lcc8;

    iput-object p3, p0, Lao0;->c:Lya;

    iput-object p4, p0, Lao0;->d:Luo1;

    iput-object p5, p0, Lao0;->e:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(IZ)Ltb7;
    .locals 2

    new-instance v0, Lzn0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lzn0;-><init>(Lao0;IZLe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ltb7;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyn0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lyn0;-><init>(Lao0;Ljava/lang/String;Le02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final c(Lnm0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->b:Lcc8;

    invoke-interface {p0, p1}, Lcc8;->b(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(ILf02;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, p1, p2}, Lel0;->g(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(ZLjm0;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lao0;->e:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v0

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, v0, p1, p2}, Lel0;->c(IZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(ILcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$i;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lyv3;

    invoke-direct {v0, p1}, Lyv3;-><init>(I)V

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, v0, p2}, Lel0;->a(Lyv3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final g(I)Ltb7;
    .locals 2

    new-instance v0, Lwn0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lwn0;-><init>(Lao0;ILe02;)V

    new-instance p0, Ltb7;

    invoke-direct {p0, v0}, Ltb7;-><init>(Lbm3;)V

    return-object p0
.end method

.method public final h(IILom0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, p1, p2, p3}, Lel0;->h(IILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILcm0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, p1, p2}, Lel0;->f(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lem0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->d:Luo1;

    invoke-interface {p0, p1}, Luo1;->d(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lfm0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lao0;->c:Lya;

    invoke-interface {p0, p1}, Lya;->a(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final l(IILf02;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p3, Lxn0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lxn0;

    iget v1, v0, Lxn0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lxn0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lxn0;

    invoke-direct {v0, p0, p3}, Lxn0;-><init>(Lao0;Lf02;)V

    :goto_0
    iget-object p3, v0, Lxn0;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lxn0;->n:I

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

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    iput v3, v0, Lxn0;->n:I

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, p3, p1, v0}, Lel0;->d(Ljava/lang/Integer;ILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lk26;

    invoke-virtual {p3}, Lk26;->a()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Lk26;->b()I

    move-result p1

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Lb36;

    invoke-direct {p1, p0, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final m(ILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lvn0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lvn0;

    iget v1, v0, Lvn0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lvn0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lvn0;

    invoke-direct {v0, p0, p2}, Lvn0;-><init>(Lao0;Lf02;)V

    :goto_0
    iget-object p2, v0, Lvn0;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lvn0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lvn0;->n:I

    iget-object p0, p0, Lao0;->a:Lel0;

    invoke-interface {p0, p1, v0}, Lel0;->j(ILe02;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/CharSequence;

    const-string p0, "<.*?>"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "[\\r\\n]+"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n(IILf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lun0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lun0;

    iget v1, v0, Lun0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lun0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lun0;

    invoke-direct {v0, p0, p3}, Lun0;-><init>(Lao0;Lf02;)V

    :goto_0
    iget-object p3, v0, Lun0;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lun0;->n:I

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

    iput v3, v0, Lun0;->n:I

    iget-object p0, p0, Lao0;->a:Lel0;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p2, v0}, Lel0;->l(IIILe02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lk26;

    invoke-virtual {p3}, Lk26;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o(ILgc0;ZLmm0;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lao0;->a:Lel0;

    move v2, p1

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lel0;->m(Lgc0;ILjava/lang/Integer;ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
