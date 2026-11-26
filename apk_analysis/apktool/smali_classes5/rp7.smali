.class public final Lrp7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Ldg6;)Lfg6;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lhg6;->a(Ljava/lang/String;)V

    new-instance v0, Lfg6;

    invoke-direct {v0, p0, p1}, Lfg6;-><init>(Ljava/lang/String;Ldg6;)V

    return-object v0

    :cond_0
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Lmp7;)Lkl9;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object v0

    instance-of v0, v0, Ldg6;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lhg6;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lkl9;

    invoke-direct {v0, p0, p1}, Lkl9;-><init>(Ljava/lang/String;Lmp7;)V

    return-object v0

    :cond_1
    const-string v0, "The name of the wrapped descriptor ("

    const-string v1, ") cannot be the same as the name of the original descriptor ("

    invoke-static {v0, p0, v1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;[Lmp7;Lnl3;)Lop7;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lal1;

    invoke-direct {v6, p0}, Lal1;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lop7;

    sget-object v3, Leb8$a;->a:Leb8$a;

    iget-object p2, v6, Lal1;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lop7;-><init>(Ljava/lang/String;Lsp7;ILjava/util/List;Lal1;)V

    return-object v1

    :cond_0
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;[Lmp7;)Lop7;
    .locals 7

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v6, Lal1;

    invoke-direct {v6, p0}, Lal1;-><init>(Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;

    new-instance v1, Lop7;

    sget-object v3, Leb8$a;->a:Leb8$a;

    iget-object v0, v6, Lal1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lop7;-><init>(Ljava/lang/String;Lsp7;ILjava/util/List;Lal1;)V

    return-object v1

    :cond_0
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Leb8$a;->a:Leb8$a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v7, Lal1;

    invoke-direct {v7, p0}, Lal1;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v7}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lop7;

    iget-object p3, v7, Lal1;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p2}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lop7;-><init>(Ljava/lang/String;Lsp7;ILjava/util/List;Lal1;)V

    return-object v2

    :cond_0
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public static f(Ljava/lang/String;Lsp7;[Lmp7;)Lop7;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Leb8$a;->a:Leb8$a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v7, Lal1;

    invoke-direct {v7, p0}, Lal1;-><init>(Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;

    new-instance v2, Lop7;

    iget-object v0, v7, Lal1;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {p2}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lop7;-><init>(Ljava/lang/String;Lsp7;ILjava/util/List;Lal1;)V

    return-object v2

    :cond_0
    const-string p0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "Blank serial names are prohibited"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method
