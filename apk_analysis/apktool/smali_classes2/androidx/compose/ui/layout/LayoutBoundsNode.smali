.class public final Landroidx/compose/ui/layout/LayoutBoundsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

.field private holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

.field private lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

.field private final rectChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutBoundsHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    new-instance p1, Landroidx/compose/ui/layout/LayoutBoundsNode$rectChanged$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/layout/LayoutBoundsNode$rectChanged$1;-><init>(Landroidx/compose/ui/layout/LayoutBoundsNode;)V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->rectChanged:Lnl3;

    return-void
.end method


# virtual methods
.method public final forceUpdate()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/layout/LayoutBoundsHolder;->setBounds$ui(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V

    return-void
.end method

.method public final getHandle()Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-object p0
.end method

.method public final getHolder()Landroidx/compose/ui/layout/LayoutBoundsHolder;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    return-object p0
.end method

.method public final getLastBounds()Landroidx/compose/ui/spatial/RelativeLayoutBounds;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-object p0
.end method

.method public final getRectChanged()Lnl3;
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

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->rectChanged:Lnl3;

    return-object p0
.end method

.method public onAttach()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    const-wide/16 v4, 0x0

    iget-object v6, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->rectChanged:Lnl3;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/OnLayoutRectChangedModifierKt;->registerOnLayoutRectChanged(Landroidx/compose/ui/node/DelegatableNode;JJLnl3;)Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    move-result-object p0

    iput-object p0, v1, Landroidx/compose/ui/layout/LayoutBoundsNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;->unregister()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/LayoutBoundsHolder;->setBounds$ui(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V

    return-void
.end method

.method public final setHandle(Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->handle:Landroidx/compose/ui/node/DelegatableNode$RegistrationHandle;

    return-void
.end method

.method public final setHolder(Landroidx/compose/ui/layout/LayoutBoundsHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->holder:Landroidx/compose/ui/layout/LayoutBoundsHolder;

    return-void
.end method

.method public final setLastBounds(Landroidx/compose/ui/spatial/RelativeLayoutBounds;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutBoundsNode;->lastBounds:Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    return-void
.end method
