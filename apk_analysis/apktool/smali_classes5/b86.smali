.class public final synthetic Lb86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h$l;


# instance fields
.field public final synthetic a:Ld86;

.field public final synthetic b:Ld86$h;


# direct methods
.method public synthetic constructor <init>(Ld86;Ld86$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb86;->a:Ld86;

    iput-object p2, p0, Lb86;->b:Ld86$h;

    return-void
.end method


# virtual methods
.method public final a(Ldx1;)V
    .locals 11

    iget-object v0, p0, Lb86;->a:Ld86;

    iget-object v1, v0, Ld86;->g:Lio/grpc/h$e;

    iget-object v2, v0, Ld86;->i:Ld86$e;

    iget-object v3, p1, Ldx1;->a:Lcx1;

    iget-object v4, v0, Ld86;->h:Ljava/util/HashMap;

    iget-object p0, p0, Lb86;->b:Ld86$h;

    iget-object v5, p0, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v5}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object v6

    iget-object v6, v6, Lio/grpc/d;->a:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/SocketAddress;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq p0, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v6, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v3, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v6, Lcx1;->IDLE:Lcx1;

    if-ne v3, v6, :cond_2

    iget-object v8, p0, Ld86$h;->b:Lcx1;

    sget-object v9, Lcx1;->READY:Lcx1;

    if-ne v8, v9, :cond_2

    invoke-virtual {v1}, Lio/grpc/h$e;->e()V

    :cond_2
    invoke-virtual {p0, v3}, Ld86$h;->a(Lcx1;)V

    iget-object v8, v0, Ld86;->m:Lcx1;

    sget-object v9, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-eq v8, v9, :cond_3

    iget-object v8, v0, Ld86;->n:Lcx1;

    if-ne v8, v9, :cond_5

    :cond_3
    sget-object v8, Lcx1;->CONNECTING:Lcx1;

    if-ne v3, v8, :cond_4

    goto/16 :goto_1

    :cond_4
    if-ne v3, v6, :cond_5

    invoke-virtual {v0}, Ld86;->c()V

    return-void

    :cond_5
    sget-object v8, Ld86$a;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_19

    const/4 v6, 0x2

    if-eq v8, v6, :cond_15

    const/4 v6, 0x3

    const/4 v10, 0x0

    if-eq v8, v6, :cond_10

    const/4 v5, 0x4

    if-ne v8, v5, :cond_f

    invoke-virtual {v2}, Ld86$e;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Ld86$e;->a()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_9

    invoke-virtual {v2}, Ld86$e;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Ld86;->l:Lch8$c;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lch8$c;->a()V

    iput-object v10, v0, Ld86;->l:Lch8$c;

    :cond_6
    invoke-virtual {v0}, Ld86;->c()V

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result p0

    iget-object v3, v2, Ld86$e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p0, v3, :cond_8

    invoke-virtual {v0}, Ld86;->e()V

    goto :goto_0

    :cond_8
    iput v7, v2, Ld86$e;->b:I

    invoke-virtual {v0}, Ld86;->c()V

    :cond_9
    :goto_0
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result p0

    iget-object v3, v2, Ld86$e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld86$h;

    iget-boolean v3, v3, Ld86$h;->c:Z

    if-nez v3, :cond_b

    goto :goto_1

    :cond_c
    sget-object p0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    iput-object p0, v0, Ld86;->m:Lcx1;

    new-instance v3, Lio/grpc/h$d;

    iget-object p1, p1, Ldx1;->b:Lh88;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {v3, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {v0, p0, v3}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    iget p0, v0, Ld86;->j:I

    add-int/2addr p0, v9

    iput p0, v0, Ld86;->j:I

    iget-object p1, v2, Ld86$e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_e

    iget-boolean p0, v0, Ld86;->k:Z

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_d
    :goto_1
    return-void

    :cond_e
    :goto_2
    iput-boolean v7, v0, Ld86;->k:Z

    iput v7, v0, Ld86;->j:I

    invoke-virtual {v1}, Lio/grpc/h$e;->e()V

    return-void

    :cond_f
    const-string p0, "Unsupported state:"

    invoke-static {v3, p0}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, v0, Ld86;->r:Lch8$c;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lch8$c;->a()V

    iput-object v10, v0, Ld86;->r:Lch8$c;

    :cond_11
    iput-object v10, v0, Ld86;->q:Lw33;

    iget-object p1, v0, Ld86;->l:Lch8$c;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lch8$c;->a()V

    iput-object v10, v0, Ld86;->l:Lch8$c;

    :cond_12
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld86$h;

    iget-object v3, v1, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v1, v1, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v1}, Lio/grpc/h$j;->g()V

    goto :goto_3

    :cond_14
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    sget-object p1, Lcx1;->READY:Lcx1;

    invoke-virtual {p0, p1}, Ld86$h;->a(Lcx1;)V

    invoke-virtual {v5}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-virtual {v4, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    invoke-virtual {v2, v1}, Ld86$e;->e(Ljava/net/SocketAddress;)Z

    iput-object p1, v0, Ld86;->m:Lcx1;

    invoke-virtual {v0, p0}, Ld86;->j(Ld86$h;)V

    return-void

    :cond_15
    sget-object p0, Lcx1;->CONNECTING:Lcx1;

    iput-object p0, v0, Ld86;->m:Lcx1;

    iget-boolean p1, v0, Ld86;->f:Z

    if-nez p1, :cond_16

    invoke-virtual {v2}, Ld86$e;->d()Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    invoke-virtual {v2}, Ld86$e;->d()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v2}, Ld86$e;->a()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    :cond_17
    invoke-virtual {v5}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object p1

    iget-object p1, p1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    invoke-virtual {v2, p1}, Ld86$e;->e(Ljava/net/SocketAddress;)Z

    :cond_18
    new-instance p1, Lio/grpc/h$d;

    sget-object v1, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {p1, v1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {v0, p0, p1}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    return-void

    :cond_19
    iput v7, v2, Ld86$e;->b:I

    iput-object v6, v0, Ld86;->m:Lcx1;

    new-instance p0, Ld86$g;

    invoke-direct {p0, v0, v0}, Ld86$g;-><init>(Ld86;Ld86;)V

    invoke-virtual {v0, v6, p0}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method
