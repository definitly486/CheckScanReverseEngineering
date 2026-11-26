.class public final Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$a;

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
.field public presenter:Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LoadingLayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;->j:Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    const-string v4, "REASON_KEY"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v1, p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    if-nez v1, :cond_1

    move-object p0, v3

    :cond_1
    check-cast p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    :goto_0
    check-cast p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    if-eqz p0, :cond_2

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    return-object v0

    :cond_2
    const-string p0, "Reason can not be null in ProductsFlowFragment"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3
.end method
