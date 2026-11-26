.class public final Lyads/h21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 2

    instance-of p0, p2, Lyads/wx0;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3, p1, p0}, Lyads/jg6;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iget-object p3, p3, Lyads/vq0;->o:Lyads/wq0;

    iget-object p3, p3, Lyads/wq0;->k:Lcl4;

    invoke-interface {p3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/a21;

    check-cast p2, Lyads/wx0;

    iget-object p2, p2, Lyads/wx0;->a:Lyads/yr0;

    invoke-virtual {p3, p1, p0, p2, p4}, Lyads/a21;->a(Ljava/lang/String;Landroid/view/View;Lyads/yr0;Lyads/fs2;)V

    return v0

    :cond_2
    instance-of p0, p2, Lyads/xx0;

    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-object p0, p3, Lyads/vq0;->o:Lyads/wq0;

    iget-object p0, p0, Lyads/wq0;->k:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/a21;

    check-cast p2, Lyads/xx0;

    iget-object p2, p2, Lyads/xx0;->a:Lyads/es0;

    iget-object p2, p2, Lyads/es0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lyads/a21;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
