.class public final Lyads/rd;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/rd;->c:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/rd;

    iget-object p0, p0, Lyads/rd;->c:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lyads/rd;-><init>(Landroid/content/Context;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/rd;

    iget-object p0, p0, Lyads/rd;->c:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lyads/rd;-><init>(Landroid/content/Context;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/rd;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/rd;->b:I

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

    iget-object p1, p0, Lyads/rd;->c:Landroid/content/Context;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lyads/pd;->g:Lyads/pd;

    if-nez v1, :cond_3

    sget-object v1, Lyads/pd;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lyads/pd;->g:Lyads/pd;

    if-nez v3, :cond_2

    new-instance v3, Lyads/pd;

    invoke-direct {v3, p1}, Lyads/pd;-><init>(Landroid/content/Context;)V

    sput-object v3, Lyads/pd;->g:Lyads/pd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    move-object v1, v3

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_3
    :goto_2
    iput v2, p0, Lyads/rd;->b:I

    invoke-virtual {v1, p0}, Lyads/pd;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    return-object p0
.end method
