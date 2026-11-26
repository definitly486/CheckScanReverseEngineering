.class public final synthetic Lyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

.field public final synthetic b:Lo07;

.field public final synthetic c:Lo07;

.field public final synthetic d:Lo07;

.field public final synthetic e:Lo07;


# direct methods
.method public synthetic constructor <init>(Lo07;Lo07;Lo07;Lo07;Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyl;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iput-object p1, p0, Lyl;->b:Lo07;

    iput-object p2, p0, Lyl;->c:Lo07;

    iput-object p3, p0, Lyl;->d:Lo07;

    iput-object p4, p0, Lyl;->e:Lo07;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    sget v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->C:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lyl;->b:Lo07;

    iget v0, v0, Lo07;->b:F

    iget-object v1, p0, Lyl;->c:Lo07;

    iget v1, v1, Lo07;->b:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lyl;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iput v2, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->g:F

    iget-object v1, p0, Lyl;->d:Lo07;

    iget v1, v1, Lo07;->b:F

    iget-object p0, p0, Lyl;->e:Lo07;

    iget p0, p0, Lo07;->b:F

    invoke-static {p0, v1, p1, v1}, Li8;->b(FFFF)F

    move-result p0

    iput p0, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->f:F

    const/high16 p0, -0x3dcc0000    # -45.0f

    mul-float/2addr p0, p1

    iput p0, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->k:F

    const p0, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p0, v1, p0

    iput p0, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->j:F

    const/high16 p0, 0x437f0000    # 255.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    iput p0, v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->m:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
