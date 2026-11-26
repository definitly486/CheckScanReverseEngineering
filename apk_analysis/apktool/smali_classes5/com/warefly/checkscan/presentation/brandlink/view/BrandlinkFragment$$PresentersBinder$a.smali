.class public final Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    check-cast p2, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->presenter:Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->providePresenter()Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    move-result-object p0

    return-object p0
.end method
