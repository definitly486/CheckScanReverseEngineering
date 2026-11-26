.class public final Lyads/cl2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/hl2;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/hl2;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/cl2;->c:Lyads/hl2;

    iput-object p2, p0, Lyads/cl2;->d:Ljava/lang/String;

    iput-object p3, p0, Lyads/cl2;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/cl2;

    iget-object v0, p0, Lyads/cl2;->c:Lyads/hl2;

    iget-object v1, p0, Lyads/cl2;->d:Ljava/lang/String;

    iget-object p0, p0, Lyads/cl2;->e:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/cl2;-><init>(Lyads/hl2;Ljava/lang/String;Ljava/lang/String;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/cl2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/cl2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/cl2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/cl2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lyads/cl2;->c:Lyads/hl2;

    iget-object v1, p0, Lyads/cl2;->d:Ljava/lang/String;

    iget-object v3, p0, Lyads/cl2;->e:Ljava/lang/String;

    iput v2, p0, Lyads/cl2;->b:I

    invoke-static {p1, v1, v3, p0}, Lyads/hl2;->a(Lyads/hl2;Ljava/lang/String;Ljava/lang/String;Lyads/cl2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lyads/cl2;->c:Lyads/hl2;

    iget-object v0, v0, Lyads/hl2;->e:Ljava/util/HashMap;

    iget-object p0, p0, Lyads/cl2;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :goto_1
    iget-object v0, p0, Lyads/cl2;->c:Lyads/hl2;

    iget-object v0, v0, Lyads/hl2;->e:Ljava/util/HashMap;

    iget-object p0, p0, Lyads/cl2;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
