.class public final Lyads/v35;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:Lyads/u35;

.field public final b:Lyads/p35;

.field public final c:Lyads/p35;

.field public final d:[I

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lyads/u35;Lyads/p35;Lyads/p35;[I)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lyads/v35;->a:Lyads/u35;

    iput-object p2, p0, Lyads/v35;->b:Lyads/p35;

    iput-object p3, p0, Lyads/v35;->c:Lyads/p35;

    iput-object p4, p0, Lyads/v35;->d:[I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lyads/v35;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/v35;->f:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lyads/v35;->f:Landroid/graphics/RectF;

    iget-object p0, p0, Lyads/v35;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    iget-object p0, p0, Lyads/v35;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lyads/v35;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lyads/v35;->a:Lyads/u35;

    iget-object v2, p0, Lyads/v35;->b:Lyads/p35;

    iget-object v3, p0, Lyads/v35;->c:Lyads/p35;

    iget-object v4, p0, Lyads/v35;->d:[I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lyads/q35;->a(Lyads/u35;Lyads/p35;Lyads/p35;[III)Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p0, p0, Lyads/v35;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lyads/v35;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
