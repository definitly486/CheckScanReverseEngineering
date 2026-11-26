.class public final Lyads/ug4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/h85;


# instance fields
.field public final a:Lyads/u8;

.field public final b:Lyads/f9;

.field public final c:Lyads/yg4;

.field public final d:Lyads/ii6;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lyads/gk4;

    invoke-direct {v0}, Lyads/gk4;-><init>()V

    new-instance v1, Lyads/yg4;

    invoke-direct {v1}, Lyads/yg4;-><init>()V

    new-instance v2, Lyads/ii6;

    invoke-direct {v2}, Lyads/ii6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lyads/u8;

    invoke-direct {v3}, Lyads/u8;-><init>()V

    iput-object v3, p0, Lyads/ug4;->a:Lyads/u8;

    new-instance v3, Lyads/f9;

    invoke-direct {v3, v0}, Lyads/f9;-><init>(Lyads/gk4;)V

    iput-object v3, p0, Lyads/ug4;->b:Lyads/f9;

    iput-object v1, p0, Lyads/ug4;->c:Lyads/yg4;

    iput-object v2, p0, Lyads/ug4;->d:Lyads/ii6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lyads/g75;
    .locals 3

    .line 252
    check-cast p1, Lyads/e4;

    .line 253
    new-instance v0, Lyads/h75;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    .line 254
    iget-object v1, p1, Lyads/e4;->e:Lyads/n8;

    if-eqz v1, :cond_0

    .line 255
    iget-object p0, p0, Lyads/ug4;->a:Lyads/u8;

    invoke-virtual {p0, v1}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object p0

    .line 256
    invoke-static {v0, p0}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object v0

    .line 257
    :cond_0
    iget-object p0, p1, Lyads/e4;->c:Lyads/ma;

    .line 258
    iget-object p0, p0, Lyads/ma;->a:Ljava/lang/String;

    .line 259
    const-string v1, "ad_unit_id"

    invoke-virtual {v0, p0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object p0, p1, Lyads/e4;->a:Lyads/n70;

    .line 261
    iget-object p0, p0, Lyads/n70;->b:Ljava/lang/String;

    .line 262
    const-string v1, "ad_type"

    invoke-virtual {v0, p0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p0, p1, Lyads/e4;->d:Lyads/tl5;

    .line 264
    iget-object p0, p0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz p0, :cond_2

    .line 265
    invoke-interface {p0}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v1

    .line 266
    iget-object v1, v1, Lyads/rl5;->b:Ljava/lang/String;

    .line 267
    const-string v2, "size_type"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-interface {p0}, Lyads/sl5;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-interface {p0}, Lyads/sl5;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-interface {p0}, Lyads/sl5;->a()Lyads/so;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 271
    iget-object p0, p0, Lyads/so;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 272
    :goto_0
    const-string v1, "banner_size_calculation_type"

    invoke-virtual {v0, p0, v1}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object p0, p1, Lyads/e4;->g:Lyads/s46;

    .line 274
    sget-object v1, Lyads/s46;->c:Lyads/s46;

    if-ne p0, v1, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 275
    const-string v1, "is_passback"

    invoke-virtual {v0, p0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-boolean p0, p1, Lyads/e4;->m:Z

    .line 277
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "image_loading_automatically"

    invoke-virtual {v0, p0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object p0, p1, Lyads/e4;->b:Lyads/c40;

    .line 279
    iget-object p0, p0, Lyads/c40;->c:Ljava/util/List;

    .line 280
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 281
    const-string p1, "image_sizes"

    invoke-virtual {v0, p0, p1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_4
    new-instance p0, Lyads/g75;

    .line 283
    sget-object p1, Lyads/e75;->c:Lyads/e75;

    .line 284
    iget-object p1, v0, Lyads/h75;->a:Ljava/util/Map;

    .line 285
    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    .line 286
    const-string v1, "ad_request"

    .line 287
    invoke-static {p1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p0
.end method

.method public final a(Lyads/z85;ILjava/lang/Object;Lyads/hi6;)Lyads/g75;
    .locals 5

    check-cast p3, Lyads/e4;

    iget-object v0, p0, Lyads/ug4;->b:Lyads/f9;

    iget-object v0, v0, Lyads/f9;->a:Lyads/gk4;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lyads/z85;->a:Ljava/lang/Object;

    check-cast v2, Lyads/d9;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, v0, Lyads/gk4;->a:Lyads/xh4;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lyads/d9;->t:Ljava/lang/Object;

    check-cast v3, Lyads/vg4;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, p3, v2, v3}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object v0

    iget-object v2, p3, Lyads/e4;->d:Lyads/tl5;

    iget-object v2, v2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v3

    iget-object v3, v3, Lyads/rl5;->b:Ljava/lang/String;

    const-string v4, "size_type"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lyads/sl5;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lyads/sl5;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lyads/sl5;->a()Lyads/so;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lyads/so;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v3, "banner_size_calculation_type"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    const-string v2, "error_code"

    goto :goto_3

    :cond_4
    const-string v2, "code"

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    iget-object v2, p1, Lyads/z85;->a:Ljava/lang/Object;

    check-cast v2, Lyads/d9;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lyads/d9;->q:Lyads/o54;

    if-eqz v3, :cond_5

    const-string v2, "mediation"

    goto :goto_4

    :cond_5
    iget-object v2, v2, Lyads/d9;->t:Ljava/lang/Object;

    if-eqz v2, :cond_6

    const-string v2, "ad"

    goto :goto_4

    :cond_6
    const-string v2, "empty"

    :goto_4
    const-string v3, "response_type"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    iget-object v2, p1, Lyads/z85;->a:Ljava/lang/Object;

    check-cast v2, Lyads/d9;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lyads/d9;->i:Lyads/c;

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    iput-object v2, v0, Lyads/h75;->b:Lyads/c;

    :cond_8
    if-eqz p1, :cond_9

    iget-object p1, p1, Lyads/z85;->a:Ljava/lang/Object;

    check-cast p1, Lyads/d9;

    goto :goto_6

    :cond_9
    move-object p1, v1

    :goto_6
    const/16 v2, 0xcc

    const-string v3, "status"

    if-ne v2, p2, :cond_a

    sget-object p1, Lyads/f75;->e:Lyads/f75;

    goto :goto_8

    :cond_a
    if-eqz p1, :cond_e

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_b

    goto :goto_7

    :cond_b
    iget-object p2, p0, Lyads/ug4;->c:Lyads/yg4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lyads/d9;->t:Ljava/lang/Object;

    check-cast p2, Lyads/vg4;

    if-eqz p2, :cond_c

    iget-object p1, p2, Lyads/vg4;->e:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/f75;

    goto :goto_8

    :cond_c
    iget-object p1, p1, Lyads/d9;->q:Lyads/o54;

    if-nez p1, :cond_d

    sget-object p1, Lyads/f75;->d:Lyads/f75;

    goto :goto_8

    :cond_d
    move-object p1, v1

    goto :goto_8

    :cond_e
    :goto_7
    sget-object p1, Lyads/f75;->d:Lyads/f75;

    :goto_8
    if-eqz p1, :cond_f

    iget-object p1, p1, Lyads/f75;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    if-eqz p4, :cond_11

    iget-object p0, p0, Lyads/ug4;->d:Lyads/ii6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p4, Lyads/i4;

    if-nez p0, :cond_10

    goto :goto_9

    :cond_10
    check-cast p4, Lyads/i4;

    iget-object p0, p4, Lyads/i4;->c:Lyads/o4;

    invoke-static {p3, p0}, Lyads/p4;->a(Lyads/e4;Lyads/o4;)Lyads/m4;

    move-result-object p0

    iget-object v1, p0, Lyads/m4;->b:Ljava/lang/String;

    :cond_11
    :goto_9
    const-string p0, "error_description"

    invoke-virtual {v0, v1, p0}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lyads/g75;

    sget-object p1, Lyads/e75;->c:Lyads/e75;

    iget-object p1, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object p2, v0, Lyads/h75;->b:Lyads/c;

    const-string p3, "ad_response"

    invoke-static {p1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p0
.end method
