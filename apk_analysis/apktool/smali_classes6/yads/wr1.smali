.class public final Lyads/wr1;
.super Lyads/e71;
.source "SourceFile"


# instance fields
.field public final j:Lyads/tt;

.field public final k:Lyads/w41;

.field public final l:Landroid/util/SparseArray;

.field public final m:Lyads/qh2;

.field public final n:Lyads/et1;

.field public final o:Lyads/vr1;

.field public p:I

.field public q:Lyads/rr1;

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/tt;Lyads/w41;Landroid/util/SparseArray;Lyads/qh2;Lyads/n32;Lyads/et1;)V
    .locals 0

    invoke-direct {p0, p2, p6, p1}, Lyads/e71;-><init>(Lyads/tt;Lyads/n32;Ljava/util/List;)V

    iput-object p2, p0, Lyads/wr1;->j:Lyads/tt;

    iput-object p3, p0, Lyads/wr1;->k:Lyads/w41;

    iput-object p4, p0, Lyads/wr1;->l:Landroid/util/SparseArray;

    iput-object p5, p0, Lyads/wr1;->m:Lyads/qh2;

    iput-object p7, p0, Lyads/wr1;->n:Lyads/et1;

    new-instance p1, Lyads/vr1;

    invoke-direct {p1, p0}, Lyads/vr1;-><init>(Lyads/wr1;)V

    iput-object p1, p0, Lyads/wr1;->o:Lyads/vr1;

    sget-object p1, Lyads/rr1;->e:Lyads/rr1;

    iput-object p1, p0, Lyads/wr1;->q:Lyads/rr1;

    return-void
.end method

.method public static final a(Lyads/wr1;)Z
    .locals 0

    .line 17
    iget p0, p0, Lyads/wr1;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Lyads/wr1;)Z
    .locals 0

    .line 23
    iget p0, p0, Lyads/wr1;->p:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Lyads/wr1;)Lyads/rr1;
    .locals 0

    iget-object p0, p0, Lyads/wr1;->q:Lyads/rr1;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lyads/wr1;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    invoke-virtual {p0, p1}, Lyads/wr1;->d(I)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lyads/wr1;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/wr1;->s:I

    iget-boolean v0, p0, Lyads/wr1;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    invoke-virtual {p0, p1}, Lyads/wr1;->d(I)V

    return-void
.end method

.method public final d(I)V
    .locals 3

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method

.method public final e(I)I
    .locals 2

    invoke-virtual {p0}, Lyads/e71;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean p0, p0, Lyads/wr1;->r:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    :cond_1
    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    rem-int/2addr p1, v1

    return p1

    :cond_2
    return v0
.end method

.method public final g()Lyads/vr1;
    .locals 0

    iget-object p0, p0, Lyads/wr1;->o:Lyads/vr1;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {p0}, Lv;->size()I

    move-result p0

    return p0
.end method

.method public final h()Lyads/gt1;
    .locals 8

    new-instance v2, Lyads/ws1;

    iget-object v0, p0, Lyads/wr1;->j:Lyads/tt;

    iget-object v0, v0, Lyads/tt;->a:Lyads/vq0;

    iget-object v0, v0, Lyads/vq0;->l:Lyads/pq0;

    new-instance v1, Log8;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3}, Log8;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v0, v1}, Lyads/ws1;-><init>(Landroid/content/Context;Lll3;)V

    new-instance v0, Lyads/gt1;

    iget-object v1, p0, Lyads/wr1;->j:Lyads/tt;

    iget-object v3, p0, Lyads/wr1;->k:Lyads/w41;

    iget-object v4, p0, Lyads/wr1;->m:Lyads/qh2;

    new-instance v5, Lo31;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lo31;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lp31;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lp31;-><init>(Ljava/lang/Object;I)V

    invoke-direct/range {v0 .. v6}, Lyads/gt1;-><init>(Lyads/tt;Lyads/ws1;Lyads/w41;Lyads/qh2;Lll3;Lll3;)V

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lyads/gt1;

    invoke-virtual {p0, p2}, Lyads/wr1;->e(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Lyads/e71;->onBindViewHolder(Lyads/u71;I)V

    iget-object v0, p0, Lyads/wr1;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget p0, p0, Lyads/wr1;->p:I

    if-nez p0, :cond_0

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Lyads/u71;I)V
    .locals 1

    .line 39
    check-cast p1, Lyads/gt1;

    .line 40
    invoke-virtual {p0, p2}, Lyads/wr1;->e(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Lyads/e71;->onBindViewHolder(Lyads/u71;I)V

    .line 41
    iget-object v0, p0, Lyads/wr1;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 42
    iget p0, p0, Lyads/wr1;->p:I

    if-nez p0, :cond_0

    .line 43
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 44
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0}, Lyads/wr1;->h()Lyads/gt1;

    move-result-object p0

    return-object p0
.end method
