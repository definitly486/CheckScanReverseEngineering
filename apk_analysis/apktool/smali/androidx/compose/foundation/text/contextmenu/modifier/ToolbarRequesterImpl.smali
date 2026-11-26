.class public final Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequesterImpl;
.super Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->getToolbarHandlerNode$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->hide()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/ToolbarRequester;->requireInitialized$foundation()Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->show()V

    :cond_0
    return-void
.end method
