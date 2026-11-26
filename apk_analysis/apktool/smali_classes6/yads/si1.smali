.class public final Lyads/si1;
.super Lyads/dj2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xv1;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Lyads/ti1;


# direct methods
.method public constructor <init>(Lyads/ti1;Lyads/xv1;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/si1;->c:Lyads/ti1;

    invoke-direct {p0}, Lyads/dj2;-><init>()V

    iput-object p2, p0, Lyads/si1;->a:Lyads/xv1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/si1;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/br0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/cq0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 123
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/gq0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 127
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/iq0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 125
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/jq0;Lyads/fs2;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    sget-object v0, Lyads/yv1;->a:Lyads/yv1;

    invoke-virtual {v0, p1, p2}, Lyads/yv1;->a(Lyads/br0;Lyads/fs2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lyads/jq0;->a:Lyads/b82;

    iget-object p1, p1, Lyads/b82;->F:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/si1;->c:Lyads/ti1;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/x72;

    iget-object v1, v1, Lyads/x72;->i:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyads/si1;->a:Lyads/xv1;

    iget-object v3, p0, Lyads/si1;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lyads/ti1;->a:Lyads/oi1;

    invoke-interface {v4, v1, v2}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lyads/d46;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v2, Lyads/xv1;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/xv1;->b:I

    goto :goto_0

    :cond_0
    sget-object v1, Lyads/d46;->a:Landroid/os/Handler;

    new-instance v3, Lyads/wv1;

    invoke-direct {v3, v2}, Lyads/wv1;-><init>(Lyads/xv1;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/up0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 117
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/wp0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 121
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/xp0;Lyads/fs2;)Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 103
    sget-object v0, Lyads/yv1;->a:Lyads/yv1;

    invoke-virtual {v0, p1, p2}, Lyads/yv1;->a(Lyads/br0;Lyads/fs2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lyads/si1;->c:Lyads/ti1;

    .line 105
    iget-object p1, p1, Lyads/xp0;->a:Lyads/eh1;

    .line 106
    iget-object p1, p1, Lyads/eh1;->u:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lyads/si1;->a:Lyads/xv1;

    iget-object p0, p0, Lyads/si1;->b:Ljava/util/ArrayList;

    .line 107
    iget-object v0, v0, Lyads/ti1;->a:Lyads/oi1;

    .line 108
    invoke-interface {v0, p1, p2}, Lyads/oi1;->a(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {}, Lyads/d46;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    iget p0, p2, Lyads/xv1;->b:I

    add-int/lit8 p0, p0, 0x1

    .line 112
    iput p0, p2, Lyads/xv1;->b:I

    goto :goto_0

    .line 113
    :cond_0
    sget-object p0, Lyads/d46;->a:Landroid/os/Handler;

    .line 114
    new-instance p1, Lyads/wv1;

    invoke-direct {p1, p2}, Lyads/wv1;-><init>(Lyads/xv1;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/yp0;Lyads/fs2;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 119
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final a(Lyads/zp0;Lyads/fs2;)Ljava/lang/Object;
    .locals 1

    .line 88
    invoke-virtual {p0, p1, p2}, Lyads/si1;->c(Lyads/br0;Lyads/fs2;)V

    .line 89
    sget-object v0, Lyads/yv1;->a:Lyads/yv1;

    invoke-virtual {v0, p1, p2}, Lyads/yv1;->a(Lyads/br0;Lyads/fs2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lyads/si1;->c:Lyads/ti1;

    .line 91
    iget-object p1, p1, Lyads/zp0;->a:Lyads/zh1;

    .line 92
    iget-object p1, p1, Lyads/zh1;->B:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lyads/si1;->a:Lyads/xv1;

    iget-object p0, p0, Lyads/si1;->b:Ljava/util/ArrayList;

    .line 93
    iget-object v0, v0, Lyads/ti1;->a:Lyads/oi1;

    .line 94
    invoke-interface {v0, p1, p2}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {}, Lyads/d46;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    iget p0, p2, Lyads/xv1;->b:I

    add-int/lit8 p0, p0, 0x1

    .line 98
    iput p0, p2, Lyads/xv1;->b:I

    goto :goto_0

    .line 99
    :cond_0
    sget-object p0, Lyads/d46;->a:Landroid/os/Handler;

    .line 100
    new-instance p1, Lyads/wv1;

    invoke-direct {p1, p2}, Lyads/wv1;-><init>(Lyads/xv1;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final c(Lyads/br0;Lyads/fs2;)V
    .locals 5

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    invoke-interface {p1}, Lyads/p41;->e()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lyads/si1;->c:Lyads/ti1;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/m31;

    instance-of v2, v1, Lyads/h31;

    if-eqz v2, :cond_0

    check-cast v1, Lyads/h31;

    iget-object v2, v1, Lyads/h31;->a:Lyads/bi1;

    iget-object v2, v2, Lyads/bi1;->f:Lyads/as2;

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lyads/h31;->a:Lyads/bi1;

    iget-object v1, v1, Lyads/bi1;->e:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyads/si1;->a:Lyads/xv1;

    iget-object v3, p0, Lyads/si1;->b:Ljava/util/ArrayList;

    iget-object v4, v0, Lyads/ti1;->a:Lyads/oi1;

    invoke-interface {v4, v1, v2}, Lyads/oi1;->b(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lyads/d46;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Lyads/xv1;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lyads/xv1;->b:I

    goto :goto_0

    :cond_1
    sget-object v1, Lyads/d46;->a:Landroid/os/Handler;

    new-instance v3, Lyads/wv1;

    invoke-direct {v3, v2}, Lyads/wv1;-><init>(Lyads/xv1;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
