.class public final synthetic Landroidx/compose/foundation/layout/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/VisibilityNode;

.field public final synthetic c:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/VisibilityNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/g0;->b:Landroidx/compose/foundation/layout/VisibilityNode;

    iput-object p2, p0, Landroidx/compose/foundation/layout/g0;->c:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/g0;->c:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p0, p0, Landroidx/compose/foundation/layout/g0;->b:Landroidx/compose/foundation/layout/VisibilityNode;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/layout/VisibilityNode;->a(Landroidx/compose/foundation/layout/VisibilityNode;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
