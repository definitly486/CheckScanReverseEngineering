.class public final Lyads/um4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/wm4;

.field public final synthetic d:Lyads/ja6;


# direct methods
.method public constructor <init>(Lyads/wm4;Lyads/ja6;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/um4;->c:Lyads/wm4;

    iput-object p2, p0, Lyads/um4;->d:Lyads/ja6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/um4;

    iget-object v0, p0, Lyads/um4;->c:Lyads/wm4;

    iget-object p0, p0, Lyads/um4;->d:Lyads/ja6;

    invoke-direct {p1, v0, p0, p2}, Lyads/um4;-><init>(Lyads/wm4;Lyads/ja6;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/um4;

    iget-object v0, p0, Lyads/um4;->c:Lyads/wm4;

    iget-object p0, p0, Lyads/um4;->d:Lyads/ja6;

    invoke-direct {p1, v0, p0, p2}, Lyads/um4;-><init>(Lyads/wm4;Lyads/ja6;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/um4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/um4;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/um4;->c:Lyads/wm4;

    iget-object v1, p0, Lyads/um4;->d:Lyads/ja6;

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Lyads/um4;->b:I

    invoke-static {p1, v1, p0}, Lyads/wm4;->a(Lyads/wm4;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
