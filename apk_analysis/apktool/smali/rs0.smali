.class public final synthetic Lrs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/geometry/Rect;

.field public final synthetic c:Lr07;

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/ui/graphics/ColorFilter;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/geometry/Rect;Lr07;JLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrs0;->b:Landroidx/compose/ui/geometry/Rect;

    iput-object p2, p0, Lrs0;->c:Lr07;

    iput-wide p3, p0, Lrs0;->d:J

    iput-object p5, p0, Lrs0;->e:Landroidx/compose/ui/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lrs0;->e:Landroidx/compose/ui/graphics/ColorFilter;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v0, p0, Lrs0;->b:Landroidx/compose/ui/geometry/Rect;

    iget-object v1, p0, Lrs0;->c:Lr07;

    iget-wide v2, p0, Lrs0;->d:J

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/BorderModifierNode;->c(Landroidx/compose/ui/geometry/Rect;Lr07;JLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
