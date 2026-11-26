.class public final Lcom/my/target/f2$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final i:Landroid/content/Context;

.field public final t:Ljava/util/ArrayList;

.field public final u:Ljava/util/ArrayList;

.field public final v:Z

.field public w:Lcom/my/target/f2$b;

.field public x:Lcom/my/target/f2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/my/target/f2$d;->t:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/my/target/f2$d;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/my/target/f2$d;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 p2, 0x3

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/my/target/f2$d;->v:Z

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/my/target/f2$d;->t:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/my/target/f2$d;->t:Ljava/util/ArrayList;

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
    .locals 8

    check-cast p1, Lcom/my/target/f2$e;

    iget-object p1, p1, Lcom/my/target/f2$e;->l:Lcom/my/target/v1;

    iget-object v0, p0, Lcom/my/target/f2$d;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfo9;

    iget-object v0, p0, Lcom/my/target/f2$d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lao9;->a:Ln4a;

    const-string v1, "render"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    :cond_0
    iget-object v0, p2, Lao9;->p:Lh14;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/my/target/v1;->getSmartImageView()Lcom/my/target/zh;

    move-result-object v1

    iget v3, v0, Lxha;->b:I

    iget v4, v0, Lxha;->c:I

    invoke-virtual {v1, v3, v4}, Lcom/my/target/zh;->setPlaceholderDimensions(II)V

    invoke-static {v0, v1}, Ls0a;->c(Lh14;Lcom/my/target/zh;)V

    :cond_1
    invoke-virtual {p1}, Lcom/my/target/v1;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lao9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/my/target/v1;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lao9;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/my/target/v1;->getCtaButtonView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Lao9;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lao9;->Q:Lpp9;

    iget-boolean v0, v0, Lpp9;->c:Z

    invoke-virtual {p1, v0}, Lcom/my/target/v1;->setIsHitMapEnabled(Z)V

    invoke-virtual {p1}, Lcom/my/target/v1;->getDomainTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Lao9;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/my/target/v1;->getRatingView()Lcom/my/target/common/views/StarsRatingView;

    move-result-object v3

    iget-object v4, p2, Lao9;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v2, v7

    goto :goto_1

    :sswitch_0
    const-string v2, "webform"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v5, "store"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v2, "web"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v6

    :cond_4
    :goto_1
    const/16 v4, 0x8

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lao9;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v0}, Lcom/my/target/common/views/StarsRatingView;->setRating(F)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/my/target/f2$d;->w:Lcom/my/target/f2$b;

    iget-object p2, p2, Lao9;->r:Lt2a;

    iget-object p0, p0, Lcom/my/target/f2$d;->x:Lcom/my/target/f2$a;

    invoke-virtual {p1, v0, p2, p0}, Lcom/my/target/v1;->a(Lcom/my/target/f2$b;Lt2a;Lcom/my/target/f2$a;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1cb54 -> :sswitch_2
        0x68af8e1 -> :sswitch_1
        0x48f40e18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    new-instance p1, Lcom/my/target/v1;

    iget-boolean p2, p0, Lcom/my/target/f2$d;->v:Z

    iget-object p0, p0, Lcom/my/target/f2$d;->i:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/my/target/v1;-><init>(Landroid/content/Context;Z)V

    new-instance p0, Lcom/my/target/f2$e;

    invoke-direct {p0, p1}, Lcom/my/target/f2$e;-><init>(Lcom/my/target/v1;)V

    return-object p0
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/my/target/f2$e;

    iget-object p0, p1, Lcom/my/target/f2$e;->l:Lcom/my/target/v1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/my/target/v1;->a(Lcom/my/target/f2$b;Lt2a;Lcom/my/target/f2$a;)V

    return-void
.end method
