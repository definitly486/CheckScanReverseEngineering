.class public final Lyads/dl2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/hl2;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/hl2;Ljava/lang/String;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/dl2;->c:Lyads/hl2;

    iput-object p2, p0, Lyads/dl2;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/dl2;

    iget-object v0, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object p0, p0, Lyads/dl2;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lyads/dl2;-><init>(Lyads/hl2;Ljava/lang/String;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/dl2;

    iget-object v0, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object p0, p0, Lyads/dl2;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lyads/dl2;-><init>(Lyads/hl2;Ljava/lang/String;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/dl2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/dl2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object v1, p0, Lyads/dl2;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object p1, p1, Lyads/hl2;->b:Lyads/xk2;

    invoke-virtual {p1, v1}, Lyads/xk2;->a(Ljava/lang/String;)Lyads/wk2;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p1, Lyads/wk2;->a:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_2
    iget-object p1, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object p1, p1, Lyads/hl2;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmk2;

    if-nez p1, :cond_3

    iget-object p1, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object p1, p1, Lyads/hl2;->d:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly22;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Luy4;->a:Lhu3;

    invoke-virtual {v4}, Lhu3;->k0()Lgu3;

    move-result-object v4

    new-instance v5, Lyads/cl2;

    iget-object v6, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object v7, p0, Lyads/dl2;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v7, v2}, Lyads/cl2;-><init>(Lyads/hl2;Ljava/lang/String;Ljava/lang/String;Le02;)V

    const/4 v6, 0x2

    invoke-static {p1, v4, v2, v5, v6}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iget-object v2, p0, Lyads/dl2;->c:Lyads/hl2;

    iget-object v2, v2, Lyads/hl2;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iput v3, p0, Lyads/dl2;->b:I

    invoke-interface {p1, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    return-object p0
.end method
