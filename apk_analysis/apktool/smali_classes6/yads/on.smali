.class public final Lyads/on;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/af;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method
