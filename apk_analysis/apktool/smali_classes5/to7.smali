.class public final Lto7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld16;


# direct methods
.method public constructor <init>(Ld16;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lto7;->a:Ld16;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lso7;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lso7;

    iget v1, v0, Lso7;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lso7;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lso7;

    invoke-direct {v0, p0, p1}, Lso7;-><init>(Lto7;Lf02;)V

    :goto_0
    iget-object p1, v0, Lso7;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lso7;->n:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object p0, p0, Lto7;->a:Ld16;

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v4, v0, Lso7;->n:I

    invoke-interface {p0, v0}, Ld16;->b(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {p0, v5}, Ld16;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput v3, v0, Lso7;->n:I

    invoke-interface {p0, v2, v0}, Ld16;->c(Ljava/util/ArrayList;Lso7;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_8
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
