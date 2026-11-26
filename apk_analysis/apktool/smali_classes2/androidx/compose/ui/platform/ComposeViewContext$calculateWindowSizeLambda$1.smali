.class final Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/ComposeViewContext;-><init>(Landroidx/compose/ui/platform/ComposeViewContext;Landroid/view/View;Landroidx/compose/runtime/CompositionContext;Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/lifecycle/ViewModelStoreOwner;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Landroidx/compose/ui/platform/DerivedSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/ComposeViewContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/platform/DerivedSize;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/ComposeViewContext;->getTestWindowSize-YbymL2g$ui()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/ComposeViewContext;->getView$ui()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidWindowInfo_androidKt;->calculateWindowSize(Landroid/view/View;)Landroidx/compose/ui/platform/DerivedSize;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/compose/ui/platform/DerivedSize;->Companion:Landroidx/compose/ui/platform/DerivedSize$Companion;

    iget-object v1, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/ComposeViewContext;->getTestWindowSize-YbymL2g$ui()J

    move-result-wide v1

    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/ComposeViewContext;->getView$ui()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/ui/platform/DerivedSize$Companion;->fromPxSize-viCIZxY(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->invoke()Landroidx/compose/ui/platform/DerivedSize;

    move-result-object p0

    return-object p0
.end method
