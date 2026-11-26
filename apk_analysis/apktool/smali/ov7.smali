.class public final synthetic Lov7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lrv7;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;


# direct methods
.method public synthetic constructor <init>(Lrv7;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lov7;->b:Lrv7;

    iput-object p2, p0, Lov7;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lov7;->b:Lrv7;

    iget-object p1, p1, Lrv7;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Lov7;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewHotBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Ljv7;->onPreviewShopClick(I)V

    return-void
.end method
