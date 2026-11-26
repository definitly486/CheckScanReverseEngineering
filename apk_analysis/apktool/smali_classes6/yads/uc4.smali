.class public final Lyads/uc4;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/rc4;


# direct methods
.method public constructor <init>(Lyads/b05;Ljava/util/List;Lyads/d9;Ly22;)V
    .locals 1

    new-instance v0, Lyads/rc4;

    invoke-direct {v0, p1, p3, p4}, Lyads/rc4;-><init>(Lyads/b05;Lyads/d9;Ly22;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lyads/uc4;->a:Ljava/util/List;

    iput-object v0, p0, Lyads/uc4;->b:Lyads/rc4;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lyads/uc4;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lyads/pc4;

    iget-object p0, p0, Lyads/uc4;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rd3;

    iget-object p1, p1, Lyads/pc4;->a:Lyads/sf6;

    invoke-virtual {p1, p0}, Lyads/sf6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p0, p0, Lyads/uc4;->b:Lyads/rc4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lyads/qc4;

    invoke-direct {p1}, Lyads/qc4;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lyads/be3;->l:I

    iget-object p1, p0, Lyads/rc4;->a:Lyads/b05;

    iget-object v0, p0, Lyads/rc4;->b:Lyads/d9;

    iget-object p0, p0, Lyads/rc4;->c:Ly22;

    new-instance v1, Lyads/be3;

    invoke-direct {v1, p2, p1, v0, p0}, Lyads/be3;-><init>(Landroid/widget/ImageView;Lyads/b05;Lyads/d9;Ly22;)V

    new-instance p0, Lyads/pc4;

    invoke-direct {p0, p2, v1}, Lyads/pc4;-><init>(Landroid/widget/ImageView;Lyads/be3;)V

    return-object p0
.end method
