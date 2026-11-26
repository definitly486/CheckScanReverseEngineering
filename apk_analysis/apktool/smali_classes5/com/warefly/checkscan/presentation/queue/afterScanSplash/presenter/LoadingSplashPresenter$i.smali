.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/util/List<",
        "+",
        "Lhv6;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i;->b:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i$a;

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i$a;-><init>(Lid3;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i;->b:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;

    invoke-virtual {p0, v0, p2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
