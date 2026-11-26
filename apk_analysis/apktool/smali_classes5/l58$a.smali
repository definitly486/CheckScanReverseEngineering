.class public final Ll58$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll58;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/core/ui/databinding/ItemSpecialHorizontalBinding;

.field public final synthetic m:Ll58;


# direct methods
.method public constructor <init>(Ll58;Lcom/warefly/checkscan/core/ui/databinding/ItemSpecialHorizontalBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/core/ui/databinding/ItemSpecialHorizontalBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ll58$a;->m:Ll58;

    invoke-virtual {p2}, Lcom/warefly/checkscan/core/ui/databinding/ItemSpecialHorizontalBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Ll58$a;->l:Lcom/warefly/checkscan/core/ui/databinding/ItemSpecialHorizontalBinding;

    return-void
.end method
