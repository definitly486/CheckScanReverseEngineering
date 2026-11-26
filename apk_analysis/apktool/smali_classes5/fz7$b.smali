.class public final Lfz7$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfz7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemRvSimpleFilterCategoryBinding;

.field public final synthetic m:Lfz7;


# direct methods
.method public constructor <init>(Lfz7;Lcom/warefly/checkscan/databinding/ItemRvSimpleFilterCategoryBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/databinding/ItemRvSimpleFilterCategoryBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lfz7$b;->m:Lfz7;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemRvSimpleFilterCategoryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfz7$b;->l:Lcom/warefly/checkscan/databinding/ItemRvSimpleFilterCategoryBinding;

    return-void
.end method
