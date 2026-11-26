.class public final synthetic Lnr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/State;

.field public final synthetic c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic d:Landroidx/compose/foundation/contextmenu/ContextMenuState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnr8;->b:Landroidx/compose/runtime/State;

    iput-object p1, p0, Lnr8;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p2, p0, Lnr8;->d:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnr8;->d:Landroidx/compose/foundation/contextmenu/ContextMenuState;

    check-cast p1, Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iget-object v1, p0, Lnr8;->b:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lnr8;->c:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->g(Landroidx/compose/runtime/State;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/contextmenu/ContextMenuState;Landroidx/compose/foundation/contextmenu/ContextMenuScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
