.class public final Lyads/sh2;
.super Lyads/rd2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xv1;

.field public final b:Lyads/dw1;

.field public final synthetic c:Lyads/th2;


# direct methods
.method public constructor <init>(Lyads/th2;Lyads/xv1;Lyads/sv1;)V
    .locals 0

    iput-object p1, p0, Lyads/sh2;->c:Lyads/th2;

    invoke-direct {p0}, Lyads/rd2;-><init>()V

    iput-object p2, p0, Lyads/sh2;->a:Lyads/xv1;

    new-instance p1, Lyads/dw1;

    invoke-direct {p1}, Lyads/dw1;-><init>()V

    iput-object p1, p0, Lyads/sh2;->b:Lyads/dw1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/br0;Lyads/tt;Lyads/n32;)Lj59;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lyads/sh2;->a(Lyads/br0;Lyads/tt;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/kq0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;
    .locals 2

    .line 93
    invoke-virtual {p0, p1, p2}, Lyads/sh2;->a(Lyads/br0;Lyads/tt;)V

    .line 94
    sget-object p3, Lyads/yv1;->a:Lyads/yv1;

    .line 95
    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    .line 96
    invoke-virtual {p3, p1, v0}, Lyads/yv1;->a(Lyads/br0;Lyads/fs2;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 97
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object p1, p1, Lyads/kq0;->a:Lyads/ng2;

    .line 99
    iget-object p1, p1, Lyads/ng2;->Q:Ljava/util/List;

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ah2;

    .line 101
    iget-object v0, v0, Lyads/ah2;->d:Lyads/as2;

    .line 102
    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    .line 103
    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lyads/sh2;->c:Lyads/th2;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    sget-object p1, Lyads/aw1;->a:Lyads/zv1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget-object p1, Lyads/zv1;->b:Lyads/aw1;

    .line 108
    iget-object p0, p0, Lyads/sh2;->b:Lyads/dw1;

    .line 109
    iget-object p0, p0, Lyads/dw1;->a:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/vp0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lyads/rd2;->a(Lyads/vp0;Lyads/tt;Lyads/n32;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lyads/sh2;->c:Lyads/th2;

    .line 88
    iget-object p1, p1, Lyads/th2;->b:Lyads/oa1;

    .line 89
    invoke-interface {p1}, Lyads/oa1;->a()Lyads/aw1;

    move-result-object p1

    iget-object p0, p0, Lyads/sh2;->b:Lyads/dw1;

    .line 90
    iget-object p0, p0, Lyads/dw1;->a:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/br0;Lyads/tt;)V
    .locals 4

    iget-object v0, p0, Lyads/sh2;->c:Lyads/th2;

    iget-object v0, v0, Lyads/th2;->a:Lyads/ti1;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lyads/tt;->b:Lyads/fs2;

    iget-object v2, p0, Lyads/sh2;->a:Lyads/xv1;

    invoke-virtual {v0, p1, v1, v2}, Lyads/ti1;->a(Lyads/br0;Lyads/fs2;Lyads/xv1;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/du3;

    iget-object v2, p0, Lyads/sh2;->b:Lyads/dw1;

    iget-object v2, v2, Lyads/dw1;->a:Ljava/util/ArrayList;

    new-instance v3, Lyads/cw1;

    invoke-direct {v3, v1}, Lyads/cw1;-><init>(Lyads/du3;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/sh2;->c:Lyads/th2;

    iget-object p0, p0, Lyads/th2;->c:Lyads/hd1;

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p0, p1}, Lyads/hd1;->a(Lyads/p41;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lyads/hd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/id1;

    invoke-interface {p2, p1}, Lyads/id1;->a(Lyads/p41;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
