.class public final synthetic Lon7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/SelectionManager;

.field public final synthetic c:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lon7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    iput-object p2, p0, Lon7;->c:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lon7;->c:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iget-object p0, p0, Lon7;->b:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->b(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
