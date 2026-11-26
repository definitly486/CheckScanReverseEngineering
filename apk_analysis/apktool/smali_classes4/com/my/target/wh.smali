.class public Lcom/my/target/wh;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:Lcom/my/target/y1;

.field public final c:Lcom/my/target/o2;

.field public final d:Ll3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/p$a;Lcom/my/target/d2$b;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lko9;

    invoke-direct {v0, p1}, Lko9;-><init>(Landroid/content/Context;)V

    new-instance v1, Ll3;

    const/4 v2, 0x6

    invoke-direct {v1, p3, v2}, Ll3;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/my/target/wh;->d:Ll3;

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lko9;->v:I

    iget-object v0, v0, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p3, Lcom/my/target/y1;

    invoke-direct {p3, p1}, Lcom/my/target/y1;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lko9;->m:I

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    sget v7, Lko9;->g:I

    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {p3}, Lcom/my/target/y1;->getActionButton()Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, Lcom/my/target/wh;->b:Lcom/my/target/y1;

    new-instance v2, Lyu9;

    invoke-direct {v2, p1}, Lyu9;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/my/target/y1;->getActionButton()Landroid/widget/Button;

    move-result-object v6

    sget v7, Lyu9;->B:I

    iget-object v2, v2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    sget v8, Lyu9;->A:I

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    sget v9, Lyu9;->C:I

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v7, v8, v9, v5}, Lyu9;->b(IIIF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Lcom/my/target/y1;->getActionButton()Landroid/widget/Button;

    move-result-object v5

    sget v6, Lyu9;->y:I

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Lcom/my/target/o2;

    invoke-direct {p3, p2}, Lcom/my/target/o2;-><init>(Lcom/my/target/p$a;)V

    iput-object p3, p0, Lcom/my/target/wh;->c:Lcom/my/target/o2;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {p1, p3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    sget p1, Lko9;->i:I

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sget p3, Lko9;->n:I

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    new-instance v6, Li4a;

    invoke-direct {v6, p1, v5}, Li4a;-><init>(II)V

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    invoke-virtual {p1, v2, v2, v2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdCardView()Lcom/my/target/y1;
    .locals 0

    iget-object p0, p0, Lcom/my/target/wh;->b:Lcom/my/target/y1;

    return-object p0
.end method
