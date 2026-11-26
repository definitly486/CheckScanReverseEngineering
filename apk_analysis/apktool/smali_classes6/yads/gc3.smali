.class public final Lyads/gc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/hc3;

.field public final synthetic d:Lyads/rd3;

.field public final synthetic e:Lyads/dc3;


# direct methods
.method public constructor <init>(Lyads/hc3;Lyads/rd3;Lyads/dc3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/gc3;->c:Lyads/hc3;

    iput-object p2, p0, Lyads/gc3;->d:Lyads/rd3;

    iput-object p3, p0, Lyads/gc3;->e:Lyads/dc3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/gc3;

    iget-object v0, p0, Lyads/gc3;->c:Lyads/hc3;

    iget-object v1, p0, Lyads/gc3;->d:Lyads/rd3;

    iget-object p0, p0, Lyads/gc3;->e:Lyads/dc3;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/gc3;-><init>(Lyads/hc3;Lyads/rd3;Lyads/dc3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/gc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/gc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/gc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/gc3;->b:I

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

    iget-object p1, p0, Lyads/gc3;->c:Lyads/hc3;

    iget-object p1, p1, Lyads/hc3;->d:Lyads/hl2;

    iget-object v1, p0, Lyads/gc3;->d:Lyads/rd3;

    iget-object v1, v1, Lyads/rd3;->c:Ljava/lang/String;

    iput v3, p0, Lyads/gc3;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Luy4;->a:Lhu3;

    invoke-virtual {v3}, Lhu3;->k0()Lgu3;

    move-result-object v3

    new-instance v4, Lyads/dl2;

    invoke-direct {v4, p1, v1, v2}, Lyads/dl2;-><init>(Lyads/hl2;Ljava/lang/String;Le02;)V

    invoke-static {v3, v4, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/gc3;->e:Lyads/dc3;

    check-cast p0, Lz3;

    invoke-virtual {p0, p1}, Lz3;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
