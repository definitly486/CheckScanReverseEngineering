.class public final Lbd4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lnl3;)Lad4;
    .locals 13

    sget-object v0, Lxb4;->d:Lxb4$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldc4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lxb4;->a:Lfc4;

    iget-boolean v3, v2, Lfc4;->b:Z

    iput-boolean v3, v1, Ldc4;->a:Z

    iget-boolean v3, v2, Lfc4;->a:Z

    iput-boolean v3, v1, Ldc4;->b:Z

    iget-object v7, v2, Lfc4;->c:Ljava/lang/String;

    iget-boolean v3, v2, Lfc4;->d:Z

    iput-boolean v3, v1, Ldc4;->c:Z

    iget-object v9, v2, Lfc4;->e:Ljava/lang/String;

    iget-object v11, v2, Lfc4;->g:Lyk1;

    iget-boolean v10, v2, Lfc4;->f:Z

    iget-object v0, v0, Lxb4;->b:Ljq7;

    iget-boolean v12, v2, Lfc4;->h:Z

    invoke-interface {p0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "    "

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance v4, Lfc4;

    iget-boolean v5, v1, Ldc4;->b:Z

    iget-boolean v6, v1, Ldc4;->a:Z

    iget-boolean v8, v1, Ldc4;->c:Z

    invoke-direct/range {v4 .. v12}, Lfc4;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLyk1;Z)V

    new-instance p0, Lad4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v4, v0}, Lxb4;-><init>(Lfc4;Ljq7;)V

    sget-object v1, Lnq7;->a:Ltp7;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lxd4;

    invoke-direct {v1, v4}, Lxd4;-><init>(Lfc4;)V

    invoke-virtual {v0, v1}, Ljq7;->a(Llq7;)V

    return-object p0

    :cond_1
    const-string p0, "Indent should not be specified when default printing mode is used"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
