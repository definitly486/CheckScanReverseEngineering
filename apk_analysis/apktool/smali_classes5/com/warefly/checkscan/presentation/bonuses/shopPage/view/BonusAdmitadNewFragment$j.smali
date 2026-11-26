.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->setOnlineShopInfo(Lqx5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

.field public final synthetic c:Lqx5;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;Lqx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;->b:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;->c:Lqx5;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;->b:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnFave:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1}, Lie9;->a(ILandroid/view/View;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$j;->c:Lqx5;

    iget-object p0, p0, Lqx5;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
