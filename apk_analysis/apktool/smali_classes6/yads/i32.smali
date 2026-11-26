.class public final Lyads/i32;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/k32;


# direct methods
.method public constructor <init>(Lyads/k32;)V
    .locals 0

    iput-object p1, p0, Lyads/i32;->a:Lyads/k32;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lyads/i32;->a:Lyads/k32;

    iget-object p0, p0, Lyads/k32;->p:Lll3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
