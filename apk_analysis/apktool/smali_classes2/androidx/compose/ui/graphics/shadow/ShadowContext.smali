.class public interface abstract Landroidx/compose/ui/graphics/shadow/ShadowContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public clearCache()V
    .locals 0

    return-void
.end method

.method public createDropShadowPainter(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)Landroidx/compose/ui/graphics/shadow/DropShadowPainter;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    return-object p0
.end method

.method public createInnerShadowPainter(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    return-object p0
.end method
