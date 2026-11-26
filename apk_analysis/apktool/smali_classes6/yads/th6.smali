.class public final Lyads/th6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pr4;

.field public final b:Lyads/vh6;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/pr4;

    invoke-direct {v0}, Lyads/pr4;-><init>()V

    new-instance v1, Lyads/vh6;

    invoke-direct {v1}, Lyads/vh6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/th6;->a:Lyads/pr4;

    iput-object v1, p0, Lyads/th6;->b:Lyads/vh6;

    return-void
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v0, "GONE"

    goto :goto_0

    :cond_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    :cond_2
    const-string v0, "VISIBLE"

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not shown: visibility="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", attached="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "not attached"

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "scrolled off"

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "zero size"

    :goto_1
    const-string v0, "view rect is null: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lyads/uh6;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lyads/uh6;

    invoke-static {p1}, Lyads/th6;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/uh6;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    new-instance p0, Lyads/uh6;

    const-string p1, "view is transparent"

    invoke-direct {p0, v1, p1}, Lyads/uh6;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lyads/th6;->b:Lyads/vh6;

    invoke-virtual {v0, p1}, Lyads/vh6;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p0, Lyads/uh6;

    invoke-static {p1}, Lyads/th6;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/uh6;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyads/th6;->a:Lyads/pr4;

    invoke-virtual {p0, p1, v0}, Lyads/pr4;->a(Landroid/view/View;Landroid/graphics/Rect;)I

    move-result p0

    sub-int/2addr v2, p0

    if-gtz v2, :cond_3

    const-string p0, "no visible area"

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lyads/uh6;

    invoke-direct {p1, v2, p0}, Lyads/uh6;-><init>(ILjava/lang/String;)V

    return-object p1
.end method
