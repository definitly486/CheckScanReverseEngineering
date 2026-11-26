.class public final Lcom/my/target/core/ui/views/nativeslider/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/ui/views/nativeslider/a$a;,
        Lcom/my/target/core/ui/views/nativeslider/a$b;
    }
.end annotation


# instance fields
.field public final i:Landroid/content/Context;

.field public final t:Ljava/util/ArrayList;

.field public u:Lcom/my/target/core/ui/views/nativeslider/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/my/target/core/ui/views/nativeslider/a;->i:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/my/target/core/ui/views/nativeslider/a;->t:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/my/target/core/ui/views/nativeslider/a$b;

    iget-object v0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->u:Lcom/my/target/core/ui/views/nativeslider/b$a;

    if-eqz v0, :cond_0

    sget v0, Lcom/my/target/core/ui/views/nativeslider/b;->p:I

    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3a;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, v0, Lao9;->p:Lh14;

    :cond_2
    if-eqz v2, :cond_4

    iget-object v0, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->l:Lcom/my/target/zh;

    iget v1, v2, Lxha;->b:I

    iget v3, v2, Lxha;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/my/target/zh;->setPlaceholderDimensions(II)V

    iget-object v0, v2, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->l:Lcom/my/target/zh;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    invoke-static {v2, v1}, Ls0a;->c(Lh14;Lcom/my/target/zh;)V

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->l:Lcom/my/target/zh;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "card_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->m:Landroid/widget/FrameLayout;

    new-instance p2, Ltm9;

    invoke-direct {p2, p0}, Ltm9;-><init>(Lcom/my/target/core/ui/views/nativeslider/a;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance p2, Lcom/my/target/core/ui/views/nativeslider/a$a;

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->i:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/my/target/core/ui/views/nativeslider/a$a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/my/target/zh;

    invoke-direct {v0, p0}, Lcom/my/target/zh;-><init>(Landroid/content/Context;)V

    const-string v1, "card_media_view"

    invoke-static {v0, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const p1, 0x44c5eaf8

    invoke-static {v1, p0, p1}, Ll3a;->h(Landroid/view/View;II)V

    :cond_0
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/my/target/core/ui/views/nativeslider/a$b;

    invoke-direct {p0, p2, v0, v1}, Lcom/my/target/core/ui/views/nativeslider/a$b;-><init>(Lcom/my/target/core/ui/views/nativeslider/a$a;Lcom/my/target/zh;Landroid/widget/FrameLayout;)V

    return-object p0
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    check-cast p1, Lcom/my/target/core/ui/views/nativeslider/a$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->l:Lcom/my/target/zh;

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->t:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3a;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/my/target/zh;->setImageData(Lh14;)V

    if-eqz p0, :cond_1

    iget-object p0, p0, Lao9;->p:Lh14;

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_3

    sget-object v0, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_2

    const-string p0, "ImageLoaderUtils: Method cancel called from worker thread"

    invoke-static {v2, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v0, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/my/target/core/ui/views/nativeslider/a$b;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
