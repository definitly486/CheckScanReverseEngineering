.class public final Lf41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le41;


# instance fields
.field public final a:Ljc1;

.field public final b:Lnp3;


# direct methods
.method public constructor <init>(Ljc1;Lnp3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf41;->a:Ljc1;

    iput-object p2, p0, Lf41;->b:Lnp3;

    return-void
.end method


# virtual methods
.method public final a(ILlw7;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
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

    iget-object v1, p2, Llw7;->a:Ljava/lang/String;

    const-string v2, "block"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget-object v1, p2, Llw7;->b:Ljava/lang/Integer;

    const-string v2, "item_id"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget v1, p2, Llw7;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object v0

    iget p2, p2, Llw7;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "list_size"

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string v0, "badge"

    invoke-virtual {p2, p3, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "operation_id"

    invoke-virtual {p2, p4, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "item_state"

    invoke-virtual {p2, p5, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lf41;->d(Lqc6;I)Lqc6;

    move-result-object p1

    new-instance p2, Lkw7;

    const-string p3, "Transfer Showcase v2"

    invoke-direct {p2, p3, p1}, Lkw7;-><init>(Ljava/lang/String;Lqc6;)V

    iget-object p0, p0, Lf41;->a:Ljc1;

    invoke-interface {p0, p2}, Ljc1;->a(Lkw7;)V

    return-void
.end method

.method public final b(ILjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "item_id"

    invoke-virtual {p2, p3, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "position"

    invoke-virtual {p2, p4, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "list_size"

    invoke-virtual {p2, p3, p4}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "badge"

    invoke-virtual {p2, p6, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "operation_id"

    invoke-virtual {p2, p7, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    const-string p3, "item_state"

    invoke-virtual {p2, p8, p3}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lf41;->d(Lqc6;I)Lqc6;

    move-result-object p1

    new-instance p2, Lkw7;

    const-string p3, "Transfer Showcase v2"

    invoke-direct {p2, p3, p1}, Lkw7;-><init>(Ljava/lang/String;Lqc6;)V

    iget-object p0, p0, Lf41;->a:Ljc1;

    invoke-interface {p0, p2}, Ljc1;->a(Lkw7;)V

    return-void
.end method

.method public final c(II)V
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

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "list_size"

    invoke-virtual {v0, p2, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lf41;->d(Lqc6;I)Lqc6;

    move-result-object p1

    new-instance p2, Lkw7;

    const-string v0, "Transfer Showcase v2"

    invoke-direct {p2, v0, p1}, Lkw7;-><init>(Ljava/lang/String;Lqc6;)V

    iget-object p0, p0, Lf41;->a:Ljc1;

    invoke-interface {p0, p2}, Ljc1;->a(Lkw7;)V

    return-void
.end method

.method public final d(Lqc6;I)Lqc6;
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "showcase_id"

    invoke-virtual {p1, v0, v1}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p0, p0, Lf41;->b:Lnp3;

    iget-object p0, p0, Lnp3;->a:Lh41;

    invoke-interface {p0, p2}, Lh41;->get(I)Lg41;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    iget-object p2, p0, Lg41;->a:Ljava/lang/String;

    const-string v0, "list_id"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p2, p0, Lg41;->b:Ljava/lang/String;

    const-string v0, "ranker_version"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p2, p0, Lg41;->c:Ljava/lang/String;

    const-string v0, "experiment_key"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p2, p0, Lg41;->d:Ljava/lang/String;

    const-string v0, "experiment_variant"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p2, p0, Lg41;->e:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p1, p2, v0}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p1

    iget-object p0, p0, Lg41;->f:Ljava/lang/Integer;

    const-string p2, "source_task_id"

    invoke-virtual {p1, p0, p2}, Lqc6;->a(Ljava/lang/Object;Ljava/lang/String;)Lqc6;

    move-result-object p0

    return-object p0
.end method
