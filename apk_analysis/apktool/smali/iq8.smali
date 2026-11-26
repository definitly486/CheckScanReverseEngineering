.class public final synthetic Liq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq8;->b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    iput p2, p0, Liq8;->c:I

    iput-object p3, p0, Liq8;->d:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Liq8;->e:Landroidx/compose/ui/layout/MeasureScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Liq8;->e:Landroidx/compose/ui/layout/MeasureScope;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Liq8;->b:Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;

    iget v2, p0, Liq8;->c:I

    iget-object p0, p0, Liq8;->d:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;->b(Landroidx/compose/foundation/text/input/internal/TextFieldCoreModifierNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
