.class public final Lyads/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Landroid/app/Dialog;

.field public final c:Lyads/fr3;

.field public d:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/app/Dialog;Lyads/fr3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gc;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lyads/gc;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lyads/gc;->c:Lyads/fr3;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p1, p0, Lyads/gc;->d:F

    cmpl-float p2, v0, p1

    iget-object p0, p0, Lyads/gc;->a:Landroid/view/ViewGroup;

    if-lez p2, :cond_1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget p2, p0, Lyads/gc;->d:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lyads/gc;->c:Lyads/fr3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/fr3;->a(Landroid/view/View;)V

    iget-object p0, p0, Lyads/gc;->b:Landroid/app/Dialog;

    invoke-static {p0}, Lyads/eo0;->a(Landroid/app/Dialog;)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    iput v0, p0, Lyads/gc;->d:F

    return v1
.end method
