.class public final Lyads/xb4;
.super Lyads/rf6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/vb4;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lyads/by3;

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lyads/vb4;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p0, p1}, Lyads/vf6;->a(Landroid/view/View;Lyads/ak;)V

    new-instance p3, Lyads/eb4;

    invoke-direct {p3, p0}, Lyads/eb4;-><init>(Lyads/vb4;)V

    invoke-interface {p2, p1, p3}, Lyads/vf6;->a(Lyads/ak;Lyads/f00;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lyads/vb4;

    check-cast p2, Lyads/by3;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lyads/vb4;

    check-cast p2, Lyads/by3;

    iget-object p0, p2, Lyads/by3;->a:Lyads/tz3;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Lyads/by3;->b:F

    invoke-virtual {p1, p2}, Lyads/vb4;->setAspectRatio(F)V

    instance-of p2, p0, Lyads/rz3;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    check-cast p0, Lyads/rz3;

    iget-object p0, p0, Lyads/rz3;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lyads/vb4;->a(Ljava/lang/String;Lyads/ub4;)V

    return-void

    :cond_1
    instance-of p2, p0, Lyads/sz3;

    if-eqz p2, :cond_2

    check-cast p0, Lyads/sz3;

    iget-object p0, p0, Lyads/sz3;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lyads/vb4;->a(Ljava/lang/String;Lyads/bc4;)V

    :cond_2
    :goto_0
    return-void
.end method
