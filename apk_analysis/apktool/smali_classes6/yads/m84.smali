.class public final Lyads/m84;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/q84;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lyads/q84;Ljava/util/Map;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/m84;->b:Lyads/q84;

    iput-object p2, p0, Lyads/m84;->c:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/m84;

    iget-object v0, p0, Lyads/m84;->b:Lyads/q84;

    iget-object p0, p0, Lyads/m84;->c:Ljava/util/Map;

    invoke-direct {p1, v0, p0, p2}, Lyads/m84;-><init>(Lyads/q84;Ljava/util/Map;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/m84;

    iget-object v0, p0, Lyads/m84;->b:Lyads/q84;

    iget-object p0, p0, Lyads/m84;->c:Ljava/util/Map;

    invoke-direct {p1, v0, p0, p2}, Lyads/m84;-><init>(Lyads/q84;Ljava/util/Map;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/m84;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lyads/m84;->b:Lyads/q84;

    iget-object v0, p0, Lyads/m84;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/q84;->a(Ljava/util/Map;)V

    iget-object p1, p0, Lyads/m84;->b:Lyads/q84;

    iget-object p1, p1, Lyads/q84;->a:Lyads/wg;

    iget-object p0, p0, Lyads/m84;->c:Ljava/util/Map;

    iget-object v0, p1, Lyads/wg;->a:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lyads/wg;->b:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gj0;

    iget-object p1, p1, Lyads/gj0;->a:Lio/appmetrica/analytics/IReporter;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->reportAnr(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
