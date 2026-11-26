.class public final Lnl9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lmp7;Ljq7;)Lmp7;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    sget-object v1, Lsp7$a;->a:Lsp7$a;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lly1;->c(Lmp7;)Lne4;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-virtual {p1, v0, v2}, Ljq7;->b(Lne4;Ljava/util/List;)Ldf4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Lnl9;->a(Lmp7;Ljq7;)Lmp7;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p0}, Lmp7;->isInline()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lmp7;->d(I)Lmp7;

    move-result-object p0

    invoke-static {p0, p1}, Lnl9;->a(Lmp7;Ljq7;)Lmp7;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final b(Lxb4;Lmp7;)Lml9;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    instance-of v1, v0, Lba6;

    if-eqz v1, :cond_0

    sget-object p0, Lml9;->POLY_OBJ:Lml9;

    return-object p0

    :cond_0
    sget-object v1, Leb8$b;->a:Leb8$b;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lml9;->LIST:Lml9;

    return-object p0

    :cond_1
    sget-object v1, Leb8$c;->a:Leb8$c;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmp7;->d(I)Lmp7;

    move-result-object p1

    iget-object p0, p0, Lxb4;->b:Ljq7;

    invoke-static {p1, p0}, Lnl9;->a(Lmp7;Ljq7;)Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object p1

    instance-of v0, p1, Ldg6;

    if-nez v0, :cond_3

    sget-object v0, Lsp7$b;->a:Lsp7$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lyc4;->a(Lmp7;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lml9;->MAP:Lml9;

    return-object p0

    :cond_4
    sget-object p0, Lml9;->OBJ:Lml9;

    return-object p0
.end method
