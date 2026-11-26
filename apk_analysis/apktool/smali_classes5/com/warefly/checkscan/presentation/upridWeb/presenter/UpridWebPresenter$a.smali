.class public final Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;->f:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;->f:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->access$getPresenterScope(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;Ljava/lang/String;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
