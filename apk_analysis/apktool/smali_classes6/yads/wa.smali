.class public final Lyads/wa;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Lll3;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lll3;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/wh0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/wa;->a:Lll3;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/wa;->b:Landroid/widget/TextView;

    return-void
.end method

.method public static final a(Lyads/wa;Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lyads/wa;->a:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/wa;->b:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yandex/mobile/ads/R$string;->debug_panel_ad_units:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/wa;->b:Landroid/widget/TextView;

    new-instance v1, Lan9;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lan9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lyads/uh0;)V
    .locals 0

    .line 29
    check-cast p1, Lyads/lh0;

    invoke-virtual {p0}, Lyads/wa;->a()V

    return-void
.end method
