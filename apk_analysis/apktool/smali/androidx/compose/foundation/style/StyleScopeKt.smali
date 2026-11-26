.class public final Landroidx/compose/foundation/style/StyleScopeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final apply(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/compose/foundation/style/Style;->applyStyle(Landroidx/compose/foundation/style/StyleScope;)V

    return-void
.end method

.method public static final fillHeight(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->height(F)V

    return-void
.end method

.method public static final fillSize(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->width(F)V

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->height(F)V

    return-void
.end method

.method public static final fillWidth(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->width(F)V

    return-void
.end method
