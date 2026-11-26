.class public final Lvp8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lup8;


# instance fields
.field public final a:Ljc1;

.field public final b:Lqp3;


# direct methods
.method public constructor <init>(Ljc1;Lqp3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvp8;->a:Ljc1;

    iput-object p2, p0, Lvp8;->b:Lqp3;

    return-void
.end method

.method public static x(Lqc6;Lwp8;)Lqc6;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p1, Lwp8;->a:Ljava/lang/String;

    const-string v1, "list_id"

    invoke-virtual {p0, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p0

    iget-object v0, p1, Lwp8;->b:Ljava/lang/String;

    const-string v1, "ranker_version"

    invoke-virtual {p0, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p0

    iget-object v0, p1, Lwp8;->c:Ljava/lang/String;

    const-string v1, "experiment_key"

    invoke-virtual {p0, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p0

    iget-object p1, p1, Lwp8;->d:Ljava/lang/String;

    const-string v0, "experiment_variant"

    invoke-virtual {p0, p1, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "daily_ad"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "daily_ad"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "fail"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final d()V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "daily_ad"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    const-string v0, "show"

    invoke-virtual {p0, p1, v0}, Lvp8;->w(ILjava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "completed"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "show"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final g(I)V
    .locals 1

    const-string v0, "continue"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    const-string v0, "button_action"

    invoke-virtual {p0, p1, v0}, Lvp8;->w(ILjava/lang/String;)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    const-string v0, "show"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string v0, "fail"

    invoke-virtual {p0, p1, v0}, Lvp8;->w(ILjava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;ILjava/lang/Integer;ILwp8;)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "list"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "click"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "item_id"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    const-string p2, "position"

    invoke-virtual {p1, p3, p2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "list_size"

    invoke-virtual {p1, p2, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-static {p1, p5}, Lvp8;->x(Lqc6;Lwp8;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final l(Llw7;Lwp8;)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "list"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "show"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget-object v1, p1, Llw7;->a:Ljava/lang/String;

    const-string v2, "block"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget-object v1, p1, Llw7;->b:Ljava/lang/Integer;

    const-string v2, "item_id"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget v1, p1, Llw7;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget p1, p1, Llw7;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "list_size"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-static {p1, p2}, Lvp8;->x(Lqc6;Lwp8;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    const-string v0, "claim"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final n(I)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "list"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "show"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "list_size"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final o(II)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "task_card"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "subtask_button"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "subtask_id"

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final p(I)V
    .locals 1

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lvp8;->w(ILjava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "list"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "click"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "daily_ad"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    const-string p1, "item_id"

    invoke-virtual {v0, p3, p1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    const-string p3, "position"

    invoke-virtual {p1, p4, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "list_size"

    invoke-virtual {p1, p2, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final r(I)V
    .locals 1

    const-string v0, "transfer_button"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final s(I)V
    .locals 1

    const-string v0, "fail"

    invoke-virtual {p0, p1, v0}, Lvp8;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final t(Llw7;)V
    .locals 4

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "list"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "show"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget-object v1, p1, Llw7;->a:Ljava/lang/String;

    const-string v2, "block"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget-object v2, p1, Llw7;->b:Ljava/lang/Integer;

    const-string v3, "daily_ad"

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v1, "item_id"

    invoke-virtual {v0, v2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget v1, p1, Llw7;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget p1, p1, Llw7;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "list_size"

    invoke-virtual {v0, p1, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final u(Lqc6;)V
    .locals 2

    new-instance v0, Lkw7;

    const-string v1, "Tasks Showcase v2"

    invoke-direct {v0, v1, p1}, Lkw7;-><init>(Ljava/lang/String;Lqc6;)V

    iget-object p0, p0, Lvp8;->a:Ljc1;

    invoke-interface {p0, v0}, Ljc1;->a(Lkw7;)V

    return-void
.end method

.method public final v(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "daily_bonus"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {p2, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final w(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lqc6;

    invoke-direct {v0}, Lqc6;-><init>()V

    const-string v1, "task_card"

    const-string v2, "screen"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "item_id"

    invoke-virtual {p2, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lvp8;->y(Lqc6;Ljava/lang/Integer;)Lqc6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvp8;->u(Lqc6;)V

    return-void
.end method

.method public final y(Lqc6;Ljava/lang/Integer;)Lqc6;
    .locals 2

    iget-object p0, p0, Lvp8;->b:Lqp3;

    iget-object p0, p0, Lqp3;->a:Lxp8;

    if-nez p2, :cond_0

    invoke-interface {p0}, Lxp8;->get()Lwp8;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lxp8;->c()Lwp8;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lwp8;->e:Ljava/lang/Integer;

    invoke-static {v1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-static {p1, p0}, Lvp8;->x(Lqc6;Lwp8;)Lqc6;

    move-result-object p0

    return-object p0
.end method
