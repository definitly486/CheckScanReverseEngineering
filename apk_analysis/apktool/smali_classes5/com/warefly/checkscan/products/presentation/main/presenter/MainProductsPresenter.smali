.class public final Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/products/presentation/main/view/MainProductsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final placeholderState:Lr86;


# direct methods
.method public constructor <init>(Lr86;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;->placeholderState:Lr86;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;->placeholderState:Lr86;

    iget-object v0, v0, Lr86;->a:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter$a;-><init>(Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method
