.class public final synthetic Lhs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/ui/graphics/drawscope/DrawStyle;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhs0;->b:Landroidx/compose/ui/graphics/Brush;

    iput-wide p2, p0, Lhs0;->c:J

    iput-wide p4, p0, Lhs0;->d:J

    iput-object p6, p0, Lhs0;->e:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lhs0;->e:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v0, p0, Lhs0;->b:Landroidx/compose/ui/graphics/Brush;

    iget-wide v1, p0, Lhs0;->c:J

    iget-wide v3, p0, Lhs0;->d:J

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/graphics/Brush;JJLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
