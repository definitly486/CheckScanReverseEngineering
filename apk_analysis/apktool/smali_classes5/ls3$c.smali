.class public final Lls3$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lls3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;)V
    .locals 1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lls3$c;->l:Lcom/warefly/checkscan/databinding/ItemFilterGroupedBinding;

    return-void
.end method
