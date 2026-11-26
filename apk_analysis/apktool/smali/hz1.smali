.class public final synthetic Lhz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

.field public final synthetic c:Z

.field public final synthetic d:Lbm3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhz1;->b:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iput-boolean p2, p0, Lhz1;->c:Z

    iput-object p3, p0, Lhz1;->d:Lbm3;

    iput p4, p0, Lhz1;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lhz1;->b:Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    iget-boolean v1, p0, Lhz1;->c:Z

    iget-object v2, p0, Lhz1;->d:Lbm3;

    iget v3, p0, Lhz1;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->a(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;ZLbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
