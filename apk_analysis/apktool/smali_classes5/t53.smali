.class public final Lt53;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V
    .locals 0

    iput-object p1, p0, Lt53;->a:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    iget-object p0, p0, Lt53;->a:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->k:Leu1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Leu1;->i:Lm8;

    invoke-virtual {p0, p1}, Lm8;->c(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->getSpanCount(I)I

    move-result p0

    return p0
.end method
