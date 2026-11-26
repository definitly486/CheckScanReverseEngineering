.class public final synthetic Lr87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/RectRulers;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr87;->b:Landroidx/compose/ui/layout/RectRulers;

    iput p2, p0, Lr87;->c:I

    iput p3, p0, Lr87;->d:I

    iput-object p4, p0, Lr87;->e:Landroidx/compose/ui/layout/Placeable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr87;->e:Landroidx/compose/ui/layout/Placeable;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, p0, Lr87;->b:Landroidx/compose/ui/layout/RectRulers;

    iget v2, p0, Lr87;->c:I

    iget p0, p0, Lr87;->d:I

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->f(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
