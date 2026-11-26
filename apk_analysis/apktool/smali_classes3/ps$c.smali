.class public final Lps$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "coil3.compose.AsyncImagePainter$launchJob$1"
    f = "AsyncImagePainter.kt"
    l = {
        0xea,
        0xee
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lps;

.field public m:I

.field public final synthetic n:Lps;

.field public final synthetic o:Lps$a;


# direct methods
.method public constructor <init>(Lps;Lps$a;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lps;",
            "Lps$a;",
            "Le02<",
            "-",
            "Lps$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lps$c;->n:Lps;

    iput-object p2, p0, Lps$c;->o:Lps$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Lps$c;

    iget-object v0, p0, Lps$c;->n:Lps;

    iget-object p0, p0, Lps$c;->o:Lps$a;

    invoke-direct {p1, v0, p0, p2}, Lps$c;-><init>(Lps;Lps$a;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lps$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lps$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lps$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lps$c;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lps$c;->n:Lps;

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lps$c;->l:Lps;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lps;->n:Lss;

    iget-object v1, p0, Lps$c;->o:Lps$a;

    if-eqz p1, :cond_4

    iget-object v2, v1, Lps$a;->b:Lb24;

    invoke-virtual {v4, v2, v5}, Lps;->d(Lb24;Z)Lb24;

    move-result-object v2

    iget-object v1, v1, Lps$a;->a:Lr14;

    iput v5, p0, Lps$c;->m:I

    invoke-interface {p1, v1, v2, p0}, Lss;->a(Lr14;Lb24;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lps$b;

    goto :goto_4

    :cond_4
    iget-object p1, v1, Lps$a;->b:Lb24;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lps;->d(Lb24;Z)Lb24;

    move-result-object p1

    iget-object v1, v1, Lps$a;->a:Lr14;

    iput-object v4, p0, Lps$c;->l:Lps;

    iput v3, p0, Lps$c;->m:I

    invoke-interface {v1, p1, p0}, Lr14;->a(Lb24;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object p0, v4

    :goto_2
    check-cast p1, Lg24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lzc8;

    if-eqz v0, :cond_6

    new-instance v0, Lps$b$d;

    check-cast p1, Lzc8;

    iget-object v1, p1, Lzc8;->a:Lx04;

    iget-object v2, p1, Lzc8;->b:Lb24;

    iget-object v2, v2, Lb24;->a:Landroid/content/Context;

    iget p0, p0, Lps;->m:I

    invoke-static {v1, v2, p0}, Lv14;->a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lps$b$d;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lzc8;)V

    :goto_3
    move-object p1, v0

    goto :goto_4

    :cond_6
    instance-of v0, p1, Lu03;

    if-eqz v0, :cond_8

    new-instance v0, Lps$b$b;

    check-cast p1, Lu03;

    iget-object v1, p1, Lu03;->a:Lx04;

    if-eqz v1, :cond_7

    iget-object v2, p1, Lu03;->b:Lb24;

    iget-object v2, v2, Lb24;->a:Landroid/content/Context;

    iget p0, p0, Lps;->m:I

    invoke-static {v1, v2, p0}, Lv14;->a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    :cond_7
    invoke-direct {v0, v2, p1}, Lps$b$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lu03;)V

    goto :goto_3

    :goto_4
    invoke-virtual {v4, p1}, Lps;->e(Lps$b;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v2
.end method
