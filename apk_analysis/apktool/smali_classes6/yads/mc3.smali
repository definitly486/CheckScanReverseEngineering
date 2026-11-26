.class public final Lyads/mc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/sc3;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lyads/ce3;


# direct methods
.method public constructor <init>(Lyads/sc3;Ljava/util/Set;Lyads/ce3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/mc3;->c:Lyads/sc3;

    iput-object p2, p0, Lyads/mc3;->d:Ljava/util/Set;

    iput-object p3, p0, Lyads/mc3;->e:Lyads/ce3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/mc3;

    iget-object v0, p0, Lyads/mc3;->c:Lyads/sc3;

    iget-object v1, p0, Lyads/mc3;->d:Ljava/util/Set;

    iget-object p0, p0, Lyads/mc3;->e:Lyads/ce3;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/mc3;-><init>(Lyads/sc3;Ljava/util/Set;Lyads/ce3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/mc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/mc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/mc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/mc3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/mc3;->c:Lyads/sc3;

    iget-object v1, p0, Lyads/mc3;->d:Ljava/util/Set;

    iput v3, p0, Lyads/mc3;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/jc3;

    invoke-direct {v3, p1, v1, v2}, Lyads/jc3;-><init>(Lyads/sc3;Ljava/util/Set;Le02;)V

    invoke-static {v3, p0}, Lz22;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ac3;

    iget-object v1, v1, Lyads/ac3;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lyads/mc3;->e:Lyads/ce3;

    iget-object p0, p0, Lyads/mc3;->c:Lyads/sc3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0xa

    invoke-static {p1, p0}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-static {p0}, Lm05;->b(I)I

    move-result p0

    const/16 v1, 0x10

    if-ge p0, v1, :cond_4

    move p0, v1

    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ac3;

    iget-object v2, p1, Lyads/ac3;->a:Ljava/lang/String;

    iget-object p1, p1, Lyads/ac3;->b:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v0, v1}, Lyads/ce3;->a(Ljava/util/Map;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
