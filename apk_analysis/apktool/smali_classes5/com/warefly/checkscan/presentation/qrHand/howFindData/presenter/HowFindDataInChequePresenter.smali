.class public final Lcom/warefly/checkscan/presentation/qrHand/howFindData/presenter/HowFindDataInChequePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/qrHand/howFindData/view/HowFindDataInChequeView;",
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

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/howFindData/presenter/HowFindDataInChequePresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/howFindData/presenter/HowFindDataInChequePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method
