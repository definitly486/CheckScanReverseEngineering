.class public final synthetic Lef7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/camera/view/ScreenFlashView;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/ScreenFlashView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef7;->a:Landroidx/camera/view/ScreenFlashView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lef7;->a:Landroidx/camera/view/ScreenFlashView;

    invoke-static {p0, p1}, Landroidx/camera/view/ScreenFlashView;->a(Landroidx/camera/view/ScreenFlashView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
