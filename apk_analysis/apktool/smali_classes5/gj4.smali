.class public final Lgj4;
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

    iput p1, p0, Lgj4;->f:I

    iput-object p2, p0, Lgj4;->g:Ljava/lang/Object;

    iput-object p3, p0, Lgj4;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lgj4;->f:I

    iget-object v1, p0, Lgj4;->h:Ljava/lang/Object;

    iget-object p0, p0, Lgj4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p0, Ls59;

    new-instance v0, Lc69;

    check-cast v1, Lc31;

    invoke-direct {v0, p0, v1, p1}, Lc69;-><init>(Ls59;Lc31;Z)V

    invoke-virtual {p0, v0}, Ls59;->f(Lll3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lhj4;

    iget-object p0, p0, Lhj4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lcom/warefly/checkscan/databinding/ItemRvLandingOrdBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemRvLandingOrdBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onOrdClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
