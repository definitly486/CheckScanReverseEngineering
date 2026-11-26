.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/ui/SearchBar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

.field public final synthetic b:Lcom/warefly/checkscan/ui/SearchBar;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;Lcom/warefly/checkscan/ui/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;->b:Lcom/warefly/checkscan/ui/SearchBar;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment$a;->b:Lcom/warefly/checkscan/ui/SearchBar;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/SearchBar;->getQuerySequence()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->searchItem(Ljava/lang/String;)V

    return-void
.end method
