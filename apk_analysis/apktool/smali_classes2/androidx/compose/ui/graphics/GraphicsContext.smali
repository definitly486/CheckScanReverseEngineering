.class public interface abstract Landroidx/compose/ui/graphics/GraphicsContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.end method

.method public getShadowContext()Landroidx/compose/ui/graphics/shadow/ShadowContext;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/GraphicsContext$shadowContext$1;

    invoke-direct {p0}, Landroidx/compose/ui/graphics/GraphicsContext$shadowContext$1;-><init>()V

    return-object p0
.end method

.method public abstract releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method
