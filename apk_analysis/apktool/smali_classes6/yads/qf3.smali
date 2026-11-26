.class public final Lyads/qf3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/dh4;

.field public final synthetic e:Lyads/rf3;


# direct methods
.method public constructor <init>(Lyads/dh4;Lyads/rf3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/qf3;->d:Lyads/dh4;

    iput-object p2, p0, Lyads/qf3;->e:Lyads/rf3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/qf3;

    iget-object v1, p0, Lyads/qf3;->d:Lyads/dh4;

    iget-object p0, p0, Lyads/qf3;->e:Lyads/rf3;

    invoke-direct {v0, v1, p0, p2}, Lyads/qf3;-><init>(Lyads/dh4;Lyads/rf3;Le02;)V

    iput-object p1, v0, Lyads/qf3;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/qf3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/qf3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/qf3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/qf3;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lyads/qf3;->c:Ljava/lang/Object;

    check-cast v1, Ly22;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/qf3;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly22;

    :cond_2
    :goto_0
    invoke-static {v1}, Lz22;->e(Ly22;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lyads/qf3;->d:Lyads/dh4;

    iget-object p1, p1, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {p1}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object p1

    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lyads/qf3;->e:Lyads/rf3;

    iget-object v4, v4, Lyads/rf3;->d:Lyads/ln3;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v4, Lyads/ln3;->a:Lyads/ch4;

    iget v4, v4, Lyads/ln3;->b:I

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v4, v7}, Lyads/ch4;->a(Landroid/content/Context;IZ)Lyads/i66;

    move-result-object v4

    iget-object v5, p0, Lyads/qf3;->e:Lyads/rf3;

    iget-object v5, v5, Lyads/rf3;->a:Lyads/dg3;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lyads/f66;

    iget-object v5, v5, Lyads/dg3;->a:Lyads/eg3;

    iget-object v7, v5, Lyads/eg3;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/yu;

    goto :goto_1

    :cond_3
    move-object v7, v3

    :goto_1
    if-nez v7, :cond_4

    new-instance v7, Lyads/yu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v5, Lyads/eg3;->c:Lyads/ip0;

    invoke-direct {v7, v8, v9}, Lyads/yu;-><init>(Landroid/content/Context;Lyads/ip0;)V

    iget-object v8, v5, Lyads/eg3;->d:Ljava/util/WeakHashMap;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, p1, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v8, v5, Lyads/eg3;->b:Lyads/zu;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_5

    const/high16 v8, -0x10000

    goto :goto_2

    :cond_5
    const v8, -0xff0100

    :goto_2
    invoke-virtual {v7, v8}, Lyads/yu;->setColor(I)V

    iget-object v7, v5, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    if-eqz v6, :cond_8

    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/jg3;

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-nez v6, :cond_7

    new-instance v6, Lyads/jg3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lyads/ip0;

    invoke-direct {v8}, Lyads/ip0;-><init>()V

    invoke-direct {v6, v7, v8}, Lyads/jg3;-><init>(Landroid/content/Context;Lyads/ip0;)V

    iget-object v7, v5, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, p1, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object p1, v5, Lyads/eg3;->a:Lyads/qh6;

    check-cast v4, Lyads/f66;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/qh6;->a(Lyads/f66;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lyads/jg3;->setDescription(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/jg3;

    goto :goto_4

    :cond_9
    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_a

    iget-object v5, v5, Lyads/eg3;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    :goto_5
    iput-object v1, p0, Lyads/qf3;->c:Ljava/lang/Object;

    iput v2, p0, Lyads/qf3;->b:I

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_b
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
