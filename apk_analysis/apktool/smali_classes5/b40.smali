.class public final Lb40;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb40$c;,
        Lb40$d;
    }
.end annotation


# instance fields
.field public final a:Ln60;

.field public final b:Ls47;

.field public final c:Lzl2;

.field public final d:Lkz1;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lz68;

.field public final g:Lz68;

.field public final h:Lz68;


# direct methods
.method public constructor <init>(Ln60;Ls47;Lzl2;Ljf6;Lr22;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb40;->a:Ln60;

    iput-object p2, p0, Lb40;->b:Ls47;

    iput-object p3, p0, Lb40;->c:Lzl2;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    invoke-virtual {p5, p2}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p2

    new-instance p3, Lb40$f;

    sget-object p5, Ls22$a;->b:Ls22$a;

    invoke-direct {p3, p5}, Lb0;-><init>(Lo22$b;)V

    invoke-interface {p2, p3}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p2

    invoke-static {p2}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p2

    iput-object p2, p0, Lb40;->d:Lkz1;

    new-instance p3, Ld50;

    invoke-direct {p3}, Ld50;-><init>()V

    new-instance p5, Lg50;

    invoke-direct {p5}, Lg50;-><init>()V

    new-instance v0, La50;

    invoke-direct {v0}, La50;-><init>()V

    new-instance v1, Lj50;

    invoke-direct {v1}, Lj50;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Lpz3;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    aput-object p5, v2, p3

    const/4 p3, 0x2

    aput-object v0, v2, p3

    const/4 p3, 0x3

    aput-object v1, v2, p3

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lb40;->e:Ljava/util/List;

    invoke-static {p3}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p3

    iput-object p3, p0, Lb40;->f:Lz68;

    sget-object p3, Lb40$d;->c:Lb40$d;

    invoke-static {p3}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p3

    iput-object p3, p0, Lb40;->g:Lz68;

    sget-object p3, Lkx2;->b:Lkx2;

    invoke-static {p3}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p3

    iput-object p3, p0, Lb40;->h:Lz68;

    invoke-interface {p1}, Ln60;->c()Lzs7;

    move-result-object p1

    new-instance p3, Lb40$a;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, Lb40$a;-><init>(Lb40;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p1, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {v0, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    invoke-interface {p4}, Ljf6;->h0()Lz68;

    move-result-object p1

    new-instance p3, Lb40$b;

    invoke-direct {p3, p0, p5}, Lb40$b;-><init>(Lb40;Le02;)V

    new-instance p0, Ldf3;

    invoke-direct {p0, p1, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p0, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method

.method public static synthetic d(ILb40;Le02;)Ljava/lang/Object;
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v0, v1, p2}, Lb40;->c(ZZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lzn1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "#000000"

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static s(Li10;)Lz30;
    .locals 5

    new-instance v0, Lz30;

    invoke-virtual {p0}, Li10;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Li10;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {p0}, Li10;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    invoke-virtual {p0}, Li10;->d()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    invoke-direct {v0, v1, v2, v4, v3}, Lz30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static t(Le10;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Le10;->a()Le10$a;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_5

    invoke-virtual {p0}, Le10;->b()Le10$a;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Le10;->e()Le10$c;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lf20;

    invoke-virtual {p0}, Le10;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0}, Le10;->e()Le10$c;

    move-result-object p0

    invoke-virtual {p0}, Le10$c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lf20;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2
    new-instance v1, Lz10;

    invoke-virtual {p0}, Le10;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    invoke-virtual {p0}, Le10;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-direct {v1, v3, v2}, Lz10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    :goto_2
    invoke-virtual {p0}, Le10;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v4, v2

    goto :goto_3

    :cond_6
    move-object v4, v1

    :goto_3
    invoke-virtual {p0}, Le10;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v5, v2

    goto :goto_4

    :cond_7
    move-object v5, v1

    :goto_4
    invoke-virtual {p0}, Le10;->a()Le10$a;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Le10$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    if-nez v1, :cond_9

    move-object v6, v2

    goto :goto_6

    :cond_9
    move-object v6, v1

    :goto_6
    invoke-virtual {p0}, Le10;->a()Le10$a;

    move-result-object v1

    sget-object v7, Lo10$e;->a:Lo10$e;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lb40;->y(Le10$a;)Lo10;

    move-result-object v1

    move-object v8, v1

    goto :goto_7

    :cond_a
    move-object v8, v7

    :goto_7
    invoke-virtual {p0}, Le10;->b()Le10$a;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, Lb40;->y(Le10$a;)Lo10;

    move-result-object v7

    :cond_b
    move-object v9, v7

    invoke-virtual {p0}, Le10;->b()Le10$a;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Le10$a;->b()Ljava/lang/String;

    move-result-object v3

    :cond_c
    if-nez v3, :cond_d

    move-object v7, v2

    goto :goto_8

    :cond_d
    move-object v7, v3

    :goto_8
    new-instance v3, Lc20;

    invoke-direct/range {v3 .. v9}, Lc20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo10;Lo10;)V

    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static u(Lk10;)Ljava/util/ArrayList;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lk10;->f()Lk10$f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lk10;->f()Lk10$f;

    move-result-object v1

    invoke-virtual {v1}, Lk10$f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lk10;->f()Lk10$f;

    move-result-object v2

    invoke-virtual {v2}, Lk10$f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lp70$a;

    invoke-virtual {p0}, Lk10;->f()Lk10$f;

    move-result-object p0

    invoke-virtual {p0}, Lk10$f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lp70$a;-><init>(Ljava/lang/String;)V

    new-instance p0, Lo70;

    invoke-direct {p0, v1, v3, v2}, Lo70;-><init>(Ljava/lang/String;Lp70$a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lk10;->e()Lk10$e;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lu70;

    invoke-virtual {p0}, Lk10;->e()Lk10$e;

    move-result-object v2

    invoke-virtual {v2}, Lk10$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lk10;->e()Lk10$e;

    move-result-object v3

    invoke-virtual {v3}, Lk10$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lk10;->e()Lk10$e;

    move-result-object v4

    invoke-virtual {v4}, Lk10$e;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lp70$b;->a:Lp70$b;

    invoke-direct {v1, v2, v3, v4, v5}, Lu70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp70;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lk10;->c()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lkx2;->b:Lkx2;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk10$c;

    new-instance v6, Lu70;

    invoke-virtual {v5}, Lk10$c;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lk10$c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lk10$c;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lp70$a;

    invoke-virtual {v5}, Lk10$c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Lp70$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8, v9, v10}, Lu70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp70;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lk10;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk10$a;

    new-instance v6, Lu70;

    invoke-virtual {v5}, Lk10$a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lk10$a;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lk10$a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lk10$a;->c()Lk10$a$a;

    move-result-object v10

    sget-object v11, Lk10$a$a;->TRANSFERABLE:Lk10$a$a;

    if-ne v10, v11, :cond_6

    new-instance v10, Lp70$c;

    invoke-virtual {v5}, Lk10$a;->a()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_2

    :cond_5
    const-wide/high16 v11, -0x8000000000000000L

    :goto_2
    invoke-direct {v10, v11, v12}, Lp70$c;-><init>(J)V

    goto :goto_3

    :cond_6
    new-instance v10, Lp70$a;

    invoke-virtual {v5}, Lk10$a;->f()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, ""

    :cond_7
    invoke-direct {v10, v5}, Lp70$a;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v6, v7, v8, v9, v10}, Lu70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp70;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lk10;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk10$d;

    new-instance v6, Lk20;

    invoke-virtual {v5}, Lk10$d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lk10$d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lk10$d;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lk10$d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v9, v5}, Lk20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lk10;->b()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_5

    :cond_b
    move-object v2, p0

    :goto_5
    check-cast v2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk10$b;

    new-instance v3, Lx50;

    invoke-virtual {v2}, Lk10$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lk10$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lx50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_7
    new-instance p0, Lt20;

    invoke-direct {p0}, Lt20;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static w(Ld10;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Ld10;->a()Ld10$a;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance v2, Lc20;

    invoke-virtual {p0}, Ld10;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ld10;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    invoke-virtual {p0}, Ld10;->a()Ld10$a;

    move-result-object p0

    invoke-virtual {p0}, Ld10$a;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    sget-object v7, Lo10$b;->a:Lo10$b;

    sget-object v8, Lo10$e;->a:Lo10$e;

    invoke-direct/range {v2 .. v8}, Lc20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo10;Lo10;)V

    goto :goto_2

    :cond_1
    new-instance v2, Lz10;

    invoke-virtual {p0}, Ld10;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ld10;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-direct {v2, v0, v1}, Lz10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lg10;)Ljava/util/List;
    .locals 11

    new-instance v0, Ll30;

    invoke-virtual {p0}, Lg10;->c()Lg10$c;

    move-result-object v1

    invoke-virtual {v1}, Lg10$c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lg10;->c()Lg10$c;

    move-result-object v2

    invoke-virtual {v2}, Lg10$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lg10;->c()Lg10$c;

    move-result-object v3

    invoke-virtual {v3}, Lg10$c;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    invoke-virtual {p0}, Lg10;->a()Lg10$a;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    new-instance v7, Ll30$a;

    invoke-virtual {v5}, Lg10$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lg10$a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lg10$a;->e()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lb40;->r(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5}, Lg10$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lb40;->r(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v7, v8, v9, v10, v5}, Ll30$a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    invoke-virtual {p0}, Lg10;->b()Lg10$b;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lg10$b;->a()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_3

    move-object v5, v4

    :cond_3
    invoke-virtual {p0}, Lg10;->a()Lg10$a;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_2
    move-object v4, v7

    goto :goto_3

    :cond_4
    new-instance v6, Lw00;

    invoke-virtual {p0}, Lg10;->a()Lg10$a;

    move-result-object v4

    invoke-virtual {v4}, Lg10$a;->b()Lg10$a$a;

    move-result-object v4

    invoke-virtual {v4}, Lg10$a$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lg10;->a()Lg10$a;

    move-result-object p0

    invoke-virtual {p0}, Lg10$a;->b()Lg10$a$a;

    move-result-object p0

    invoke-virtual {p0}, Lg10$a$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, v4, p0}, Lw00;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Ll30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll30$a;Ljava/lang/String;Lw00;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static y(Le10$a;)Lo10;
    .locals 5

    invoke-virtual {p0}, Le10$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lo10$a;

    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v1

    invoke-virtual {v1}, Le10$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lua8;->j0(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v1

    invoke-virtual {v1}, Le10$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-static {v1, v3, v2}, Lra8;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v1

    invoke-virtual {v1}, Le10$b;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v3

    invoke-virtual {v3}, Le10$b;->d()Lu37;

    move-result-object v3

    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v4

    invoke-virtual {v4}, Le10$b;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object p0

    invoke-virtual {p0}, Le10$b;->b()Z

    move-result p0

    invoke-direct {v0, v1, v3, v2, p0}, Lo10$a;-><init>(Ljava/lang/String;Lu37;Ljava/lang/String;Z)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Le10$a;->a()Le10$b;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Le10$a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lo10$d;

    invoke-virtual {p0}, Le10$a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lo10$d;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lo10$e;->a:Lo10$e;

    return-object p0
.end method

.method public static z(Lj26;)Ljava/util/ArrayList;
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lj26;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfz5;

    invoke-virtual {v3}, Lfz5;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lry5;

    invoke-virtual {v3}, Lry5;->f()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v4, :cond_9

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v7, 0x1

    xor-int/2addr v4, v7

    if-ne v4, v7, :cond_9

    invoke-virtual {v3}, Lry5;->c()J

    move-result-wide v9

    invoke-virtual {v3}, Lry5;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lry5;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lry5;->d()Li88;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Li88;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    if-nez v4, :cond_2

    move-object v15, v6

    goto :goto_3

    :cond_2
    move-object v15, v4

    :goto_3
    invoke-virtual {v3}, Lry5;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lry5;->d()Li88;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Li88;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v5

    :goto_4
    invoke-static {v4}, Lb40;->r(Ljava/lang/String;)I

    move-result v16

    invoke-virtual {v3}, Lry5;->f()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcz5;

    new-instance v17, Lb60;

    invoke-virtual {v7}, Lcz5;->c()J

    move-result-wide v18

    invoke-virtual {v7}, Lcz5;->g()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Lcz5;->f()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Lcz5;->h()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v7}, Lcz5;->d()Li88;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Li88;->c()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_4
    move-object v8, v5

    :goto_6
    if-nez v8, :cond_5

    move-object/from16 v23, v6

    goto :goto_7

    :cond_5
    move-object/from16 v23, v8

    :goto_7
    invoke-virtual {v7}, Lcz5;->b()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v7}, Lcz5;->d()Li88;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Li88;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_6
    move-object v7, v5

    :goto_8
    invoke-static {v7}, Lb40;->r(Ljava/lang/String;)I

    move-result v25

    invoke-direct/range {v17 .. v25}, Lb60;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, v17

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object v14, v4

    goto :goto_9

    :cond_8
    move-object v14, v5

    :goto_9
    new-instance v8, Lf30;

    invoke-direct/range {v8 .. v16}, Lf30;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    goto :goto_c

    :cond_9
    new-instance v9, Lb60;

    invoke-virtual {v3}, Lry5;->c()J

    move-result-wide v10

    invoke-virtual {v3}, Lry5;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lry5;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lry5;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lry5;->d()Li88;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Li88;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_a
    move-object v4, v5

    :goto_a
    if-nez v4, :cond_b

    move-object v15, v6

    goto :goto_b

    :cond_b
    move-object v15, v4

    :goto_b
    invoke-virtual {v3}, Lry5;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lry5;->d()Li88;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Li88;->a()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-static {v5}, Lb40;->r(Ljava/lang/String;)I

    move-result v17

    invoke-direct/range {v9 .. v17}, Lb60;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v8, v9

    :goto_c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method


