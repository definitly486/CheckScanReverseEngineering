.class public final Lr4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbw7;Lyu7;)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lr4;->f:I

    iput-object p1, p0, Lr4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lr4;->f:I

    iput-object p1, p0, Lr4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr4;->f:I

    const/4 v1, 0x0

    iget-object p0, p0, Lr4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lbw7;

    iget-object p0, p0, Lbw7;->b:Lyr0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyr0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ly77;

    iget-object p0, p0, Ly77;->b:Ly77$a;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :pswitch_1
    check-cast p1, Lva3;

    check-cast p0, Lc4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lva3;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Laq1;->b:Laq1;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc4;->a:Ljf6;

    invoke-virtual {p1}, Lva3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljf6;->g1(Ljava/lang/String;)V

    iget-object v0, p0, Lc4;->d:Ls67;

    invoke-virtual {p1}, Lva3;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    new-array v1, v1, [Lua3;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lua3;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lua3;

    invoke-interface {v0, p1}, Ls67;->a([Lua3;)Lkq1;

    move-result-object p1

    invoke-virtual {p0}, Lc4;->d()Lnq1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
