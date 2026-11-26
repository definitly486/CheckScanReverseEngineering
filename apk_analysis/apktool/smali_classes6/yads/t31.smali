.class public final Lyads/t31;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/bo4;

.field public final synthetic b:Lyads/u31;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/bo4;Lyads/u31;)V
    .locals 0

    iput-object p2, p0, Lyads/t31;->a:Lyads/bo4;

    iput-object p3, p0, Lyads/t31;->b:Lyads/u31;

    invoke-direct {p0, p1}, Lyads/yh1;-><init>(Lyads/vq0;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/uw;)V
    .locals 2

    iget-object v0, p0, Lyads/t31;->a:Lyads/bo4;

    iget-object p0, p0, Lyads/t31;->b:Lyads/u31;

    iget-object v1, p0, Lyads/u31;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lyads/bo4;->a:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v1, p0, Lyads/u31;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lyads/bo4;->b:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v1, p0, Lyads/u31;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lyads/bo4;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p0, Lyads/u31;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, v0, Lyads/bo4;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p0, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lyads/bo4;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
