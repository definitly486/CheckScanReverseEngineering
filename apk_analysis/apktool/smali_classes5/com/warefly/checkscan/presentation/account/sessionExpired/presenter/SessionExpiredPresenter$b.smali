.class public final Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->onBtnGoClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lxu4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$b;->f:Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lxu4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$b;->f:Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v1, v2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    const/4 v0, 0x2

    new-array v1, v0, [Llk3;

    sget-object v2, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldf7;

    invoke-virtual {p0, p1}, Lo87;->f([Ldf7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
