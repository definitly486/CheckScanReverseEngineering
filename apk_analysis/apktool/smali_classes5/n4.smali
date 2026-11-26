.class public final Ln4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ln4;->f:I

    iput-object p1, p0, Ln4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ln4;->f:I

    iget-object p0, p0, Ln4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lwv7;

    iget-object p0, p0, Lwv7;->b:Liv7;

    invoke-interface {p0}, Liv7;->onMoreClick()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p0, Lbm0;

    iget-object p0, p0, Lbm0;->h:Lhi0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsx5;

    invoke-virtual {v1}, Lsx5;->d()Len1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lc4;

    iget-object p1, p0, Lc4;->a:Ljf6;

    invoke-interface {p1}, Lix8;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lc4;->b:Lj5;

    invoke-interface {p1}, Lj5;->c()Lmz7;

    move-result-object p1

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {p1, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    new-instance v1, Lm4;

    invoke-direct {v1, p0, v0}, Lm4;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lk4;

    invoke-direct {v2, v1, v0}, Lk4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p1, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    iget-object p0, p0, Lc4;->a:Ljf6;

    invoke-interface {p0}, Ljf6;->Y0()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p1, Lu08;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ll4;

    invoke-direct {p1, p0, v0}, Ll4;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Ll08;

    invoke-direct {p0, p1}, Ll08;-><init>(Ljava/util/concurrent/Callable;)V

    move-object p1, p0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
