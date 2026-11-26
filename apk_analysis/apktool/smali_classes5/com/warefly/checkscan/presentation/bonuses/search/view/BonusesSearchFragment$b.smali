.class public final Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;->a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment$b;->a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onTextChanged(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
