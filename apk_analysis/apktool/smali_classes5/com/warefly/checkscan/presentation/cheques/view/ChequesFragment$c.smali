.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showBanner(Lxb0;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

.field public final synthetic g:Lxb0;

.field public final synthetic h:Lcom/warefly/checkscan/databinding/BannerLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lxb0;Lcom/warefly/checkscan/databinding/BannerLayoutBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->g:Lxb0;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->h:Lcom/warefly/checkscan/databinding/BannerLayoutBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->g:Lxb0;

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onInformerClosed(Lxb0;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;->h:Lcom/warefly/checkscan/databinding/BannerLayoutBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
