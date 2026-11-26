.class public final Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Node"
.end annotation


# instance fields
.field private handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Landroidx/compose/ui/spatial/RelativeLayoutBounds;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->requestOnAfterLayoutCallback$lambda$0(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Landroidx/compose/ui/spatial/RelativeLayoutBounds;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final requestOnAfterLayoutCallback$lambda$0(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Landroidx/compose/ui/spatial/RelativeLayoutBounds;)Lj59;
    .locals 1

    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$getLock$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)Lxp1;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lj59;->a:Lj59;

    invoke-interface {p0, v0}, Lxp1;->f(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$setLock$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Lxp1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public onAttach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-static {v0, p0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$setAttachedNode$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$getLock$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)Lxp1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->requestOnAfterLayoutCallback()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-static {v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$getAttachedNode$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;)Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->access$setAttachedNode$p(Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final requestOnAfterLayoutCallback()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->this$0:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    new-instance v6, Lnz;

    const/4 v1, 0x0

    invoke-direct {v6, v1, p0, v0}, Lnz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;->registerOnLayoutRectChanged(Landroidx/compose/ui/node/DelegatableNode;JJLnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method
