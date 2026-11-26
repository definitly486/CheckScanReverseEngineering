.class public final Lcom/my/target/ca;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/z0;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic i:I


# instance fields
.field public final b:Lcom/my/target/ij;

.field public final c:Lcom/my/target/d2;

.field public final d:Lcom/my/target/z1;

.field public e:Z

.field public f:Le6a;

.field public final g:Lcom/my/target/c1;

.field public h:Lyu9;


# direct methods
.method public constructor <init>(Lcom/my/target/z1;Lcom/my/target/d2$b;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ca;->e:Z

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/ca;->f:Le6a;

    new-instance v0, Lcom/my/target/c1;

    new-instance v1, Lb9;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lb9;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v0, p0, Lcom/my/target/ca;->g:Lcom/my/target/c1;

    iput-object p1, p0, Lcom/my/target/ca;->d:Lcom/my/target/z1;

    new-instance p1, Lyu9;

    invoke-direct {p1, p3}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/ca;->h:Lyu9;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Lcom/my/target/ij;

    invoke-direct {p1, p3}, Lcom/my/target/ij;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {p1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/my/target/d2;

    invoke-direct {p1, p3, p2}, Lcom/my/target/d2;-><init>(Landroid/content/Context;Lcom/my/target/d2$b;)V

    iput-object p1, p0, Lcom/my/target/ca;->c:Lcom/my/target/d2;

    iget-object p2, p0, Lcom/my/target/ca;->h:Lyu9;

    sget p3, Lyu9;->r:I

    iget-object p2, p2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/my/target/ca;->e()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setClickAreaActual(Lt2a;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/ca;->g:Lcom/my/target/c1;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getAdsIcon()Lcom/my/target/zh;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/my/target/ca;->c:Lcom/my/target/d2;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2}, Lcom/my/target/d2;->getMoreButton()Lcom/my/target/e6;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p1, Lt2a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v3, p1, Lt2a;->a:Z

    if-eqz v3, :cond_2

    move-object v3, p0

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v3, p1, Lt2a;->j:Z

    if-eqz v3, :cond_3

    move-object v3, p0

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v0

    iget-boolean v3, p1, Lt2a;->c:Z

    if-eqz v3, :cond_4

    move-object v3, p0

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->h:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v2

    :goto_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setClickAreaLegacy(Lt2a;)V
    .locals 4

    iget-boolean v0, p1, Lt2a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-boolean v0, p1, Lt2a;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {v0}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-boolean v3, p1, Lt2a;->a:Z

    if-eqz v3, :cond_2

    move-object v3, p0

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-boolean v3, p1, Lt2a;->j:Z

    if-eqz v3, :cond_3

    move-object v3, p0

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v2

    iget-boolean v3, p1, Lt2a;->c:Z

    if-eqz v3, :cond_4

    move-object v3, p0

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p1, p1, Lt2a;->h:Z

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v1

    :goto_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {p0}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgressFrame()Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {p0}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgressFrame()Landroid/widget/RelativeLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyu9;

    invoke-direct {v1, v0}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/ca;->h:Lyu9;

    sget v0, Lyu9;->r:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {v0}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ca;->h:Lyu9;

    sget v3, Lyu9;->q:I

    iget-object v2, v2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ca;->h:Lyu9;

    iget-object v2, v2, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/my/target/ca;->h:Lyu9;

    sget v1, Lyu9;->s:I

    iget-object p0, p0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {p0}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    return-object p0
.end method

.method public getTopBar()Landroid/widget/LinearLayout;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/my/target/ca;->e:Z

    iget-object v1, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/my/target/ca;->d:Lcom/my/target/z1;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {v3}, Lcom/my/target/z1;->e()V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {v3}, Lcom/my/target/z1;->d()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-virtual {v3}, Lcom/my/target/z1;->p()V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    const/16 p1, 0x80

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x4

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_6

    const/16 p1, 0x200

    goto :goto_0

    :cond_6
    const/16 p1, 0x800

    :goto_0
    iget-object p0, p0, Lcom/my/target/ca;->f:Le6a;

    new-instance v0, Lup9;

    invoke-direct {v0, p1, p0}, Lup9;-><init>(ILe6a;)V

    invoke-virtual {v3, v2, v0}, Lcom/my/target/z1;->c(ILpfa;)V

    return-void

    :cond_7
    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    if-ne p1, p0, :cond_8

    invoke-virtual {v3}, Lcom/my/target/z1;->e()V

    return-void

    :cond_8
    invoke-virtual {v1}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object p0

    if-ne p1, p0, :cond_9

    invoke-virtual {v3}, Lcom/my/target/z1;->d()V

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object p0

    if-ne p1, p0, :cond_a

    invoke-virtual {v3}, Lcom/my/target/z1;->p()V

    return-void

    :cond_a
    new-instance p0, Lgia;

    invoke-direct {p0}, Lgia;-><init>()V

    invoke-virtual {v3, v2, p0}, Lcom/my/target/z1;->c(ILpfa;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/my/target/ca;->e()V

    return-void
.end method

.method public setBanner(Lxda;)V
    .locals 6

    iget-object v0, p1, Lao9;->q:Lh14;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {v0}, Lcom/my/target/ij;->getLogoIcon()Lcom/my/target/zh;

    move-result-object v1

    iget-object v2, p1, Lao9;->q:Lh14;

    iget-object v2, v2, Lxha;->d:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lr2a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lao9;->m:Ljava/lang/String;

    const-string v2, "store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lao9;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lao9;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lcom/my/target/ij;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/my/target/ij;->getAgeRestrictionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p1, Lao9;->g:Ljava/lang/String;

    iget-object v3, p1, Lao9;->n:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_2

    invoke-static {v5, v3}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-static {v5, v2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lxda;->b0:Lh14;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/my/target/ij;->getAdsIcon()Lcom/my/target/zh;

    move-result-object v0

    iget-object v1, p1, Lxda;->b0:Lh14;

    iget-object v1, v1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    iget-object v0, p1, Lxda;->Y:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/ca;->c:Lcom/my/target/d2;

    invoke-virtual {v1, v0}, Lcom/my/target/d2;->setData(Ljava/util/List;)V

    iget-object v0, p1, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    iget-object p1, p1, Lao9;->r:Lt2a;

    iput-boolean v0, p0, Lcom/my/target/ca;->e:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/my/target/ca;->setClickAreaActual(Lt2a;)V

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/my/target/ca;->setClickAreaLegacy(Lt2a;)V

    return-void
.end method

.method public setDoubleBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lv2a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setRemainingAllowCloseDelay(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ca;->b:Lcom/my/target/ij;

    invoke-virtual {p0}, Lcom/my/target/ij;->getButtonsView()Lcom/my/target/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgress()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
