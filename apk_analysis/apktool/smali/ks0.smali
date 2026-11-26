.class public final synthetic Lks0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/border/BorderLogic;

.field public final synthetic c:Landroidx/compose/ui/geometry/RoundRect;

.field public final synthetic d:Landroidx/compose/ui/graphics/Brush;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iput-object p2, p0, Lks0;->c:Landroidx/compose/ui/geometry/RoundRect;

    iput-object p3, p0, Lks0;->d:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lks0;->d:Landroidx/compose/ui/graphics/Brush;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v1, p0, Lks0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iget-object p0, p0, Lks0;->c:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/border/BorderLogic;->e(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
