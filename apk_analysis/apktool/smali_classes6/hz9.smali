.class public final synthetic Lhz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lyads/ir;


# direct methods
.method public synthetic constructor <init>(Lyads/ir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhz9;->a:Lyads/ir;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lhz9;->a:Lyads/ir;

    invoke-virtual {p0, p1}, Lyads/ir;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
