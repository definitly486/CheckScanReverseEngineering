.class public final synthetic Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lzl;->a:I

    iput-object p1, p0, Lzl;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lzl;->a:I

    iget-object p0, p0, Lzl;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, La87;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, La87;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    sget v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->C:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    mul-float v3, p1, p1

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->u:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->w:F

    mul-float/2addr v5, v2

    add-float/2addr v5, v4

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->y:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->g:F

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->v:F

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->x:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    iget v1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->z:F

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    iput v3, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->f:F

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr p1, v1

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->j:F

    const/high16 p1, 0x42340000    # 45.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->k:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
