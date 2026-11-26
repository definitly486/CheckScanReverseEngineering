.class public final synthetic Landroidx/compose/foundation/text/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

.field public final synthetic c:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/r;->b:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    iput-object p2, p0, Landroidx/compose/foundation/text/r;->c:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/foundation/text/r;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/text/r;->d:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/foundation/text/r;->b:Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    iget-object p0, p0, Landroidx/compose/foundation/text/r;->c:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;->a(Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
