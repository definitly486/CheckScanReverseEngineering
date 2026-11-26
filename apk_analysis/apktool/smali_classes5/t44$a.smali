.class public final Lt44$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemSpecialInfiniteBinding;

.field public final synthetic m:Lt44;


# direct methods
.method public constructor <init>(Lt44;Lcom/warefly/checkscan/databinding/ItemSpecialInfiniteBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/databinding/ItemSpecialInfiniteBinding;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lt44$a;->m:Lt44;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/ItemSpecialInfiniteBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lt44$a;->l:Lcom/warefly/checkscan/databinding/ItemSpecialInfiniteBinding;

    return-void
.end method
