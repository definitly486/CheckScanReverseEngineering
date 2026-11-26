.class public final synthetic Ld4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lyads/nr;


# direct methods
.method public synthetic constructor <init>(Lyads/nr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4a;->a:Lyads/nr;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Ld4a;->a:Lyads/nr;

    invoke-virtual {p0, p1}, Lyads/nr;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
