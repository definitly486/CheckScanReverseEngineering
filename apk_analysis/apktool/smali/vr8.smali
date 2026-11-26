.class public final synthetic Lvr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic d:Lq07;


# direct methods
.method public synthetic constructor <init>(Lq07;Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr8;->b:Lq07;

    iput-object p3, p0, Lvr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-object p2, p0, Lvr8;->d:Lq07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Lvr8;->b:Lq07;

    iget-object v1, p0, Lvr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-object p0, p0, Lvr8;->d:Lq07;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->e(Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Lq07;Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
