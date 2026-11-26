.class public final Lyads/nx2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    const/4 v0, -0x1

    iput v0, p0, Lyads/nx2;->d:I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/4 v0, -0x1

    const/16 v1, 0x1c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    iput v3, p0, Lyads/nx2;->b:I

    iput v3, p0, Lyads/nx2;->c:I

    iget-object p1, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p0, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lyads/nx2;->b:I

    sub-int/2addr v0, v5

    iput v0, p0, Lyads/nx2;->c:I

    goto :goto_0

    :cond_1
    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lyads/nx2;->c:I

    sub-int/2addr v0, v5

    iput v0, p0, Lyads/nx2;->b:I

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p0, p0, Lyads/nx2;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setFallbackLineSpacing(Z)V

    :cond_2
    return-void
.end method
