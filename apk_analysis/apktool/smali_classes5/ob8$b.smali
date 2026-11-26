.class public final Lob8$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;

.field public final synthetic m:Lob8;


# direct methods
.method public constructor <init>(Lob8;Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lob8$b;->m:Lob8;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lob8$b;->l:Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;

    return-void
.end method
