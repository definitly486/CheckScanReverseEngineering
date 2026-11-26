.class public final Lgh1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lgh1;->f:I

    iput-object p2, p0, Lgh1;->g:Ljava/lang/Object;

    iput-object p3, p0, Lgh1;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lgh1;->f:I

    iget-object v1, p0, Lgh1;->h:Ljava/lang/Object;

    iget-object p0, p0, Lgh1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lsi4;

    iget-object p0, p0, Lsi4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lti4;

    iget-object p1, v1, Lti4;->a:Lwi4;

    iget-object p1, p1, Lwi4;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onImageClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p0, Lih1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsd1;

    invoke-virtual {v3}, Lsd1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lih1;->a:Lcom/warefly/checkscan/data/db/CheckscanDatabase;

    const/16 v2, 0x1f4

    invoke-static {v2, v0}, Lqn1;->L(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object v4

    invoke-interface {v4, v3}, Lwf1;->k(Ljava/util/List;)Lqp1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lup1;

    invoke-direct {v0, v2}, Lup1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/data/db/CheckscanDatabase;->f()Lwf1;

    move-result-object v1

    invoke-interface {v1}, Lwf1;->m()Lmz7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v0

    new-instance v1, Ljd1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Ljd1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lfh1;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lfh1;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lh08;

    invoke-direct {p1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
