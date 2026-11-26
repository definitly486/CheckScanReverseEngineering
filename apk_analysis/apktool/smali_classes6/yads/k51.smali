.class public final Lyads/k51;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public b:F

.field public c:I

.field public d:F

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/NinePatch;

.field public h:F

.field public i:F

.field public final synthetic j:Lyads/l51;


# direct methods
.method public constructor <init>(Lyads/l51;)V
    .locals 1

    iput-object p1, p0, Lyads/k51;->j:Lyads/l51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_shadow_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lyads/k51;->a:F

    iput p1, p0, Lyads/k51;->b:F

    const/high16 p1, -0x1000000

    iput p1, p0, Lyads/k51;->c:I

    const p1, 0x3e0f5c29    # 0.14f

    iput p1, p0, Lyads/k51;->d:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyads/k51;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lyads/k51;->f:Landroid/graphics/Rect;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lyads/k51;->i:F

    return-void
.end method


# virtual methods
.method public final a([F)V
    .locals 5

    iget-object v0, p0, Lyads/k51;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lyads/k51;->j:Lyads/l51;

    iget-object v1, v1, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lyads/k51;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lyads/k51;->j:Lyads/l51;

    iget-object v2, v2, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lyads/k51;->b:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lyads/k51;->e:Landroid/graphics/Paint;

    iget v1, p0, Lyads/k51;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lyads/k51;->e:Landroid/graphics/Paint;

    iget v1, p0, Lyads/k51;->d:F

    iget-object v2, p0, Lyads/k51;->j:Lyads/l51;

    iget-object v2, v2, Lyads/l51;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v0, Lyads/xj5;->a:Landroid/graphics/Paint;

    iget v0, p0, Lyads/k51;->b:F

    iget-object v1, p0, Lyads/k51;->j:Lyads/l51;

    iget-object v1, v1, Lyads/l51;->a:Lyads/vq0;

    iget-object v1, v1, Lyads/vq0;->n:Lyads/nq0;

    iget-object v1, v1, Lyads/nq0;->n:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/fu;

    invoke-static {p1, v0, v1}, Lyads/xj5;->a([FFLyads/fu;)Landroid/graphics/NinePatch;

    move-result-object p1

    iput-object p1, p0, Lyads/k51;->g:Landroid/graphics/NinePatch;

    return-void
.end method
