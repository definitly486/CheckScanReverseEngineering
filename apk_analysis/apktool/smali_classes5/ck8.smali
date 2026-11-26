.class public final Lck8;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/RecyclerViewStatisticsExpensesTagBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/RecyclerViewStatisticsExpensesTagBinding;)V
    .locals 1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/RecyclerViewStatisticsExpensesTagBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lck8;->l:Lcom/warefly/checkscan/databinding/RecyclerViewStatisticsExpensesTagBinding;

    return-void
.end method
