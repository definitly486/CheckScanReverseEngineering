.class public final Led5$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemMonthStatisticsBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemMonthStatisticsBinding;)V
    .locals 1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemMonthStatisticsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Led5$a;->l:Lcom/warefly/checkscan/databinding/ItemMonthStatisticsBinding;

    return-void
.end method
