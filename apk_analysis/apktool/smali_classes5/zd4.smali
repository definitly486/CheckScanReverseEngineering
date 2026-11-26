.class public Lzd4;
.super Lt0;
.source "SourceFile"


# instance fields
.field public final f:Ljd4;

.field public final g:Lmp7;

.field public h:I

.field public i:Z


# direct methods
.method public synthetic constructor <init>(Lxb4;Ljd4;Ljava/lang/String;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;Lmp7;)V

    return-void
.end method

.method public constructor <init>(Lxb4;Ljd4;Ljava/lang/String;Lmp7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3}, Lt0;-><init>(Lxb4;Loc4;Ljava/lang/String;)V

    iput-object p2, p0, Lzd4;->f:Ljd4;

    iput-object p4, p0, Lzd4;->g:Lmp7;

    return-void
.end method


# virtual methods
.method public final beginStructure(Lmp7;)Ldu1;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lzd4;->g:Lmp7;

    if-ne p1, v0, :cond_2

    new-instance p1, Lzd4;

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object v1

    invoke-interface {v0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v1, Ljd4;

    iget-object v4, p0, Lt0;->c:Lxb4;

    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Ljd4;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {v0}, Lzk1;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {v0}, Lzk1;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " as the serialized body of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v4, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v2, p1, p0, v3, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Ljd4;

    iget-object p0, p0, Lt0;->d:Ljava/lang/String;

    invoke-direct {p1, v4, v1, p0, v0}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;Lmp7;)V

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lt0;->beginStructure(Lmp7;)Ldu1;

    move-result-object p0

    return-object p0
.end method

.method public decodeElementIndex(Lmp7;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    iget v0, p0, Lzd4;->h:I

    invoke-interface {p1}, Lmp7;->e()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget v0, p0, Lzd4;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lzd4;->h:I

    invoke-virtual {p0, p1, v0}, Lzd4;->n(Lmp7;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyh5;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v1, p0, Lzd4;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lzd4;->i:Z

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljd4;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v1}, Lzd4;->x(Lmp7;I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v4, p0, Lt0;->e:Lfc4;

    iget-boolean v4, v4, Lfc4;->d:Z

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-interface {p1, v1}, Lmp7;->i(I)Z

    move-result v4

    invoke-interface {p1, v1}, Lmp7;->d(I)Lmp7;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-interface {v5}, Lmp7;->b()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljd4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loc4;

    instance-of v6, v6, Lgd4;

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lmp7;->getKind()Lsp7;

    move-result-object v6

    sget-object v7, Lsp7$b;->a:Lsp7$b;

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Lmp7;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljd4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loc4;

    instance-of v6, v6, Lgd4;

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljd4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loc4;

    instance-of v6, v0, Lpd4;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    check-cast v0, Lpd4;

    goto :goto_1

    :cond_5
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_7

    sget-object v6, Lrc4;->a:Li54;

    instance-of v6, v0, Lgd4;

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object v7

    :cond_7
    :goto_2
    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lt0;->c:Lxb4;

    invoke-static {v5, v0, v7}, Lfd4;->a(Lmp7;Lxb4;Ljava/lang/String;)I

    move-result v6

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->b:Z

    if-nez v0, :cond_9

    invoke-interface {v5}, Lmp7;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    :goto_3
    const/4 v0, -0x3

    if-ne v6, v0, :cond_b

    if-nez v4, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    invoke-virtual {p0, p1, v1}, Lzd4;->x(Lmp7;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    :goto_4
    return v1

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public final decodeNotNullMark()Z
    .locals 1

    iget-boolean v0, p0, Lzd4;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lt0;->decodeNotNullMark()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public endStructure(Lmp7;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lt0;->c:Lxb4;

    invoke-static {v0, p1}, Lfd4;->c(Lxb4;Lmp7;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object v1

    instance-of v1, v1, Lba6;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v0, p1}, Lfd4;->d(Lxb4;Lmp7;)V

    iget-object v1, p0, Lt0;->e:Lfc4;

    iget-boolean v1, v1, Lfc4;->f:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p1}, Lm96;->a(Lmp7;)Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lm96;->a(Lmp7;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, v0, Lxb4;->c:Lwl2;

    iget-object v3, v3, Lwl2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    sget-object v3, Lfd4;->a:Lwl2$a;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_5

    sget-object p1, Lox2;->b:Lox2;

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v1, p1}, Lmr7;->l(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    :goto_2
    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v1

    iget-object v1, v1, Ljd4;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lt0;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string p1, "Encountered an unknown key \'"

    const/16 v1, 0x27

    invoke-static {v1, p1, v3}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object p0

    invoke-virtual {p0}, Ljd4;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance p0, Lkotlinx/serialization/json/JsonDecodingException;

    const-string v0, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys."

    invoke-static {v3, p1, v1, v0, v2}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public n(Lmp7;I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lt0;->c:Lxb4;

    invoke-static {v0, p1}, Lfd4;->d(Lxb4;Lmp7;)V

    invoke-interface {p1, p2}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lt0;->e:Lfc4;

    iget-boolean v2, v2, Lfc4;->f:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object v2

    iget-object v2, v2, Ljd4;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, v0, Lxb4;->c:Lwl2;

    new-instance v3, Leb;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1, v0}, Leb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lwl2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v4, 0x0

    sget-object v5, Lfd4;->a:Lwl2$a;

    if-eqz v2, :cond_2

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Leb;->invoke()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object p0

    iget-object p0, p0, Ljd4;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_6

    move-object v4, p1

    :cond_8
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    :goto_3
    return-object v1
.end method

.method public r(Ljava/lang/String;)Loc4;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object p0

    invoke-static {p1, p0}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loc4;

    return-object p0
.end method

.method public bridge synthetic t()Loc4;
    .locals 0

    invoke-virtual {p0}, Lzd4;->w()Ljd4;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljd4;
    .locals 0

    iget-object p0, p0, Lzd4;->f:Ljd4;

    return-object p0
.end method

.method public final x(Lmp7;I)Z
    .locals 1

    iget-object v0, p0, Lt0;->c:Lxb4;

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->b:Z

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lmp7;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lmp7;->d(I)Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lzd4;->i:Z

    return p1
.end method
