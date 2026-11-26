.class public final Lcom/my/target/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laea;
.implements Lcom/my/target/r2$a;


# instance fields
.field public final a:Lfo9;

.field public final b:Lmia;

.field public c:I


# direct methods
.method public constructor <init>(Lfo9;Lmia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/n2;->a:Lfo9;

    iput-object p2, p0, Lcom/my/target/n2;->b:Lmia;

    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/r2;I)V
    .locals 5

    iput p2, p0, Lcom/my/target/n2;->c:I

    iget-object p2, p0, Lcom/my/target/n2;->b:Lmia;

    iget-object p2, p2, Lmia;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/my/target/n2;->a:Lfo9;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lao9;->a:Ln4a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "render"

    invoke-static {v1, v4, v2, v3}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v0}, Lcom/my/target/r2;->setBanner(Lfo9;)V

    invoke-interface {p1, p0}, Lcom/my/target/r2;->setListener(Lcom/my/target/r2$a;)V

    return-void
.end method

.method public final b(Lcom/my/target/x1;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/my/target/r2;->setBanner(Lfo9;)V

    invoke-interface {p1, p0}, Lcom/my/target/r2;->setListener(Lcom/my/target/r2$a;)V

    return-void
.end method

.method public final c(ZILpfa;)V
    .locals 5

    iget v0, p0, Lcom/my/target/n2;->c:I

    iget-object v1, p0, Lcom/my/target/n2;->b:Lmia;

    iget-object v2, v1, Lmia;->a:Lcom/my/target/core/ui/views/promo/style2/cards/b;

    iget-object v3, v2, Lcom/my/target/core/ui/views/promo/style2/cards/b;->c:Lcom/my/target/core/ui/views/promo/style2/cards/CardsLayoutManagerS2;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    if-gt v0, v3, :cond_0

    if-eqz p1, :cond_1

    iget-object p1, v1, Lmia;->b:Lcom/my/target/c3;

    iget-object p0, p0, Lcom/my/target/n2;->a:Lfo9;

    invoke-virtual {p1, p0, p2, p3}, Lcom/my/target/c3;->a(Lao9;ILpfa;)V

    return-void

    :cond_0
    iget-object p0, v2, Lcom/my/target/core/ui/views/promo/style2/cards/b;->d:Lr0a;

    const/4 p1, -0x1

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0a;->createScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p0, p0, Lr0a;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
