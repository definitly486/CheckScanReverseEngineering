.class public final Lxg1;
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

    iput p2, p0, Lxg1;->f:I

    iput-object p1, p0, Lxg1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lxg1;->f:I

    iget-object p0, p0, Lxg1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ltz8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lnz8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lsz8;

    invoke-virtual {p1}, Ltz8;->c()I

    move-result v1

    invoke-virtual {p1}, Ltz8;->b()I

    move-result v2

    invoke-virtual {p1}, Ltz8;->g()I

    move-result v3

    invoke-virtual {p1}, Ltz8;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltz8;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ltz8;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ltz8;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lsz8;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lga3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/common/filters/FiltersDialog;->e:Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/view/AllOperationsFragment$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
