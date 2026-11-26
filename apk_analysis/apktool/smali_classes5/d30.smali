.class public final Ld30;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lf30;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;


# direct methods
.method public constructor <init>(Lf30;Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;)V
    .locals 0

    iput-object p1, p0, Ld30;->f:Lf30;

    iput-object p2, p0, Ld30;->g:Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld30;->f:Lf30;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf30;->h:Z

    iget-object p0, p0, Ld30;->g:Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->tvExpand:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1404a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvBalanceGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
