.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showPoll(Lz96;)V
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

.field public final synthetic g:Lz96;

.field public final synthetic h:Lcom/warefly/checkscan/databinding/ItemPollBinding;


# direct methods
.method public constructor <init>(Lz96;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V
    .locals 0

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->g:Lz96;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->h:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->g:Lz96;

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onPollClosed(Lz96;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;->h:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemPollBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
