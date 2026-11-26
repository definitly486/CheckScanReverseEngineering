.class public final synthetic Lbz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

.field public final synthetic d:Lnl3;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz1;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lbz1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iput-object p3, p0, Lbz1;->d:Lnl3;

    iput p4, p0, Lbz1;->e:I

    iput p5, p0, Lbz1;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lbz1;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lbz1;->c:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iget-object v2, p0, Lbz1;->d:Lnl3;

    iget v3, p0, Lbz1;->e:I

    iget v4, p0, Lbz1;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