# virtual methods
.method public final A(Lf02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lx40;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lx40;

    iget v1, v0, Lx40;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx40;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx40;

    invoke-direct {v0, p0, p1}, Lx40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p1, v0, Lx40;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lx40;->p:I

    const/4 v3, 0x0

    iget-object v4, p0, Lb40;->f:Lz68;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget p0, v0, Lx40;->m:I

    iget-object v0, v0, Lx40;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ll30;

    if-eqz v7, :cond_3

    move-object v3, v6

    :cond_4
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v6, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpz3;

    invoke-interface {v7}, Lpz3;->id()Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7f

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    :goto_2
    iput-object p1, v0, Lx40;->l:Ljava/util/ArrayList;

    iput v2, v0, Lx40;->m:I

    iput v5, v0, Lx40;->p:I

    invoke-virtual {p0, v3, v0}, Lb40;->b(ZLf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p1

    move-object p1, p0

    move p0, v2

    :goto_3
    check-cast p1, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v4, v0}, Lz68;->setValue(Ljava/lang/Object;)V

    :cond_9
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Le40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le40;

    iget v1, v0, Le40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Le40;

    invoke-direct {v0, p0, p2}, Le40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Le40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Le40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le40;->l:Lkx2;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p2, v0, Le40;->l:Lkx2;

    iput v3, v0, Le40;->o:I

    invoke-interface {p0, p1, v0}, Ln60;->o(ZLe40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ld10;

    invoke-static {p1}, Lb40;->w(Ld10;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    throw p2

    :cond_5
    :goto_4
    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move-object p0, p1

    :goto_5
    return-object p0
.end method

.method public final b(ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lf40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf40;

    iget v1, v0, Lf40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf40;

    invoke-direct {v0, p0, p2}, Lf40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Lf40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lf40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lf40;->l:Lkx2;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p2, v0, Lf40;->l:Lkx2;

    iput v3, v0, Lf40;->o:I

    invoke-interface {p0, p1, v0}, Ln60;->s(ZLf40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg10;

    invoke-static {p1}, Lb40;->x(Lg10;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    throw p2

    :cond_5
    :goto_4
    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move-object p0, p1

    :goto_5
    return-object p0
.end method

.method public final c(ZZLe02;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v0, p3

    instance-of v3, v0, Lb40$e;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lb40$e;

    iget v4, v3, Lb40$e;->r:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lb40$e;->r:I

    goto :goto_0

    :cond_0
    new-instance v3, Lb40$e;

    invoke-direct {v3, p0, v0}, Lb40$e;-><init>(Lb40;Le02;)V

    :goto_0
    iget-object v0, v3, Lb40$e;->p:Ljava/lang/Object;

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v3, Lb40$e;->r:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v9, :cond_2

    if-ne v4, v8, :cond_1

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget-boolean v2, v3, Lb40$e;->m:Z

    iget-boolean v4, v3, Lb40$e;->l:Z

    iget-object v5, v3, Lb40$e;->o:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Lb40$e;->n:Ljava/util/Collection;

    check-cast v6, Ljava/util/Collection;

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3
    iget-boolean v2, v3, Lb40$e;->m:Z

    iget-boolean v4, v3, Lb40$e;->l:Z

    iget-object v5, v3, Lb40$e;->o:Ljava/lang/Object;

    iget-object v6, v3, Lb40$e;->n:Ljava/util/Collection;

    check-cast v6, Ljava/util/List;

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    iget-boolean v2, v3, Lb40$e;->m:Z

    iget-boolean v4, v3, Lb40$e;->l:Z

    iget-object v6, v3, Lb40$e;->n:Ljava/util/Collection;

    check-cast v6, Ljava/util/List;

    :try_start_0
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v2

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    move v11, v2

    move v2, v4

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v4, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v0, p0, Lb40;->a:Ln60;

    iput-object v4, v3, Lb40$e;->n:Ljava/util/Collection;

    iput-boolean v2, v3, Lb40$e;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move/from16 v11, p2

    :try_start_2
    iput-boolean v11, v3, Lb40$e;->m:Z

    iput v6, v3, Lb40$e;->r:I

    invoke-interface {v0, v2, v3}, Ln60;->l(ZLb40$e;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v7, :cond_6

    goto/16 :goto_d

    :cond_6
    move-object v6, v4

    :goto_1
    :try_start_3
    check-cast v0, La57;

    iget-object v0, v0, La57;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    move v4, v2

    move v2, v11

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move-object v6, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move/from16 v11, p2

    goto :goto_3

    :goto_4
    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    goto :goto_2

    :goto_5
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_9

    instance-of v12, v11, Ljava/util/concurrent/CancellationException;

    if-nez v12, :cond_8

    instance-of v11, v11, Ljava/io/IOException;

    if-eqz v11, :cond_9

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    iput-object v11, v3, Lb40$e;->n:Ljava/util/Collection;

    iput-object v0, v3, Lb40$e;->o:Ljava/lang/Object;

    iput-boolean v4, v3, Lb40$e;->l:Z

    iput-boolean v2, v3, Lb40$e;->m:Z

    iput v5, v3, Lb40$e;->r:I

    iget-object v5, p0, Lb40;->c:Lzl2;

    sget-object v11, Lzl2$a$b;->a:Lzl2$a$b;

    invoke-virtual {v5, v11, v3}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_7

    goto/16 :goto_d

    :cond_7
    move-object v5, v0

    :goto_6
    move-object v0, v5

    goto :goto_7

    :cond_8
    throw v11

    :cond_9
    :goto_7
    instance-of v5, v0, Lk57$a;

    if-eqz v5, :cond_a

    move-object v0, v6

    :cond_a
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lj10;

    invoke-virtual {v11}, Lj10;->c()Ln10;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v12, v0

    move-object v6, v3

    move-object v11, v5

    move v5, v4

    :cond_d
    :goto_9
    move v0, v2

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj10;

    invoke-virtual {v2}, Lj10;->c()Ln10;

    move-result-object v3

    if-eqz v3, :cond_10

    move-object v4, v2

    move-object v13, v3

    invoke-virtual {v4}, Lj10;->a()J

    move-result-wide v2

    invoke-virtual {v4}, Lj10;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    const-string v4, ""

    :cond_e
    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    iput-object v14, v6, Lb40$e;->n:Ljava/util/Collection;

    iput-object v11, v6, Lb40$e;->o:Ljava/lang/Object;

    iput-boolean v5, v6, Lb40$e;->l:Z

    iput-boolean v0, v6, Lb40$e;->m:Z

    iput v9, v6, Lb40$e;->r:I

    sget-object v14, Lb40$c;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v13, v14, v13

    packed-switch v13, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object v10

    :pswitch_0
    invoke-virtual {p0, v6}, Lb40;->l(Lf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_1
    invoke-virtual {p0, v6}, Lb40;->f(Lf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_2
    invoke-virtual {p0, v6}, Lb40;->h(Lf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_3
    invoke-virtual {p0, v4, v6}, Lb40;->o(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_4
    invoke-virtual {p0, v0, v6}, Lb40;->j(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_5
    invoke-virtual {p0, v4, v5, v6}, Lb40;->k(Ljava/lang/String;ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_6
    invoke-virtual {p0, v5, v6}, Lb40;->a(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_7
    invoke-virtual {p0, v4, v5, v6}, Lb40;->i(Ljava/lang/String;ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_8
    invoke-virtual {p0, v5, v6}, Lb40;->g(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_9
    invoke-virtual {p0, v5, v6}, Lb40;->n(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_a
    new-instance v2, Lz00;

    invoke-direct {v2}, Lz00;-><init>()V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_a

    :pswitch_b
    invoke-virtual {p0, v5, v6}, Lb40;->e(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_c
    invoke-virtual {p0, v5, v6}, Lb40;->b(ZLf02;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :pswitch_d
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lb40;->m(JLjava/lang/String;ZLf02;)Ljava/lang/Object;

    move-result-object v2

    :goto_a
    if-ne v2, v7, :cond_f

    goto :goto_d

    :cond_f
    move-object v3, v2

    move v2, v0

    move-object v0, v3

    move v4, v5

    move-object v3, v6

    move-object v5, v11

    move-object v6, v12

    :goto_b
    check-cast v0, Ljava/util/List;

    move-object v11, v5

    move-object v12, v6

    move-object v6, v3

    move v5, v4

    goto :goto_c

    :cond_10
    move v2, v0

    move-object v0, v10

    :goto_c
    if-eqz v0, :cond_d

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_11
    check-cast v12, Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v10, v6, Lb40$e;->n:Ljava/util/Collection;

    iput-object v10, v6, Lb40$e;->o:Ljava/lang/Object;

    iput v8, v6, Lb40$e;->r:I

    iget-object v1, p0, Lb40;->f:Lz68;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v10, v0}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lj59;->a:Lj59;

    if-ne v0, v7, :cond_12

    :goto_d
    return-object v7

    :cond_12
    :goto_e
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lg40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg40;

    iget v1, v0, Lg40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg40;

    invoke-direct {v0, p0, p2}, Lg40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Lg40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lg40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lg40;->l:Lkx2;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p2, v0, Lg40;->l:Lkx2;

    iput v3, v0, Lg40;->o:I

    invoke-interface {p0, p1, v0}, Ln60;->m(ZLg40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic0;

    new-instance v1, Lv30;

    invoke-virtual {v0}, Lic0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lic0;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-direct {v1, v2, v0}, Lv30;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_3
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    throw p1

    :cond_7
    :goto_4
    instance-of p1, p2, Lk57$a;

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, p2

    :goto_5
    return-object p0
.end method

.method public final f(Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Li40;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Li40;

    iget v1, v0, Li40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Li40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Li40;

    invoke-direct {v0, p0, p1}, Li40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p1, v0, Li40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Li40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Li40;->l:Lkx2;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p1, v0, Li40;->l:Lkx2;

    iput v3, v0, Li40;->o:I

    invoke-interface {p0, v0}, Ln60;->q(Li40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_1
    :try_start_2
    check-cast p1, La57;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq30;

    new-instance v2, Lr30;

    invoke-virtual {v1}, Lq30;->a()I

    move-result v3

    invoke-virtual {v1}, Lq30;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lq30;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lr30;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    throw p1

    :cond_6
    :goto_4
    instance-of p1, v0, Lk57$a;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move-object p0, v0

    :goto_5
    return-object p0
.end method

.method public final g(ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lj40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lj40;

    iget v1, v0, Lj40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lj40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lj40;

    invoke-direct {v0, p0, p2}, Lj40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Lj40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lj40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lj40;->l:Lkx2;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v2, p0, Lb40;->a:Ln60;

    iput-object p2, v0, Lj40;->l:Lkx2;

    iput v3, v0, Lj40;->o:I

    invoke-interface {v2, p1, v0}, Ln60;->x(ZLj40;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p2, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lf10;

    new-instance v0, Lt10;

    invoke-virtual {p2}, Lf10;->a()J

    move-result-wide v1

    iget-object p0, p0, Lb40;->b:Ls47;

    const p2, 0x7f1400aa

    invoke-interface {p0, p2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v3, 0x7f1400a9

    invoke-interface {p0, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p2, p0}, Lt10;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p2

    :goto_3
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    throw p2

    :cond_5
    :goto_4
    instance-of p2, p0, Lk57$a;

    if-eqz p2, :cond_6

    move-object p0, p1

    :cond_6
    return-object p0
.end method

.method public final h(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lk40;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk40;

    iget v1, v0, Lk40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lk40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lk40;

    invoke-direct {v0, p0, p1}, Lk40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p1, v0, Lk40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lk40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lk40;->l:Lkx2;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p1, v0, Lk40;->l:Lkx2;

    iput v3, v0, Lk40;->o:I

    invoke-interface {p0, v0}, Ln60;->d(Lk40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p1, La57;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq50;

    invoke-virtual {v1}, Lq50;->a()Luj9;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    throw p1

    :cond_6
    :goto_4
    instance-of p1, v0, Lk57$a;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move-object p0, v0

    :goto_5
    return-object p0
.end method

.method public final i(Ljava/lang/String;ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Ll40;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ll40;

    iget v1, v0, Ll40;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ll40;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Ll40;

    invoke-direct {v0, p0, p3}, Ll40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p3, v0, Ll40;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ll40;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ll40;->m:Lkx2;

    iget-object p2, v0, Ll40;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, p3

    move-object p3, p1

    move-object p1, p2

    move-object p2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p3, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v2, p0, Lb40;->a:Ln60;

    iput-object p1, v0, Ll40;->l:Ljava/lang/String;

    iput-object p3, v0, Ll40;->m:Lkx2;

    iput v3, v0, Ll40;->p:I

    invoke-interface {v2, p2, v0}, Ln60;->C(ZLl40;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, La57;

    iget-object p2, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lj26;

    invoke-static {p2}, Lb40;->z(Lj26;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lj70;

    iget-object p0, p0, Lb40;->b:Ls47;

    const v1, 0x7f14009e

    invoke-interface {p0, v1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lj70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p0, Lt20;

    invoke-direct {p0}, Lt20;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p3

    :goto_2
    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p3, p1

    :goto_3
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    throw p0

    :cond_5
    :goto_4
    instance-of p0, v0, Lk57$a;

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move-object p3, v0

    :goto_5
    return-object p3
.end method

.method public final j(ZLf02;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lm40;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lm40;

    iget v3, v2, Lm40;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lm40;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lm40;

    invoke-direct {v2, v0, v1}, Lm40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object v1, v2, Lm40;->m:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lm40;->o:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lm40;->l:Lkx2;

    :try_start_0
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object v1, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v0, v0, Lb40;->a:Ln60;

    iput-object v1, v2, Lm40;->l:Lkx2;

    iput v5, v2, Lm40;->o:I

    move/from16 v4, p1

    invoke-interface {v0, v4, v2}, Ln60;->e(ZLm40;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh10;

    new-instance v7, Lb70;

    invoke-virtual {v3}, Lh10;->a()I

    move-result v8

    invoke-virtual {v3}, Lh10;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lh10;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lh10;->f()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3}, Lh10;->c()Lh10$a;

    move-result-object v4

    invoke-virtual {v4}, Lh10$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lh10;->e()Lh10$a;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lh10$a;->a()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_3

    :cond_4
    move-object v13, v6

    :goto_3
    invoke-virtual {v3}, Lh10;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lh10;->d()Lc06;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lh10;->d()Lc06;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lc06;->f()Lb06;

    move-result-object v3

    move-object v15, v3

    goto :goto_5

    :cond_6
    move-object v15, v6

    :goto_5
    invoke-direct/range {v7 .. v15}, Lb70;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb06;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_6
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_7
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    goto :goto_7

    :cond_8
    throw v1

    :cond_9
    :goto_7
    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_a

    move-object v0, v2

    :cond_a
    return-object v0
.end method

.method public final k(Ljava/lang/String;ZLf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Ln40;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ln40;

    iget v1, v0, Ln40;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln40;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln40;

    invoke-direct {v0, p0, p3}, Ln40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p3, v0, Ln40;->o:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ln40;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p2, v0, Ln40;->n:Z

    iget-object p1, v0, Ln40;->m:Lkx2;

    iget-object v0, v0, Ln40;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, p3

    move-object p3, p1

    move-object p1, v0

    move-object v0, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p3, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v2, p0, Lb40;->a:Ln60;

    new-instance v5, Lm60;

    const/4 v6, 0x4

    invoke-direct {v5, v3, v6}, Lm60;-><init>(II)V

    iput-object p1, v0, Ln40;->l:Ljava/lang/String;

    iput-object p3, v0, Ln40;->m:Lkx2;

    iput-boolean p2, v0, Ln40;->n:Z

    iput v4, v0, Ln40;->q:I

    invoke-interface {v2, v5, p2, v0}, Ln60;->w(Lm60;ZLf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v0, La57;

    iget-object v0, v0, La57;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lj26;

    new-instance v1, Le70;

    invoke-direct {v1, p1}, Le70;-><init>(Ljava/lang/String;)V

    new-array p1, v4, [Lpz3;

    aput-object v1, p1, v3

    invoke-static {p1}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p2}, Lb40;->v(Lj26;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p3

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p3, p1

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    throw p0

    :cond_5
    :goto_4
    instance-of p0, p1, Lk57$a;

    if-eqz p0, :cond_6

    move-object p1, p3

    :cond_6
    return-object p1
.end method

.method public final l(Lf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lo40;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo40;

    iget v1, v0, Lo40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lo40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lo40;

    invoke-direct {v0, p0, p1}, Lo40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p1, v0, Lo40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lo40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lo40;->l:Lkx2;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p1, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p1, v0, Lo40;->l:Lkx2;

    iput v3, v0, Lo40;->o:I

    invoke-interface {p0, v0}, Ln60;->B(Lo40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p1, La57;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc10;

    invoke-virtual {v1}, Lc10;->a()Lec8;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_3
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :cond_4
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    throw p1

    :cond_6
    :goto_4
    instance-of p1, v0, Lk57$a;

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move-object p0, v0

    :goto_5
    return-object p0
.end method

.method public final m(JLjava/lang/String;ZLf02;)Ljava/lang/Object;
    .locals 3

    instance-of p1, p5, Lp40;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, Lp40;

    iget p2, p1, Lp40;->p:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, Lp40;->p:I

    goto :goto_0

    :cond_0
    new-instance p1, Lp40;

    invoke-direct {p1, p0, p5}, Lp40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, p1, Lp40;->n:Ljava/lang/Object;

    sget-object p5, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p1, Lp40;->p:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-object p0, p1, Lp40;->m:Lkx2;

    iget-object p3, p1, Lp40;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p3, p1, Lp40;->l:Ljava/lang/String;

    iput-object p2, p1, Lp40;->m:Lkx2;

    iput v1, p1, Lp40;->p:I

    invoke-interface {p0, p4, p1}, Ln60;->A(ZLp40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, p5, :cond_3

    return-object p5

    :cond_3
    move-object v2, p2

    move-object p2, p0

    move-object p0, v2

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lk10;

    new-instance p2, Le70;

    invoke-direct {p2, p3}, Le70;-><init>(Ljava/lang/String;)V

    new-array p3, v1, [Lpz3;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-static {p3}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Lb40;->u(Lk10;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-nez p3, :cond_4

    goto :goto_4

    :cond_4
    throw p1

    :cond_5
    :goto_4
    instance-of p1, p2, Lk57$a;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move-object p0, p2

    :goto_5
    return-object p0
.end method

.method public final n(ZLf02;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lr40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr40;

    iget v1, v0, Lr40;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr40;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr40;

    invoke-direct {v0, p0, p2}, Lr40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Lr40;->m:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lr40;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr40;->l:Lkx2;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput-object p2, v0, Lr40;->l:Lkx2;

    iput v3, v0, Lr40;->o:I

    invoke-interface {p0, p1, v0}, Ln60;->n(ZLr40;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p2, La57;

    iget-object p1, p2, La57;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Le10;

    invoke-static {p1}, Lb40;->t(Le10;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    throw p2

    :cond_5
    :goto_4
    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move-object p0, p1

    :goto_5
    return-object p0
.end method

.method public final o(Ljava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Ls40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ls40;

    iget v1, v0, Ls40;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ls40;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Ls40;

    invoke-direct {v0, p0, p2}, Ls40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Ls40;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ls40;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Ls40;->m:Lkx2;

    iget-object v0, v0, Ls40;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    sget-object p2, Lkx2;->b:Lkx2;

    :try_start_1
    iget-object v2, p0, Lb40;->a:Ln60;

    iput-object p1, v0, Ls40;->l:Ljava/lang/String;

    iput-object p2, v0, Ls40;->m:Lkx2;

    iput v3, v0, Ls40;->p:I

    invoke-interface {v2, v0}, Ln60;->v(Ls40;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v0, La57;

    iget-object v0, v0, La57;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lk70;

    iget-object p0, p0, Lb40;->g:Lz68;

    :cond_4
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lb40$d;

    invoke-virtual {v0}, Lk70;->a()Lk70$g;

    move-result-object v3

    invoke-virtual {v3}, Lk70$g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lk70;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb40$d;

    invoke-direct {v2, v3, v4}, Lb40$d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Lk70;->c(Ljava/lang/String;)Lv70;

    move-result-object p0

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, p2

    :goto_2
    new-instance p2, Lk57$a;

    invoke-direct {p2, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p2

    move-object p2, p1

    :goto_3
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    throw p1

    :cond_6
    :goto_4
    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_7

    move-object p0, p2

    :cond_7
    return-object p0
.end method

.method public final p()Z
    .locals 1

    iget-object p0, p0, Lb40;->f:Lz68;

    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpz3;

    instance-of v0, v0, Lv70;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(ILf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lu40;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lu40;

    iget v1, v0, Lu40;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lu40;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lu40;

    invoke-direct {v0, p0, p2}, Lu40;-><init>(Lb40;Lf02;)V

    :goto_0
    iget-object p2, v0, Lu40;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lu40;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Lb40;->f:Lz68;

    invoke-virtual {p2}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lpz3;

    instance-of v7, v7, Lb70;

    if-nez v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v2, v5}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :try_start_1
    iget-object p0, p0, Lb40;->a:Ln60;

    iput v3, v0, Lu40;->n:I

    invoke-interface {p0, p1, v0}, Ln60;->j(ILu40;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final v(Lj26;Z)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p1}, Lj26;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li10;

    invoke-static {v2}, Lb40;->s(Li10;)Lz30;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lj26;->b()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb40;->b:Ls47;

    const v2, 0x7f1400a1

    invoke-interface {v1, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lp20;

    const/4 v3, 0x0

    const v4, 0x7f0801a3

    invoke-direct {v2, v4, v1, v3}, Lp20;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lj26;->d()I

    move-result p1

    new-instance v1, Lv40;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lv40;-><init>(ILb40;ZLe02;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lb40;->d:Lkz1;

    invoke-static {p0, v2, v2, v1, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_1
    new-instance p0, Lt20;

    invoke-direct {p0}, Lt20;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
