.class public final Lyads/km5;
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
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p0

    sget-object v0, Lyads/qm5;->c:Lyads/jm5;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p3, p2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    move p1, p3

    :cond_0
    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method
