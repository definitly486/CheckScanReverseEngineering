.class public Lyads/pi2;
.super Lyads/g03;
.source "SourceFile"

# interfaces
.implements Lyads/s51;
.implements Lyads/r16;


# instance fields
.field public final synthetic l:Lyads/u16;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/pi2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/pi2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/g03;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/u16;

    invoke-direct {p1}, Lyads/u16;-><init>()V

    iput-object p1, p0, Lyads/pi2;->l:Lyads/u16;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lyads/pi2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/pi2;->l:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const-string p0, "ViewWrapper can host only one child view"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/pi2;->l:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/pi2;->l:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final i()Lyads/l51;
    .locals 2

    invoke-virtual {p0}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lyads/s51;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s51;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/s51;->i()Lyads/l51;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final j()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lyads/s51;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s51;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Lyads/s51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setNeedClipping(Z)V
    .locals 1

    invoke-virtual {p0}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lyads/s51;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/s51;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lyads/s51;->setNeedClipping(Z)V

    return-void
.end method
