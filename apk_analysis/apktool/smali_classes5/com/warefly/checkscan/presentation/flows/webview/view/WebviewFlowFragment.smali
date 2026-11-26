.class public final Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowView;"
    }
.end annotation


# static fields
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
.field public final j:Landroidx/navigation/NavArgsLazy;

.field public presenter:Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lih9;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment$a;-><init>(Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/webview/view/WebviewFlowFragment;->j:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lih9;

    iget-object p0, p0, Lih9;->a:Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/webview/presenter/WebviewFlowPresenter;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Webview;)V

    return-object v0
.end method
