.class public final Lyads/v0;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Lnl3;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnl3;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/wh0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyads/v0;->a:Lnl3;

    sget p1, Lcom/yandex/mobile/ads/R$id;->item_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/v0;->b:Landroid/widget/TextView;

    return-void
.end method

.method public static final a(Lyads/v0;Lyads/nh0;Landroid/view/View;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lyads/v0;->a:Lnl3;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lyads/mh0;->b:Lyads/mh0;

    .line 24
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/nh0;)V
    .locals 2

    iget-object v0, p0, Lyads/v0;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Enable Test mode"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/v0;->b:Landroid/widget/TextView;

    new-instance v1, Lvea;

    invoke-direct {v1, p0, p1}, Lvea;-><init>(Lyads/v0;Lyads/nh0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lyads/uh0;)V
    .locals 0

    .line 21
    check-cast p1, Lyads/nh0;

    invoke-virtual {p0, p1}, Lyads/v0;->a(Lyads/nh0;)V

    return-void
.end method
