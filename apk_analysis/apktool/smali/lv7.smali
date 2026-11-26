.class public final synthetic Llv7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lnv7;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewBinding;


# direct methods
.method public synthetic constructor <init>(Lnv7;Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv7;->b:Lnv7;

    iput-object p2, p0, Llv7;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Llv7;->b:Lnv7;

    iget-object p1, p1, Lnv7;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Llv7;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsFavoritePreviewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Ljv7;->onPreviewFavoriteClick(I)V

    return-void
.end method
