.class public final Lyads/lz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# instance fields
.field public final a:Lyads/ey1;


# direct methods
.method public constructor <init>(Lyads/ey1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lz0;->a:Lyads/ey1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 5

    instance-of p1, p2, Lyads/ny0;

    if-eqz p1, :cond_0

    check-cast p2, Lyads/ny0;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_b

    iget-object p2, p2, Lyads/ny0;->a:Lyads/yw0;

    iget-object v0, p2, Lyads/yw0;->a:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lyads/kz0;

    invoke-direct {v1, v0}, Lyads/kz0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lyads/kz0;->a(Lyads/vq0;)Lyads/cn1;

    move-result-object v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    iget-object p1, p2, Lyads/yw0;->d:Lyads/xw0;

    iget-object p1, p1, Lyads/xw0;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/uw0;

    new-instance v3, Lyads/fy1;

    iget-object v4, v2, Lyads/uw0;->a:Lyads/as2;

    invoke-virtual {v4, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, Lyads/uw0;->b:Lyads/as2;

    invoke-virtual {v2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3}, Lyads/fy1;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p2, Lyads/yw0;->d:Lyads/xw0;

    iget-object p1, p1, Lyads/xw0;->c:Lyads/as2;

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object p1, p2, Lyads/yw0;->d:Lyads/xw0;

    iget-object p1, p1, Lyads/xw0;->b:Lyads/as2;

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ww0;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, v0, Lyads/cn1;->a:Lyads/br0;

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    invoke-interface {p1}, Lyads/p41;->s()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    iget-object p4, v0, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p4}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object p4

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/uf2;

    invoke-static {v1}, Lyads/xb5;->a(Lyads/uf2;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lyads/m76;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_6
    new-instance v2, Lyads/b94;

    invoke-direct {v2, v1}, Lyads/b94;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    sget-object v1, Lj59;->a:Lj59;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_8
    :goto_3
    iget-object p1, p2, Lyads/yw0;->c:Ljava/util/List;

    iget-object p2, p2, Lyads/yw0;->b:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    :cond_a
    iget-object p0, p0, Lyads/lz0;->a:Lyads/ey1;

    invoke-virtual {p0}, Lyads/ey1;->a()Lyads/du3;

    move-result-object p0

    invoke-virtual {p3, p0}, Lyads/vq0;->a(Lyads/du3;)V

    const/4 p0, 0x1

    return p0

    :cond_b
    return p1
.end method
