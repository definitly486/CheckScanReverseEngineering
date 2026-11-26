.class public final synthetic Lsr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic d:Landroidx/compose/foundation/text/Handle;

.field public final synthetic e:Lq07;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lq07;Lq07;Landroidx/compose/foundation/text/Handle;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr8;->b:Lq07;

    iput-object p4, p0, Lsr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-object p3, p0, Lsr8;->d:Landroidx/compose/foundation/text/Handle;

    iput-object p2, p0, Lsr8;->e:Lq07;

    iput-boolean p5, p0, Lsr8;->f:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v6, p2

    check-cast v6, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Lsr8;->b:Lq07;

    iget-object v1, p0, Lsr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-object v2, p0, Lsr8;->d:Landroidx/compose/foundation/text/Handle;

    iget-object v3, p0, Lsr8;->e:Lq07;

    iget-boolean v4, p0, Lsr8;->f:Z

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->g(Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text/Handle;Lq07;ZLandroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
