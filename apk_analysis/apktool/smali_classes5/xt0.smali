.class public final Lxt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Ll02;


# direct methods
.method public constructor <init>(Ll02;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxt0;->a:Ll02;

    return-void
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lez6;->e:Lb37;

    invoke-virtual {v1}, Lb37;->a()Lb37$a;

    move-result-object v2

    iget-object v3, v1, Lb37;->a:Lfz3;

    iget-object v4, v1, Lb37;->c:Ljv3;

    iget-object v5, v1, Lb37;->d:Lg37;

    const-wide/16 v6, -0x1

    const-string v8, "Content-Type"

    const-string v9, "Content-Length"

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lg37;->b()Lj95;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, v10, Lj95;->a:Ljava/lang/String;

    invoke-virtual {v2, v8, v10}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v5}, Lg37;->a()J

    move-result-wide v10

    cmp-long v5, v10, v6

    const-string v12, "Transfer-Encoding"

    if-eqz v5, :cond_1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v5, v12}, Ljv3$a;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "chunked"

    invoke-virtual {v2, v12, v5}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lb37$a;->c:Ljv3$a;

    invoke-virtual {v5, v9}, Ljv3$a;->g(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v5, "Host"

    invoke-virtual {v4, v5}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_3

    invoke-static {v3, v11}, Lgb9;->v(Lfz3;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "Connection"

    invoke-virtual {v4, v5}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v10, "Keep-Alive"

    invoke-virtual {v2, v5, v10}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "Accept-Encoding"

    invoke-virtual {v4, v5}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "gzip"

    if-nez v10, :cond_5

    const-string v10, "Range"

    invoke-virtual {v4, v10}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-virtual {v2, v5, v12}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v10, p0

    goto :goto_2

    :cond_5
    move v5, v11

    goto :goto_1

    :goto_2
    iget-object v10, v10, Lxt0;->a:Ll02;

    invoke-interface {v10, v3}, Ll02;->a(Lfz3;)Ljava/util/List;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v13, Ljava/lang/Iterable;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v11, 0x1

    if-ltz v11, :cond_7

    check-cast v15, Lj02;

    if-lez v11, :cond_6

    const-string v11, "; "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v11, v15, Lj02;->a:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3d

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v15, Lj02;->b:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v16

    goto :goto_3

    :cond_7
    invoke-static {}, Lu96;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Cookie"

    invoke-virtual {v2, v13, v11}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v11, "User-Agent"

    invoke-virtual {v4, v11}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, "okhttp/4.12.0"

    invoke-virtual {v2, v11, v4}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Lb37$a;->a()Lb37;

    move-result-object v2

    invoke-virtual {v0, v2}, Lez6;->b(Lb37;)Lz47;

    move-result-object v0

    iget-object v2, v0, Lz47;->g:Ljv3;

    invoke-static {v10, v3, v2}, Laz3;->b(Ll02;Lfz3;Ljv3;)V

    invoke-virtual {v0}, Lz47;->p()Lz47$a;

    move-result-object v3

    iput-object v1, v3, Lz47$a;->a:Lb37;

    if-eqz v5, :cond_b

    const-string v1, "Content-Encoding"

    invoke-static {v0, v1}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v0}, Laz3;->a(Lz47;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lz47;->h:Lb57;

    if-eqz v4, :cond_b

    new-instance v5, Lxt3;

    invoke-virtual {v4}, Lb57;->L()Lwu0;

    move-result-object v4

    invoke-direct {v5, v4}, Lxt3;-><init>(Lv48;)V

    invoke-virtual {v2}, Ljv3;->d()Ljv3$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljv3$a;->g(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljv3$a;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljv3$a;->e()Ljv3;

    move-result-object v1

    invoke-virtual {v1}, Ljv3;->d()Ljv3$a;

    move-result-object v1

    iput-object v1, v3, Lz47$a;->f:Ljv3$a;

    invoke-static {v0, v8}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhz6;

    new-instance v2, Liy6;

    invoke-direct {v2, v5}, Liy6;-><init>(Lv48;)V

    invoke-direct {v1, v0, v6, v7, v2}, Lhz6;-><init>(Ljava/lang/String;JLiy6;)V

    iput-object v1, v3, Lz47$a;->g:Lb57;

    :cond_b
    invoke-virtual {v3}, Lz47$a;->a()Lz47;

    move-result-object v0

    return-object v0
.end method
