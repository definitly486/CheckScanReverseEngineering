.class public Lcom/my/target/f2;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/f2$c;,
        Lcom/my/target/f2$d;,
        Lcom/my/target/f2$e;
    }
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public final l:Lwt9;

.field public final m:Landroidx/recyclerview/widget/LinearSnapHelper;

.field public n:Ljava/util/ArrayList;

.field public o:Lcom/my/target/g2$a;

.field public final p:Lcom/my/target/f2$a;

.field public q:Z

.field public r:Z

.field public final s:Lcom/my/target/f2$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/my/target/f2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/my/target/f2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/my/target/f2$a;

    invoke-direct {p2, p0}, Lcom/my/target/f2$a;-><init>(Lcom/my/target/f2;)V

    iput-object p2, p0, Lcom/my/target/f2;->p:Lcom/my/target/f2$a;

    new-instance p2, Lcom/my/target/f2$b;

    invoke-direct {p2, p0}, Lcom/my/target/f2$b;-><init>(Lcom/my/target/f2;)V

    iput-object p2, p0, Lcom/my/target/f2;->s:Lcom/my/target/f2$b;

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance p2, Lwt9;

    invoke-direct {p2, p1}, Lwt9;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/f2;->l:Lwt9;

    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/my/target/f2;->m:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private getVisibleCards()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfo9;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-gt v1, v2, :cond_2

    iget-object v3, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfo9;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private setCardLayoutManager(Lwt9;)V
    .locals 2

    new-instance v0, Lm3;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lm3;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p1, Lwt9;->g:Lm3;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lcom/my/target/f2$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/my/target/f2$d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/my/target/f2;->s:Lcom/my/target/f2$b;

    iput-object p1, v0, Lcom/my/target/f2$d;->w:Lcom/my/target/f2$b;

    iget-object p1, p0, Lcom/my/target/f2;->p:Lcom/my/target/f2$a;

    iput-object p1, v0, Lcom/my/target/f2$d;->x:Lcom/my/target/f2$a;

    iget-object p1, p0, Lcom/my/target/f2;->l:Lwt9;

    invoke-direct {p0, p1}, Lcom/my/target/f2;->setCardLayoutManager(Lwt9;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getCardLayoutManager()Lwt9;
    .locals 0

    iget-object p0, p0, Lcom/my/target/f2;->l:Lwt9;

    return-object p0
.end method

.method public getSnapHelper()Landroidx/recyclerview/widget/LinearSnapHelper;
    .locals 0

    iget-object p0, p0, Lcom/my/target/f2;->m:Landroidx/recyclerview/widget/LinearSnapHelper;

    return-object p0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/f2;->o:Lcom/my/target/g2$a;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/my/target/f2;->getVisibleCards()Ljava/util/List;

    move-result-object p0

    check-cast v0, Lcom/my/target/i$a;

    iget-object v0, v0, Lcom/my/target/i$a;->a:Lcom/my/target/i;

    iget-object v1, v0, Lcom/my/target/i;->a:Lcom/my/target/g2;

    iget-object v0, v0, Lcom/my/target/i;->b:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ll3a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfo9;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lao9;->a:Ln4a;

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/my/target/m1;->c(Ln4a;Ljava/lang/String;)V

    :cond_1
    const-string v3, "show"

    invoke-static {v2, v3}, Lcom/my/target/m1;->c(Ln4a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    if-le p4, p5, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/f2;->r:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    return-void
.end method

.method public final onScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/my/target/f2;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/my/target/f2;->j()V

    :cond_1
    return-void
.end method

.method public setCarouselListener(Lcom/my/target/g2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/f2;->o:Lcom/my/target/g2$a;

    return-void
.end method

.method public setSideSlidesMargins(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object p0

    iput p1, p0, Lwt9;->f:I

    return-void
.end method
