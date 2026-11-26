.class public final Lcom/warefly/checkscan/presentation/success/presenter/SuccessPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/success/view/SuccessView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/success/presenter/SuccessPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public final onActionButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/success/presenter/SuccessPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public final onBackCLick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/success/presenter/SuccessPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method
