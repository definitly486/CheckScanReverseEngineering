.class public final Lls3$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lls3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final l:Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;)V
    .locals 1

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lls3$b;->l:Lcom/warefly/checkscan/databinding/ItemFilterBasicBinding;

    return-void
.end method
