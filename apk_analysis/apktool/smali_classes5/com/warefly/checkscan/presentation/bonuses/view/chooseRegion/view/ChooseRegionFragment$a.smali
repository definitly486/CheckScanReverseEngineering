.class public final Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/text/Editable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;->f:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;->g:Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/text/Editable;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;->f:Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/presenter/ChooseRegionPresenter;->onQueryChanged(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/view/chooseRegion/view/ChooseRegionFragment$a;->g:Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;->btnRemoveSearch:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
