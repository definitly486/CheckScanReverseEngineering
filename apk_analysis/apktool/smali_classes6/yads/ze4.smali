.class public final Lyads/ze4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/df4;

.field public final synthetic c:Lyads/ee4;

.field public final synthetic d:Lyads/b05;

.field public final synthetic e:Lyads/bf4;

.field public final synthetic f:Lyads/af4;


# direct methods
.method public constructor <init>(Lyads/df4;Lyads/ee4;Lyads/b05;Lyads/bf4;Lyads/af4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ze4;->b:Lyads/df4;

    iput-object p2, p0, Lyads/ze4;->c:Lyads/ee4;

    iput-object p3, p0, Lyads/ze4;->d:Lyads/b05;

    iput-object p4, p0, Lyads/ze4;->e:Lyads/bf4;

    iput-object p5, p0, Lyads/ze4;->f:Lyads/af4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 7

    new-instance v0, Lyads/ze4;

    iget-object v1, p0, Lyads/ze4;->b:Lyads/df4;

    iget-object v2, p0, Lyads/ze4;->c:Lyads/ee4;

    iget-object v3, p0, Lyads/ze4;->d:Lyads/b05;

    iget-object v4, p0, Lyads/ze4;->e:Lyads/bf4;

    iget-object v5, p0, Lyads/ze4;->f:Lyads/af4;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lyads/ze4;-><init>(Lyads/df4;Lyads/ee4;Lyads/b05;Lyads/bf4;Lyads/af4;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/ze4;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/ze4;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/ze4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ze4;->b:Lyads/df4;

    iget-object v0, p1, Lyads/df4;->f:Lyads/ff4;

    iget-object v2, p1, Lyads/df4;->e:Landroid/content/Context;

    iget-object v3, p0, Lyads/ze4;->c:Lyads/ee4;

    iget-object v4, p0, Lyads/ze4;->d:Lyads/b05;

    iget-object p1, p0, Lyads/ze4;->e:Lyads/bf4;

    iget-object v6, p1, Lyads/bf4;->d:Lyads/of4;

    iget-object p0, p0, Lyads/ze4;->f:Lyads/af4;

    iget-object v8, p0, Lyads/af4;->a:Lyads/ye4;

    iget-object p0, v0, Lyads/ff4;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->f:Lyads/hk4;

    iget-object p1, v0, Lyads/ff4;->d:Lyads/ge4;

    iget-object p1, p1, Lyads/ge4;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lyads/fe4;

    if-eqz v1, :cond_0

    iget-object v5, v0, Lyads/ff4;->c:Lyads/de4;

    iget-object v7, v0, Lyads/ff4;->b:Lyads/we4;

    invoke-interface/range {v1 .. v8}, Lyads/fe4;->a(Landroid/content/Context;Lyads/ee4;Lyads/b05;Lyads/de4;Lyads/of4;Lyads/we4;Lyads/ye4;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lyads/o8;->a:Lyads/m4;

    invoke-interface {v8, p0}, Lyads/ye4;->a(Lyads/m4;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
