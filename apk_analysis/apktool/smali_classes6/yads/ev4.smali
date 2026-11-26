.class public final Lyads/ev4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/f80;


# direct methods
.method public constructor <init>(Lyads/f80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ev4;->a:Lyads/f80;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_icon_placeholder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lyads/ev4;->a:Lyads/f80;

    iget-object v1, p0, Lyads/f80;->c:Lyads/i80;

    iget-object p0, p0, Lyads/f80;->b:Lyads/i80;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    sget p0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Lyads/sg6;

    invoke-direct {p1, p0}, Lyads/sg6;-><init>(Landroid/widget/TextView;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
