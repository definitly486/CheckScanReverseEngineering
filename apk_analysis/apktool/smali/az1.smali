.class public final synthetic Laz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroidx/compose/foundation/contextmenu/ContextMenuColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz1;->b:Lnl3;

    iput-object p2, p0, Laz1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Laz1;->b:Lnl3;

    iget-object p0, p0, Laz1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->e(Lnl3;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
