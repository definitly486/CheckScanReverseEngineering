.class public final Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;
.super Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment<",
        "Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field public catalogCardOperationsPresenter:Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

.field public final j:Landroidx/navigation/NavArgsLazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ll61;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;->j:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final o()Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;->catalogCardOperationsPresenter:Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "catalogCardOperationsPresenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll61;

    iget-wide v1, v1, Ll61;->a:J

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Lkz5;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkz5;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/operations/base/CatalogCardOperationsPresenter;-><init>(JLkz5;)V

    return-object v0
.end method
