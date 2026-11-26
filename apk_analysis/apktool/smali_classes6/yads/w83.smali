.class public final Lyads/w83;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lyads/wh0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lyads/w83;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a(Lyads/uh0;)V
    .locals 0

    check-cast p1, Lyads/ph0;

    iget-object p0, p0, Lyads/w83;->a:Landroid/widget/TextView;

    iget-object p1, p1, Lyads/ph0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
