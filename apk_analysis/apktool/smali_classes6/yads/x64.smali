.class public final Lyads/x64;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tf0;

.field public final b:Lnl3;

.field public final c:Lnl3;

.field public d:Lyads/cy;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/tf0;Lnl3;Lnl3;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/wh0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/x64;->a:Lyads/tf0;

    iput-object p3, p0, Lyads/x64;->b:Lnl3;

    iput-object p4, p0, Lyads/x64;->c:Lnl3;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_mediation_adapter:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lyads/x64;->e:Landroid/widget/LinearLayout;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lyads/x64;->f:Landroid/widget/ImageView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lyads/x64;->g:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->navigation_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lyads/x64;->h:Landroid/widget/ImageView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_info_first:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_info_second:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lyads/x64;->j:Landroid/widget/TextView;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_warning_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lyads/x64;->k:Landroid/widget/ImageView;

    return-void
.end method

.method public static final a(Lyads/x64;Lyads/rh0;Landroid/view/View;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lyads/x64;->c:Lnl3;

    .line 217
    iget-object p1, p1, Lyads/rh0;->e:Ljava/lang/String;

    .line 218
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lyads/x64;Lyads/rh0;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/x64;->b:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/rh0;)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lyads/x64;->g:Landroid/widget/TextView;

    iget-object v2, p1, Lyads/rh0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lyads/rh0;->c:Lyads/rg0;

    iget-object v2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    iget-object v5, v1, Lyads/rg0;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    iget v5, v1, Lyads/rg0;->d:I

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v1, Lyads/rg0;->b:I

    invoke-static {v5, v6}, Lyads/wl;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lyads/x64;->i:Landroid/widget/TextView;

    iget-object v1, v1, Lyads/rg0;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p1, Lyads/rh0;->d:Lyads/af0;

    iget-object v2, p0, Lyads/x64;->j:Landroid/widget/TextView;

    iget-object v5, v1, Lyads/af0;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lyads/x64;->j:Landroid/widget/TextView;

    iget v5, v1, Lyads/af0;->c:I

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lyads/x64;->j:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v1, v1, Lyads/af0;->b:I

    invoke-static {v2, v1}, Lyads/wl;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lyads/x64;->e:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lyads/rh0;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lyads/rh0;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lyads/rh0;->e:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lyads/x64;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lyads/x64;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lmv0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lmv0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, p0, Lyads/x64;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lyads/x64;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lyads/x64;->d:Lyads/cy;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lyads/cy;->cancel()V

    :cond_7
    iget-object v0, p0, Lyads/x64;->a:Lyads/tf0;

    iget-object v1, p1, Lyads/rh0;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    iget-object v2, p0, Lyads/x64;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lyads/tf0;->a(Ljava/lang/String;Landroid/widget/ImageView;)Lyads/cy;

    move-result-object v0

    iput-object v0, p0, Lyads/x64;->d:Lyads/cy;

    iget-object v0, p1, Lyads/rh0;->g:Ljava/lang/String;

    iget-object v1, p0, Lyads/x64;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lyads/x64;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lfha;

    invoke-direct {v1, p0, p1}, Lfha;-><init>(Lyads/x64;Lyads/rh0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final bridge synthetic a(Lyads/uh0;)V
    .locals 0

    .line 215
    check-cast p1, Lyads/rh0;

    invoke-virtual {p0, p1}, Lyads/x64;->a(Lyads/rh0;)V

    return-void
.end method
