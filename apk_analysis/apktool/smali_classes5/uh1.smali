.class public final Luh1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lz96;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Lcom/warefly/checkscan/databinding/ItemPollBinding;

.field public final synthetic i:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

.field public final synthetic j:Lz96$a;


# direct methods
.method public constructor <init>(Lz96;Landroid/widget/TextView;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lz96$a;)V
    .locals 0

    iput-object p1, p0, Luh1;->f:Lz96;

    iput-object p2, p0, Luh1;->g:Landroid/widget/TextView;

    iput-object p3, p0, Luh1;->h:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iput-object p4, p0, Luh1;->i:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput-object p5, p0, Luh1;->j:Lz96$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    iget-object v0, p0, Luh1;->f:Lz96;

    iput-boolean p1, v0, Lz96;->e:Z

    iget-object p1, p0, Luh1;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Luh1;->h:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    iget-object v2, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->groupContent:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v1, v0, Lz96;->a:Ljava/lang/String;

    iget-object v2, p0, Luh1;->i:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    iget-object v4, v2, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->i:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv05;

    iget-object v5, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->tvCompletion:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Lv05;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->tvCompletion:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object v1

    iget-object p0, p0, Luh1;->j:Lz96$a;

    invoke-virtual {v1, p0, v0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onPollVariantComplete(Lz96$a;Lz96;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemPollBinding;->tvCompletion:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
