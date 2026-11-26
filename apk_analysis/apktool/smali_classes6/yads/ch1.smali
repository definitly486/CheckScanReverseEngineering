.class public final Lyads/ch1;
.super Lyads/u71;
.source "SourceFile"


# instance fields
.field public final f:Lyads/ug1;

.field public final g:Lyads/w41;


# direct methods
.method public constructor <init>(Lyads/tt;Lyads/ug1;Lyads/w41;Lyads/qh2;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lyads/u71;-><init>(Lyads/pi2;Lyads/tt;Lyads/w41;Lyads/qh2;)V

    iput-object p2, p0, Lyads/ch1;->f:Lyads/ug1;

    iput-object p3, p0, Lyads/ch1;->g:Lyads/w41;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 21
    sget p0, Lyads/cr3;->a:I

    .line 22
    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    .line 23
    sget p0, Lyads/rv3;->a:I

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/ch1;->f:Lyads/ug1;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/ug1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lyads/tt;Lyads/br0;ILyads/n32;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lyads/u71;->a(Lyads/tt;Lyads/br0;ILyads/n32;)V

    iget-object p1, p0, Lyads/ch1;->f:Lyads/ug1;

    sget p2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_gallery_item_index:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lyads/ch1;->g:Lyads/w41;

    invoke-virtual {p0}, Lyads/w41;->a()V

    return-void
.end method
