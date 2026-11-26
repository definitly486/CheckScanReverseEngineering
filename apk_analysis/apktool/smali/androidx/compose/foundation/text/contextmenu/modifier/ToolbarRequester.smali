.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private toolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

.field private toolbarHandlerState:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;->Uninitialized:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    iput-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerState:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    return-void
.end method


# virtual methods
.method public final getToolbarHandlerNode$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    return-object p0
.end method

.method public final getToolbarHandlerState$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerState:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    return-object p0
.end method

.method public abstract hide()V
.end method

.method public final requireInitialized$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerState:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    sget-object v1, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;->Uninitialized:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "ToolbarRequester is not initialized."

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    return-object p0
.end method

.method public final setToolbarHandlerNode$foundation(Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerNode:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    return-void
.end method

.method public final setToolbarHandlerState$foundation(Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->toolbarHandlerState:Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarHandlerState;

    return-void
.end method

.method public abstract show()V
.end method
