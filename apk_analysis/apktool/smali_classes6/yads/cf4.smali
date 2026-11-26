.class public final Lyads/cf4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/df4;

.field public final synthetic c:Lyads/d9;

.field public final synthetic d:Lyads/vg4;

.field public final synthetic e:Lyads/of4;

.field public final synthetic f:Lyads/ye4;


# direct methods
.method public constructor <init>(Lyads/df4;Lyads/d9;Lyads/vg4;Lyads/of4;Lyads/ye4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/cf4;->b:Lyads/df4;

    iput-object p2, p0, Lyads/cf4;->c:Lyads/d9;

    iput-object p3, p0, Lyads/cf4;->d:Lyads/vg4;

    iput-object p4, p0, Lyads/cf4;->e:Lyads/of4;

    iput-object p5, p0, Lyads/cf4;->f:Lyads/ye4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7

    new-instance v0, Lyads/cf4;

    iget-object v1, p0, Lyads/cf4;->b:Lyads/df4;

    iget-object v2, p0, Lyads/cf4;->c:Lyads/d9;

    iget-object v3, p0, Lyads/cf4;->d:Lyads/vg4;

    iget-object v4, p0, Lyads/cf4;->e:Lyads/of4;

    iget-object v5, p0, Lyads/cf4;->f:Lyads/ye4;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/cf4;-><init>(Lyads/df4;Lyads/d9;Lyads/vg4;Lyads/of4;Lyads/ye4;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/cf4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/cf4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/cf4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    new-instance v1, Lyads/bf4;

    iget-object v2, p0, Lyads/cf4;->b:Lyads/df4;

    iget-object v3, p0, Lyads/cf4;->c:Lyads/d9;

    iget-object v4, p0, Lyads/cf4;->d:Lyads/vg4;

    iget-object v5, p0, Lyads/cf4;->e:Lyads/of4;

    iget-object v6, p0, Lyads/cf4;->f:Lyads/ye4;

    invoke-direct/range {v1 .. v6}, Lyads/bf4;-><init>(Lyads/df4;Lyads/d9;Lyads/vg4;Lyads/of4;Lyads/ye4;)V

    invoke-virtual {v1}, Lyads/bf4;->run()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
