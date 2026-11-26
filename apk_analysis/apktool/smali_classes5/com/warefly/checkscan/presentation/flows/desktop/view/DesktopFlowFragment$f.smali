.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->showFloatingButton(Led3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

.field public final synthetic g:Led3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;Led3;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;->g:Led3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;->f:Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment$f;->g:Led3;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFloatingClick(Led3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
