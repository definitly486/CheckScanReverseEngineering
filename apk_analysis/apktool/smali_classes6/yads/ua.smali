.class public final Lyads/ua;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Lnl3;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnl3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/wh0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyads/ua;->a:Lnl3;

    sget p1, Lcom/yandex/mobile/ads/R$id;->item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/ua;->b:Landroid/widget/TextView;

    sget p1, Lcom/yandex/mobile/ads/R$id;->item_ad_unit_format:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/ua;->c:Landroid/widget/TextView;

    sget p1, Lcom/yandex/mobile/ads/R$id;->item_ad_unit_id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/ua;->d:Landroid/widget/TextView;

    return-void
.end method

.method public static final a(Lyads/ua;Lyads/kh0;Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lyads/ua;->a:Lnl3;

    .line 34
    iget-object p1, p1, Lyads/kh0;->c:Ljava/lang/String;

    .line 35
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/kh0;)V
    .locals 2

    iget-object v0, p0, Lyads/ua;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lyads/kh0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/ua;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lyads/kh0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/ua;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lyads/kh0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lzda;

    invoke-direct {v1, p0, p1}, Lzda;-><init>(Lyads/ua;Lyads/kh0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lyads/uh0;)V
    .locals 0

    .line 32
    check-cast p1, Lyads/kh0;

    invoke-virtual {p0, p1}, Lyads/ua;->a(Lyads/kh0;)V

    return-void
.end method
