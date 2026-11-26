.class public final Lcom/skyfishjy/library/RippleBackground$a;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skyfishjy/library/RippleBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/skyfishjy/library/RippleBackground;


# direct methods
.method public constructor <init>(Lcom/skyfishjy/library/RippleBackground;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/skyfishjy/library/RippleBackground$a;->b:Lcom/skyfishjy/library/RippleBackground;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/skyfishjy/library/RippleBackground$a;->b:Lcom/skyfishjy/library/RippleBackground;

    iget v1, p0, Lcom/skyfishjy/library/RippleBackground;->c:F

    sub-float v1, v0, v1

    iget-object p0, p0, Lcom/skyfishjy/library/RippleBackground;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
