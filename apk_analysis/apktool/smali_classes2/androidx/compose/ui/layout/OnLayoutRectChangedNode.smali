.class final Landroidx/compose/ui/layout/OnLayoutRectChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# instance fields
.field private callback:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private debounceMillis:J

.field private handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

.field private throttleMillis:J


# direct methods
.method public constructor <init>(JJLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->throttleMillis:J

    iput-wide p3, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->debounceMillis:J

    iput-object p5, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->callback:Lnl3;

    return-void
.end method


# virtual methods
.method public final disposeAndRegister()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    iget-wide v2, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->throttleMillis:J

    iget-wide v4, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->debounceMillis:J

    iget-object v6, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->callback:Lnl3;

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;->registerOnLayoutRectChanged(Landroidx/compose/ui/node/DelegatableNode;JJLnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final getCallback()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->callback:Lnl3;

    return-object p0
.end method

.method public final getDebounceMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->debounceMillis:J

    return-wide v0
.end method

.method public final getHandle()Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-object p0
.end method

.method public final getThrottleMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->throttleMillis:J

    return-wide v0
.end method

.method public onAttach()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->disposeAndRegister()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final setCallback(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->callback:Lnl3;

    return-void
.end method

.method public final setDebounceMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->debounceMillis:J

    return-void
.end method

.method public final setHandle(Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final setThrottleMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->throttleMillis:J

    return-void
.end method
