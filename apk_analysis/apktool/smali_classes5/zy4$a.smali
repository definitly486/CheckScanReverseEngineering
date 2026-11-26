.class public final Lzy4$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;

.field public final synthetic m:Lzy4;


# direct methods
.method public constructor <init>(Lzy4;Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lzy4$a;->m:Lzy4;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lzy4$a;->l:Lcom/warefly/checkscan/databinding/ItemFilterCategoryBinding;

    return-void
.end method
