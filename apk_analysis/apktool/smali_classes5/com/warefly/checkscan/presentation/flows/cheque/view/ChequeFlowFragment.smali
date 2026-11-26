.class public final Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$a;

.field public static final synthetic k:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public presenter:Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;->j:Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cheque/view/ChequeFlowFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;->openChequeById()V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "CHEQUE_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/cheque/presenter/ChequeFlowPresenter;-><init>(I)V

    return-object v0
.end method
