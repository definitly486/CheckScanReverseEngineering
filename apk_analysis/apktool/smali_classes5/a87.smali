.class public final La87;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La87$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/view/View;

.field public final c:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lll3;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La87;->a:Z

    iput-object p2, p0, La87;->b:Landroid/view/View;

    iput-object p3, p0, La87;->c:Lll3;

    iput-object p4, p0, La87;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, La87;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-boolean v1, p0, La87;->a:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x43340000    # 180.0f

    if-eqz v1, :cond_0

    add-float/2addr v5, v0

    new-array v1, v3, [F

    aput v0, v1, v2

    aput v5, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lz77;

    invoke-direct {v1, p0}, Lz77;-><init>(La87;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, La87$a;

    new-instance v2, La87$b;

    invoke-direct {v2, p0}, La87$b;-><init>(La87;)V

    invoke-direct {v1, v2}, La87$a;-><init>(Lll3;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    sub-float v1, v0, v5

    new-array v3, v3, [F

    aput v0, v3, v2

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lzl;

    invoke-direct {v1, p0, v4}, Lzl;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, La87$a;

    new-instance v2, La87$c;

    invoke-direct {v2, p0}, La87$c;-><init>(La87;)V

    invoke-direct {v1, v2}, La87$a;-><init>(Lll3;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
