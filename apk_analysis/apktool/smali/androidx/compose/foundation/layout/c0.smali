.class public final synthetic Landroidx/compose/foundation/layout/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

.field public final synthetic c:Landroidx/compose/ui/layout/Measurable;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;Landroidx/compose/ui/layout/Measurable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/c0;->b:Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

    iput-object p2, p0, Landroidx/compose/foundation/layout/c0;->c:Landroidx/compose/ui/layout/Measurable;

    iput p3, p0, Landroidx/compose/foundation/layout/c0;->d:I

    iput p4, p0, Landroidx/compose/foundation/layout/c0;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/c0;->e:I

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Landroidx/compose/foundation/layout/c0;->b:Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;

    iget-object v2, p0, Landroidx/compose/foundation/layout/c0;->c:Landroidx/compose/ui/layout/Measurable;

    iget p0, p0, Landroidx/compose/foundation/layout/c0;->d:I

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;->c(Landroidx/compose/foundation/layout/RecalculateWindowInsetsModifierNode;Landroidx/compose/ui/layout/Measurable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
