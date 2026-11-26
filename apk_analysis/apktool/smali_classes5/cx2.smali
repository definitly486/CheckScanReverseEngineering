.class public final Lcx2;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/high16 p0, -0x41800000    # -0.25f

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    return-void
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    const/high16 p0, -0x41800000    # -0.25f

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    return-void
.end method
