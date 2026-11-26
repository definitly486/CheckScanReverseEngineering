.class public final Lyads/zn4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ao4;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lyads/sl5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V
    .locals 0

    iput-object p4, p0, Lyads/zn4;->c:Lyads/ao4;

    iput-object p2, p0, Lyads/zn4;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lyads/zn4;->e:Landroid/content/Context;

    iput-object p5, p0, Lyads/zn4;->f:Lyads/sl5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/zn4;

    iget-object v4, p0, Lyads/zn4;->c:Lyads/ao4;

    iget-object v2, p0, Lyads/zn4;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lyads/zn4;->e:Landroid/content/Context;

    iget-object v5, p0, Lyads/zn4;->f:Lyads/sl5;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lyads/zn4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/zn4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/zn4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/zn4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zn4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v3, Lyads/yn4;

    iget-object v5, p0, Lyads/zn4;->d:Ljava/util/ArrayList;

    iget-object v7, p0, Lyads/zn4;->c:Lyads/ao4;

    iget-object v4, p0, Lyads/zn4;->e:Landroid/content/Context;

    iget-object v8, p0, Lyads/zn4;->f:Lyads/sl5;

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lyads/yn4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Le02;Lyads/ao4;Lyads/sl5;)V

    iput v2, p0, Lyads/zn4;->b:I

    invoke-static {v3, p0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lyads/zn4;->c:Lyads/ao4;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lyads/zn4;->d:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lyads/ao4;->a(II)V

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
