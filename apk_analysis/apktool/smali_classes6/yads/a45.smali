.class public final Lyads/a45;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/q84;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/q84;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/a45;->c:Lyads/q84;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    move-object p0, p1

    check-cast p0, Lyads/b45;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lyads/b45;->setRating(F)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p2, Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    check-cast p1, Lyads/b45;

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p1, v0}, Lyads/b45;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Could not parse rating value. Rating value is %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lyads/a45;->c:Lyads/q84;

    const-string p2, "Could not parse rating value"

    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
