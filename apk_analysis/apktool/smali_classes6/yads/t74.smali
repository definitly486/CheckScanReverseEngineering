.class public final Lyads/t74;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/w74;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/l24;

.field public final synthetic f:Lnl3;

.field public final synthetic g:Lyads/x54;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/w74;Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/t74;->c:Lyads/w74;

    iput-object p2, p0, Lyads/t74;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/t74;->e:Lyads/l24;

    iput-object p4, p0, Lyads/t74;->f:Lnl3;

    iput-object p5, p0, Lyads/t74;->g:Lyads/x54;

    iput-object p6, p0, Lyads/t74;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 8

    new-instance v0, Lyads/t74;

    iget-object v1, p0, Lyads/t74;->c:Lyads/w74;

    iget-object v2, p0, Lyads/t74;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/t74;->e:Lyads/l24;

    iget-object v4, p0, Lyads/t74;->f:Lnl3;

    iget-object v5, p0, Lyads/t74;->g:Lyads/x54;

    iget-object v6, p0, Lyads/t74;->h:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lyads/t74;-><init>(Lyads/w74;Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/t74;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/t74;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/t74;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/t74;->b:I

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

    iget-object v1, p0, Lyads/t74;->c:Lyads/w74;

    move p1, v2

    iget-object v2, p0, Lyads/t74;->d:Landroid/content/Context;

    iget-object v3, p0, Lyads/t74;->e:Lyads/l24;

    iget-object v4, p0, Lyads/t74;->f:Lnl3;

    iget-object v5, p0, Lyads/t74;->g:Lyads/x54;

    iget-object v6, p0, Lyads/t74;->h:Ljava/lang/String;

    iput p1, p0, Lyads/t74;->b:I

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lyads/w74;->a(Landroid/content/Context;Lyads/l24;Lnl3;Lyads/x54;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
