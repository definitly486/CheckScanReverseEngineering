.class public final Ldm;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V
    .locals 0

    iput-object p1, p0, Ldm;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ldm;->a:Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    const/16 p1, 0xff

    iput p1, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->m:I

    return-void
.end method
