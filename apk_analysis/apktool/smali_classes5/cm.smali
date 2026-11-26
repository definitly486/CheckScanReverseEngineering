.class public final Lcm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo07;

.field public final synthetic b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

.field public final synthetic c:Lo07;

.field public final synthetic d:Lo07;

.field public final synthetic e:Lo07;


# direct methods
.method public constructor <init>(Lo07;Lo07;Lo07;Lo07;Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    iput-object p1, p0, Lcm;->a:Lo07;

    iput-object p5, p0, Lcm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iput-object p2, p0, Lcm;->c:Lo07;

    iput-object p3, p0, Lcm;->d:Lo07;

    iput-object p4, p0, Lcm;->e:Lo07;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcm;->b:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iget v0, p1, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->g:F

    iget-object v1, p0, Lcm;->a:Lo07;

    iput v0, v1, Lo07;->b:F

    iget-object v0, p0, Lcm;->c:Lo07;

    iget v1, p1, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->f:F

    iput v1, v0, Lo07;->b:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget v2, p1, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->h:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcm;->d:Lo07;

    iput v0, v2, Lo07;->b:F

    iget p1, p1, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->i:F

    add-float/2addr v1, p1

    iget-object p0, p0, Lcm;->e:Lo07;

    iput v1, p0, Lo07;->b:F

    :cond_0
    return-void
.end method
