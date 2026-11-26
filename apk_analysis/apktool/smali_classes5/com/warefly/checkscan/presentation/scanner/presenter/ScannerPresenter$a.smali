.class public final Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->loadCheques(Ljava/util/List;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$a;->f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkd$g$d$a;

    const-string v1, "CQ_ADDED"

    invoke-direct {v0, v1}, Lkd$g$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter$a;->f:Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;->access$getPresenterScope(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;)Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/scanner/presenter/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/scanner/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
