.class public final Lyads/jh0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ge0;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Lyads/an3;Landroidx/recyclerview/widget/LinearLayoutManager;Lyads/ge0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/jh0;->a:Lyads/ge0;

    sget v0, Lcom/yandex/mobile/ads/R$id;->toolbar_navigation_button:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget v1, Lcom/yandex/mobile/ads/R$id;->toolbar_title:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lyads/jh0;->b:Landroid/widget/TextView;

    sget v1, Lcom/yandex/mobile/ads/R$id;->loading_view:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lyads/jh0;->c:Landroid/widget/ProgressBar;

    sget p0, Lcom/yandex/mobile/ads/R$id;->recycler_view:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lyads/uf0;

    invoke-direct {v1}, Lyads/uf0;-><init>()V

    new-instance v2, Lqz9;

    invoke-direct {v2, p2}, Lqz9;-><init>(Lyads/an3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-static {p1}, Lyads/xk6;->a(Landroid/content/Context;)Lyads/sp0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lyads/sp0;->g:Lyads/sp0;

    :goto_0
    iget p1, p1, Lyads/sp0;->d:F

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final a(Lnl3;Landroid/view/View;)V
    .locals 0

    sget-object p1, Lyads/vg0;->a:Lyads/vg0;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
