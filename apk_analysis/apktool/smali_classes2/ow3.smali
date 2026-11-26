.class public final synthetic Low3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/foundation/shape/CornerBasedShape;


# direct methods
.method public synthetic constructor <init>(FFLandroidx/compose/foundation/shape/CornerBasedShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Low3;->b:F

    iput p2, p0, Low3;->c:F

    iput-object p3, p0, Low3;->d:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/layout/MeasureScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    move-object v5, p3

    check-cast v5, Landroidx/compose/ui/unit/Constraints;

    iget v0, p0, Low3;->b:F

    iget v1, p0, Low3;->c:F

    iget-object v2, p0, Low3;->d:Landroidx/compose/foundation/shape/CornerBasedShape;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/HorizontalCenterOpticallyKt;->b(FFLandroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
