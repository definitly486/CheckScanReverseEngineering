.class public final Lyads/y11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lyads/a21;

.field public final synthetic b:Lb36;


# direct methods
.method public constructor <init>(Lyads/a21;Lb36;)V
    .locals 0

    iput-object p1, p0, Lyads/y11;->a:Lyads/a21;

    iput-object p2, p0, Lyads/y11;->b:Lb36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lyads/y11;->a:Lyads/a21;

    iget-object p1, p1, Lyads/a21;->b:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lyads/y11;->b:Lb36;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
