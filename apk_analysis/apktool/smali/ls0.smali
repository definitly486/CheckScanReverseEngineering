.class public final synthetic Lls0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/border/BorderLogic;

.field public final synthetic c:Landroidx/compose/ui/geometry/RoundRect;

.field public final synthetic d:Lo07;

.field public final synthetic e:Lr07;

.field public final synthetic f:Landroidx/compose/ui/graphics/Path;

.field public final synthetic g:Landroidx/compose/ui/graphics/Brush;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lls0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iput-object p2, p0, Lls0;->c:Landroidx/compose/ui/geometry/RoundRect;

    iput-object p3, p0, Lls0;->d:Lo07;

    iput-object p4, p0, Lls0;->e:Lr07;

    iput-object p5, p0, Lls0;->f:Landroidx/compose/ui/graphics/Path;

    iput-object p6, p0, Lls0;->g:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lls0;->g:Landroidx/compose/ui/graphics/Brush;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Lls0;->b:Landroidx/compose/foundation/border/BorderLogic;

    iget-object v1, p0, Lls0;->c:Landroidx/compose/ui/geometry/RoundRect;

    iget-object v2, p0, Lls0;->d:Lo07;

    iget-object v3, p0, Lls0;->e:Lr07;

    iget-object v4, p0, Lls0;->f:Landroidx/compose/ui/graphics/Path;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/border/BorderLogic;->a(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
