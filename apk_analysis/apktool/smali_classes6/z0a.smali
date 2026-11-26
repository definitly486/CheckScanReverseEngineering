.class public final synthetic Lz0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lyads/kn5;


# direct methods
.method public synthetic constructor <init>(Lyads/kn5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0a;->a:Lyads/kn5;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lz0a;->a:Lyads/kn5;

    invoke-static {p0, p1}, Lyads/kn5;->b(Lyads/kn5;Landroid/animation/ValueAnimator;)V

    return-void
.end method
