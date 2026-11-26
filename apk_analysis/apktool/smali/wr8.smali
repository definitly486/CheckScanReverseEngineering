.class public final synthetic Lwr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/text/Handle;

.field public final synthetic f:Lq07;


# direct methods
.method public synthetic constructor <init>(Lq07;Lq07;Landroidx/compose/foundation/text/Handle;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr8;->b:Lq07;

    iput-object p4, p0, Lwr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-boolean p5, p0, Lwr8;->d:Z

    iput-object p3, p0, Lwr8;->e:Landroidx/compose/foundation/text/Handle;

    iput-object p2, p0, Lwr8;->f:Lq07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lwr8;->f:Lq07;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    iget-object v0, p0, Lwr8;->b:Lq07;

    iget-object v1, p0, Lwr8;->c:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-boolean v2, p0, Lwr8;->d:Z

    iget-object v3, p0, Lwr8;->e:Landroidx/compose/foundation/text/Handle;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;->i(Lq07;Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLandroidx/compose/foundation/text/Handle;Lq07;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method
