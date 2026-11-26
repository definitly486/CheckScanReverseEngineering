.class public final Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt;->contextMenuGestures$lambda$0(Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final contextMenuGestures(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuState;)Landroidx/compose/ui/Modifier;
    .locals 2

    .line 12
    new-instance v0, Lvy1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvy1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt;->contextMenuGestures(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final contextMenuGestures(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuKey;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuKey;

    new-instance v1, Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt$contextMenuGestures$2;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuGesturesKt$contextMenuGestures$2;-><init>(Lnl3;)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final contextMenuGestures$lambda$0(Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuState$Status$Open;-><init>(JLjh2;)V

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/contextmenu/ContextMenuState;->setStatus(Landroidx/compose/foundation/contextmenu/ContextMenuState$Status;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
