.class public final synthetic Lns0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/border/BorderLogic;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/ui/graphics/Outline$Generic;

.field public final synthetic e:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic f:Lll3;

.field public final synthetic g:Landroidx/compose/ui/geometry/Rect;

.field public final synthetic h:J

.field public final synthetic i:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lns0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iput p2, p0, Lns0;->c:F

    iput-object p3, p0, Lns0;->d:Landroidx/compose/ui/graphics/Outline$Generic;

    iput-object p4, p0, Lns0;->e:Landroidx/compose/ui/graphics/Brush;

    iput-object p5, p0, Lns0;->f:Lll3;

    iput-object p6, p0, Lns0;->g:Landroidx/compose/ui/geometry/Rect;

    iput-wide p7, p0, Lns0;->h:J

    iput-object p9, p0, Lns0;->i:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v8, p0, Lns0;->i:Landroidx/compose/ui/graphics/Path;

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Lns0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iget v1, p0, Lns0;->c:F

    iget-object v2, p0, Lns0;->d:Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v3, p0, Lns0;->e:Landroidx/compose/ui/graphics/Brush;

    iget-object v4, p0, Lns0;->f:Lll3;

    iget-object v5, p0, Lns0;->g:Landroidx/compose/ui/geometry/Rect;

    iget-wide v6, p0, Lns0;->h:J

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/border/BorderLogic;->d(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
