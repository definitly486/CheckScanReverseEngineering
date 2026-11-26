.class public final synthetic Lvi7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/ScrollNode;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/ScrollNode;ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi7;->b:Landroidx/compose/foundation/ScrollNode;

    iput p2, p0, Lvi7;->c:I

    iput-object p3, p0, Lvi7;->d:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lvi7;->d:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Lvi7;->b:Landroidx/compose/foundation/ScrollNode;

    iget p0, p0, Lvi7;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/ScrollNode;->a(Landroidx/compose/foundation/ScrollNode;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
