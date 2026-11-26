.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->skip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$h;->f:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$h;->f:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->o()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->onSkip()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
