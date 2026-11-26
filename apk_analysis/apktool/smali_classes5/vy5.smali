.class public final Lvy5;
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
.field public final synthetic f:Lxy5;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;


# direct methods
.method public constructor <init>(Lxy5;Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;)V
    .locals 0

    iput-object p1, p0, Lvy5;->f:Lxy5;

    iput-object p2, p0, Lvy5;->g:Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lvy5;->f:Lxy5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lxy5;->i:Z

    iget-object p0, p0, Lvy5;->g:Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->tvExpand:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1404ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemGroupOperationBinding;->rvSuboperations:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
