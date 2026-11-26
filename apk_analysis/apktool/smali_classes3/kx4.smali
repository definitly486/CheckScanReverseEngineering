.class public final synthetic Lkx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lox4;


# direct methods
.method public synthetic constructor <init>(Lox4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkx4;->a:Lox4;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lkx4;->a:Lox4;

    iget-object p1, p0, Lox4;->N:Ldt;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lah4;->a:Ldt;

    :goto_0
    sget-object v0, Ldt;->ENABLED:Ldt;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void

    :cond_1
    iget-object p1, p0, Lox4;->q:Lku1;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0}, Lay4;->h()F

    move-result p0

    invoke-virtual {p1, p0}, Lku1;->s(F)V

    :cond_2
    return-void
.end method
