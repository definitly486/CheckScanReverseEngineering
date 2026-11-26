.class public final Lyads/im5;
.super Lyads/pm5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/pm5;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILandroid/view/View;Landroid/view/ViewGroup;)F
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sget-object v0, Lyads/qm5;->c:Lyads/jm5;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

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
