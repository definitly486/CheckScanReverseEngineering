.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->showCouldntLoadProgram()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;->g:Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/presenter/PointsProgramPresenter;->onRefresh()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramFragment$g;->g:Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPointsProgramBinding;->viewLoadingFailed:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
