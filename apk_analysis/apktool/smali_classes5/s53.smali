.class public final synthetic Ls53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls53;->b:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->l:[Lze4;

    iget-object p0, p0, Ls53;->b:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onBackPressed()V

    return-void
.end method
