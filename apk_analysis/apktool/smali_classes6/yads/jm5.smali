.class public final Lyads/jm5;
.super Lyads/mm5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/mm5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)F
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p0

    sget-object p3, Lyads/qm5;->c:Lyads/jm5;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_0

    move p1, p2

    :cond_0
    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method
