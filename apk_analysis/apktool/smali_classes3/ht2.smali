.class public final Lht2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld0$a;


# instance fields
.field public final a:Lnd0;

.field public final b:Lnd0;

.field public final c:Ltn1;

.field public final d:Ltc3;

.field public final e:Ltc3;

.field public final f:Ltc3;

.field public final g:Ltc3;

.field public h:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lnd0;Lnd0;Lft2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lht2;->b:Lnd0;

    iput-object p2, p0, Lht2;->a:Lnd0;

    iget-object p1, p3, Lft2;->a:Lcl;

    invoke-virtual {p1}, Lcl;->a()Lld0;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ltn1;

    iput-object v0, p0, Lht2;->c:Ltn1;

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    iget-object p1, p3, Lft2;->b:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lht2;->d:Ltc3;

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    iget-object p1, p3, Lft2;->c:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lht2;->e:Ltc3;

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    iget-object p1, p3, Lft2;->d:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lht2;->f:Ltc3;

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    iget-object p1, p3, Lft2;->e:Ldl;

    invoke-virtual {p1}, Ldl;->p()Ltc3;

    move-result-object p1

    iput-object p1, p0, Lht2;->g:Ltc3;

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;I)Let2;
    .locals 6

    iget-object v0, p0, Lht2;->e:Ltc3;

    invoke-virtual {v0}, Ltc3;->m()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    iget-object v1, p0, Lht2;->f:Ltc3;

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v1, p0, Lht2;->g:Ltc3;

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lht2;->c:Ltn1;

    invoke-virtual {v3}, Lld0;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lht2;->d:Ltc3;

    invoke-virtual {v4}, Lld0;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    int-to-float p2, p2

    mul-float/2addr v4, p2

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p2, v4, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    new-instance v3, Let2;

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v1, v3, Let2;->a:F

    iput v0, v3, Let2;->b:F

    iput v2, v3, Let2;->c:F

    iput p2, v3, Let2;->d:I

    const/4 p2, 0x0

    iput-object p2, v3, Let2;->e:[F

    invoke-virtual {v3, p1}, Let2;->c(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lht2;->h:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lht2;->h:Landroid/graphics/Matrix;

    :cond_0
    iget-object p1, p0, Lht2;->a:Lnd0;

    iget-object p1, p1, Lnd0;->w:Lo19;

    invoke-virtual {p1}, Lo19;->e()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lht2;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p0, p0, Lht2;->h:Landroid/graphics/Matrix;

    invoke-virtual {v3, p0}, Let2;->c(Landroid/graphics/Matrix;)V

    return-object v3
.end method

.method public final b(Lby4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby4<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lht2$a;

    invoke-direct {v0, p1}, Lht2$a;-><init>(Lby4;)V

    iget-object p0, p0, Lht2;->d:Ltc3;

    invoke-virtual {p0, v0}, Lld0;->k(Lby4;)V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lht2;->b:Lnd0;

    invoke-virtual {p0}, Lnd0;->e()V

    return-void
.end method
