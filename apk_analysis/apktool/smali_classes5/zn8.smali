.class public final Lzn8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Luf3;Lxn8;Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Luf3;->c:Lo87;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lxn8$b;->a:Lxn8$b;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lli7;

    invoke-direct {p0, p2}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    invoke-virtual {v0, p0}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    instance-of p2, p1, Lxn8$a;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lxn8$a;

    iget-boolean v1, p2, Lxn8$a;->b:Z

    if-eqz v1, :cond_1

    new-instance p2, Lyn8;

    invoke-direct {p2, p3, p1}, Lyn8;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;Lxn8;)V

    invoke-virtual {p0, p2}, Luf3;->l(Lt57;)V

    new-instance p0, Lix;

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 p2, 0x7

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {v0, p0}, Lo87;->d(Ldf7;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p2, Lxn8$a;->a:Ljava/lang/String;

    invoke-interface {p3, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
