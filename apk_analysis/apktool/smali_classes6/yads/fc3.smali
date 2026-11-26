.class public final Lyads/fc3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/hc3;

.field public final synthetic e:Lyads/rd3;


# direct methods
.method public constructor <init>(Lyads/hc3;Lyads/rd3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/fc3;->d:Lyads/hc3;

    iput-object p2, p0, Lyads/fc3;->e:Lyads/rd3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method

.method public static final a(Lll3;)Lj59;
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lug6;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 6
    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance v0, Lyads/fc3;

    iget-object v1, p0, Lyads/fc3;->d:Lyads/hc3;

    iget-object p0, p0, Lyads/fc3;->e:Lyads/rd3;

    invoke-direct {v0, v1, p0, p2}, Lyads/fc3;-><init>(Lyads/hc3;Lyads/rd3;Le02;)V

    iput-object p1, v0, Lyads/fc3;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lug6;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/fc3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/fc3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/fc3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/fc3;->b:I

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

    iget-object p1, p0, Lyads/fc3;->c:Ljava/lang/Object;

    check-cast p1, Lug6;

    iget-object v1, p0, Lyads/fc3;->d:Lyads/hc3;

    iget-object v3, p0, Lyads/fc3;->e:Lyads/rd3;

    new-instance v4, Lz3;

    const/4 v5, 0x3

    invoke-direct {v4, p1, v5}, Lz3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v3, v4}, Lyads/hc3;->a(Lyads/rd3;Lyads/dc3;)Lll3;

    move-result-object v1

    new-instance v3, Leh0;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v4}, Leh0;-><init>(Ljava/lang/Object;I)V

    iput v2, p0, Lyads/fc3;->b:I

    invoke-static {p1, v3, p0}, Lsg6;->a(Lug6;Lll3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
