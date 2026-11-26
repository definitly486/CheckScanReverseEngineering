.class public final synthetic Landroidx/compose/foundation/text/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

.field public final synthetic c:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/j;->b:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    iput-object p2, p0, Landroidx/compose/foundation/text/j;->c:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Landroidx/compose/foundation/text/j;->d:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/text/j;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/text/j;->e:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/foundation/text/j;->b:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    iget-object v2, p0, Landroidx/compose/foundation/text/j;->c:Landroidx/compose/ui/layout/MeasureScope;

    iget-object p0, p0, Landroidx/compose/foundation/text/j;->d:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->a(Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
