.class public final Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;"
    }
.end annotation


# static fields
.field public static final j:Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$a;

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
.field public presenter:Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment;->k:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment;->j:Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final providePresenter()Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;
    .locals 4

    new-instance v0, Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "REASON_FLOW_KEY"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v1, p0, Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    if-nez v1, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    :goto_0
    check-cast p0, Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Sections;->b:Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Sections;

    :cond_3
    invoke-direct {v0, p0}, Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;-><init>(Lcom/warefly/checkscan/support/presentation/flow/SupportReason;)V

    return-object v0
.end method
