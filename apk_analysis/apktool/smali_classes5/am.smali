.class public final Lam;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    iput-object p1, p0, Lam;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object p0, p0, Lam;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->j:F

    const/high16 p1, 0x42340000    # 45.0f

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->k:F

    const/16 p1, 0xff

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->m:I

    return-void
.end method
