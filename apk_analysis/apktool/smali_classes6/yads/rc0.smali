.class public abstract Lyads/rc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/o75;Ljava/lang/String;Lyads/y35;I)Lyads/bd0;
    .locals 17

    move-object/from16 v0, p2

    new-instance v1, Lyads/ad0;

    invoke-direct {v1}, Lyads/ad0;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lyads/y35;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lyads/ad0;->a:Landroid/net/Uri;

    iget-wide v2, v0, Lyads/y35;->a:J

    iput-wide v2, v1, Lyads/ad0;->d:J

    iget-wide v2, v0, Lyads/y35;->b:J

    iput-wide v2, v1, Lyads/ad0;->e:J

    invoke-virtual/range {p0 .. p0}, Lyads/o75;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    iget-object v2, v2, Lyads/o75;->b:Lyads/oe3;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ms;

    iget-object v2, v2, Lyads/ms;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lyads/y35;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lyads/ad0;->f:Ljava/lang/String;

    move/from16 v0, p3

    iput v0, v1, Lyads/ad0;->g:I

    iget-object v0, v1, Lyads/ad0;->a:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v0, v2}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lyads/bd0;

    iget-object v4, v1, Lyads/ad0;->a:Landroid/net/Uri;

    iget v7, v1, Lyads/ad0;->b:I

    iget-object v9, v1, Lyads/ad0;->c:Ljava/util/Map;

    iget-wide v10, v1, Lyads/ad0;->d:J

    iget-wide v12, v1, Lyads/ad0;->e:J

    iget-object v14, v1, Lyads/ad0;->f:Ljava/lang/String;

    iget v15, v1, Lyads/ad0;->g:I

    const/4 v8, 0x0

    const/16 v16, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v16}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v3
.end method
