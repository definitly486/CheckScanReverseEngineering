.class public final Lcom/my/target/f2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/f2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/f2;


# direct methods
.method public constructor <init>(Lcom/my/target/f2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/f2$b;->a:Lcom/my/target/f2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lpfa;)V
    .locals 6

    iget-object p0, p0, Lcom/my/target/f2$b;->a:Lcom/my/target/f2;

    iget-boolean v0, p0, Lcom/my/target/f2;->q:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-gt v2, v3, :cond_2

    if-gt v3, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/my/target/f2;->r:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/my/target/f2;->o:Lcom/my/target/g2$a;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lfo9;

    check-cast p1, Lcom/my/target/i$a;

    iget-object p0, p1, Lcom/my/target/i$a;->a:Lcom/my/target/i;

    iget-object v0, p0, Lcom/my/target/i;->c:Lcom/my/target/m2$a;

    if-eqz v0, :cond_4

    invoke-static {p2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v4

    iget-object p0, p0, Lcom/my/target/i;->a:Lcom/my/target/g2;

    invoke-interface {p0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/my/target/f2;->m:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/LinearSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_4
    :goto_1
    return-void
.end method
