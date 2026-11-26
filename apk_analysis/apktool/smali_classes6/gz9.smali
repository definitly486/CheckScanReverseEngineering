.class public final synthetic Lgz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lyads/ir;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lyads/ir;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz9;->a:Lyads/ir;

    iput p2, p0, Lgz9;->b:I

    iput p3, p0, Lgz9;->c:I

    iput p4, p0, Lgz9;->d:I

    iput p5, p0, Lgz9;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v3, p0, Lgz9;->d:I

    iget v4, p0, Lgz9;->e:I

    iget-object v0, p0, Lgz9;->a:Lyads/ir;

    iget v1, p0, Lgz9;->b:I

    iget v2, p0, Lgz9;->c:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lyads/ir;->a(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
