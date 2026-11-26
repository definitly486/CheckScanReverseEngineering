.class public abstract Lt0;
.super Lyh5;
.source "SourceFile"

# interfaces
.implements Lkc4;


# instance fields
.field public final c:Lxb4;

.field public final d:Ljava/lang/String;

.field public final e:Lfc4;


# direct methods
.method public constructor <init>(Lxb4;Loc4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lyh5;-><init>()V

    iput-object p1, p0, Lt0;->c:Lxb4;

    iput-object p3, p0, Lt0;->d:Ljava/lang/String;

    iget-object p1, p1, Lxb4;->a:Lfc4;

    iput-object p1, p0, Lt0;->e:Lfc4;

    return-void
.end method


# virtual methods
.method public final a()Loc4;
    .locals 0

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lxb4;
    .locals 0

    iget-object p0, p0, Lt0;->c:Lxb4;

    return-object p0
.end method

.method public beginStructure(Lmp7;)Ldu1;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object v0

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object v1

    sget-object v2, Leb8$b;->a:Leb8$b;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lt0;->c:Lxb4;

    const/4 v4, -0x1

    const-string v5, " as the serialized body of "

    const-string v6, ", but had "

    const-string v7, "Expected "

    const/4 v8, 0x0

    if-nez v2, :cond_8

    instance-of v2, v1, Lba6;

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v2, Leb8$c;->a:Leb8$c;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Ljd4;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lmp7;->d(I)Lmp7;

    move-result-object v1

    iget-object v9, v3, Lxb4;->b:Ljq7;

    invoke-static {v1, v9}, Lnl9;->a(Lmp7;Ljq7;)Lmp7;

    move-result-object v1

    invoke-interface {v1}, Lmp7;->getKind()Lsp7;

    move-result-object v9

    instance-of v10, v9, Ldg6;

    if-nez v10, :cond_2

    sget-object v10, Lsp7$b;->a:Lsp7$b;

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lyc4;->a(Lmp7;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    new-instance v1, Lbe4;

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    instance-of v9, v0, Ljd4;

    if-nez v9, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v3, Lxb4;->a:Lfc4;

    iget-boolean v1, v1, Lfc4;->h:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v8

    :goto_1
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v4, p1, p0, v8, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    check-cast v0, Ljd4;

    invoke-direct {v1, v3, v0}, Lbe4;-><init>(Lxb4;Ljd4;)V

    return-object v1

    :cond_5
    new-instance v1, Lzd4;

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    instance-of v9, v0, Ljd4;

    if-nez v9, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v3, Lxb4;->a:Lfc4;

    iget-boolean v1, v1, Lfc4;->h:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v8

    :goto_2
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v4, p1, p0, v8, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    check-cast v0, Ljd4;

    iget-object p0, p0, Lt0;->d:Ljava/lang/String;

    const/16 p1, 0x8

    invoke-direct {v1, v3, v0, p0, p1}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;I)V

    return-object v1

    :cond_8
    :goto_3
    new-instance v1, Lae4;

    invoke-interface {p1}, Lmp7;->h()Ljava/lang/String;

    move-result-object p1

    instance-of v2, v0, Lzb4;

    if-nez v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lzb4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v3, Lxb4;->a:Lfc4;

    iget-boolean v1, v1, Lfc4;->h:Z

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    move-object v0, v8

    :goto_4
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v4, p1, p0, v8, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    check-cast v0, Lzb4;

    invoke-direct {v1, v3, v0}, Lae4;-><init>(Lxb4;Lzb4;)V

    return-object v1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "boolean"

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v1

    instance-of v2, v1, Lpd4;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lpd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of boolean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v2, v0, p1, v3, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Lpd4;

    :try_start_0
    sget-object v2, Lrc4;->a:Li54;

    invoke-virtual {v1}, Lpd4;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Laa8;->a:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final d(Ljava/lang/Object;)B
    .locals 8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "byte"

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v1

    instance-of v2, v1, Lpd4;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lpd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of byte"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v2, v0, p1, v3, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Lpd4;

    :try_start_0
    invoke-static {v1}, Lrc4;->b(Lpd4;)J

    move-result-wide v4

    const-wide/16 v6, -0x80

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    const-wide/16 v6, 0x7f

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    long-to-int v2, v4

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final decodeInline(Lmp7;)Lud2;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyh5;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyh5;->p()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lt0;->i(Ljava/lang/Object;Lmp7;)Lud2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lrd4;

    invoke-virtual {p0}, Lt0;->t()Loc4;

    move-result-object v1

    iget-object v2, p0, Lt0;->d:Ljava/lang/String;

    iget-object p0, p0, Lt0;->c:Lxb4;

    invoke-direct {v0, p0, v1, v2}, Lrd4;-><init>(Lxb4;Loc4;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lt0;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    return-object p0
.end method

.method public decodeNotNullMark()Z
    .locals 0

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    instance-of p0, p0, Lgd4;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final decodeSerializableValue(Lxl2;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lk1;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt0;->c:Lxb4;

    iget-object v1, v0, Lxb4;->a:Lfc4;

    move-object v1, p1

    check-cast v1, Lk1;

    invoke-interface {v1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-static {v0, v2}, Lca6;->a(Lxb4;Lmp7;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object v3

    invoke-interface {v1}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-interface {v1}, Lmp7;->h()Ljava/lang/String;

    move-result-object v1

    instance-of v4, v3, Ljd4;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Ljd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v5, p1, p0, v6, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v3, Ljd4;

    invoke-virtual {v3, v2}, Ljd4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loc4;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lrc4;->a(Loc4;)Lpd4;

    move-result-object v1

    instance-of v4, v1, Lgd4;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lpd4;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    move-object v1, v6

    :goto_2
    :try_start_0
    check-cast p1, Lk1;

    invoke-static {p1, p0, v1}, Lea6;->a(Lk1;Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object p0
    :try_end_0
    .catch Lkotlinx/serialization/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lzd4;

    invoke-interface {p0}, Lxl2;->getDescriptor()Lmp7;

    move-result-object v1

    invoke-direct {p1, v0, v3, v2, v1}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;Lmp7;)V

    invoke-virtual {p1, p0}, Lt0;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Ljd4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v6

    :goto_3
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v5, p0, v6, v6, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {p1, p0}, Lxl2;->deserialize(Lud2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)C
    .locals 5

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    instance-of v1, v0, Lpd4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lpd4;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but had "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as the serialized body of char"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v3, v1, p1, v2, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    :try_start_0
    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Char sequence has more than one element."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v3, "Char sequence is empty."

    invoke-direct {v1, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "char"

    invoke-virtual {p0, v0, v1, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public endStructure(Lmp7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final f(Ljava/lang/Object;)D
    .locals 9

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    instance-of v1, v0, Lpd4;

    iget-object v2, p0, Lt0;->c:Lxb4;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lpd4;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but had "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as the serialized body of double"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v2, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v3, v1, p0, v4, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    :try_start_0
    sget-object v1, Lrc4;->a:Li54;

    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v2, Lxb4;->a:Lfc4;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_2

    return-wide v0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p1, v0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v2, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v4

    :goto_1
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    invoke-static {v3, p1, v4, v1, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    const-string v1, "double"

    invoke-virtual {p0, v0, v1, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public final g(Ljava/lang/Object;Lmp7;)I
    .locals 4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    invoke-interface {p2}, Lmp7;->h()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lpd4;

    iget-object v3, p0, Lt0;->c:Lxb4;

    if-nez v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lpd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v3, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v1, p2, p0, v2, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p2, v3, p0, p1}, Lfd4;->b(Lmp7;Lxb4;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->b:Ljq7;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)F
    .locals 6

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    instance-of v1, v0, Lpd4;

    iget-object v2, p0, Lt0;->c:Lxb4;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lpd4;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but had "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as the serialized body of float"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v2, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v3, v1, p0, v4, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    :try_start_0
    sget-object v1, Lrc4;->a:Li54;

    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v2, Lxb4;->a:Lfc4;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_2

    return v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v2, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v4

    :goto_1
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    invoke-static {v3, p1, v4, v1, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    const-string v1, "float"

    invoke-virtual {p0, v0, v1, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public final i(Ljava/lang/Object;Lmp7;)Lud2;
    .locals 4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lp98;->a(Lmp7;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    invoke-interface {p2}, Lmp7;->h()Ljava/lang/String;

    move-result-object p2

    instance-of v1, v0, Lpd4;

    iget-object v2, p0, Lt0;->c:Lxb4;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lpd4;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but had "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as the serialized body of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v2, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v1, p2, p0, v2, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    invoke-virtual {v0}, Lpd4;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lyp2;->b(Lxb4;Ljava/lang/String;)Lw98;

    move-result-object p0

    new-instance p1, Llc4;

    invoke-direct {p1, p0, v2}, Llc4;-><init>(Lw98;Lxb4;)V

    return-object p1

    :cond_2
    iget-object p2, p0, Lyh5;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "int"

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v1

    instance-of v2, v1, Lpd4;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lpd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of int"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v2, v0, p1, v3, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Lpd4;

    :try_start_0
    invoke-static {v1}, Lrc4;->b(Lpd4;)J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final k(Ljava/lang/Object;)J
    .locals 4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    instance-of v1, v0, Lpd4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lpd4;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but had "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-virtual {v3}, Lzk1;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as the serialized body of long"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v3, v1, p1, v2, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    :try_start_0
    invoke-static {v0}, Lrc4;->b(Lpd4;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-string v1, "long"

    invoke-virtual {p0, v0, v1, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public final l(Ljava/lang/Object;)S
    .locals 8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "short"

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v1

    instance-of v2, v1, Lpd4;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lpd4;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but had "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v2}, Lzk1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the serialized body of short"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lt0;->c:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v2, v0, p1, v3, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v1, Lpd4;

    :try_start_0
    invoke-static {v1}, Lrc4;->b(Lpd4;)J

    move-result-wide v4

    const-wide/16 v6, -0x8000

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    const-wide/16 v6, 0x7fff

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    long-to-int v2, v4

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_3
    :try_start_1
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-virtual {p0, v1, v0, p1}, Lt0;->v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public final m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    instance-of v1, v0, Lpd4;

    iget-object v2, p0, Lt0;->c:Lxb4;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Expected "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lpd4;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", but had "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-virtual {v5}, Lzk1;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " as the serialized body of string"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v2, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v3, v1, p0, v4, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lpd4;

    instance-of v1, v0, Lcd4;

    if-nez v1, :cond_3

    const-string v0, "Expected string value for a non-null key \'"

    const-string v1, "\', got null literal instead"

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v2, Lxb4;->a:Lfc4;

    iget-boolean v1, v1, Lfc4;->h:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance p0, Lkotlinx/serialization/json/JsonDecodingException;

    const-string v1, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    invoke-static {v3, v0, p1, v1, v4}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast v0, Lcd4;

    iget-boolean v1, v0, Lcd4;->b:Z

    if-nez v1, :cond_5

    iget-object v0, v2, Lxb4;->a:Lfc4;

    const-string v0, "String literal for value of key \'"

    const-string v1, "\' should be quoted"

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v2, Lxb4;->a:Lfc4;

    iget-boolean v1, v1, Lfc4;->h:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    new-instance p0, Lkotlinx/serialization/json/JsonDecodingException;

    const-string v1, "Use \'isLenient = true\' in \'Json {}\' builder to accept non-compliant JSON."

    invoke-static {v3, v0, p1, v1, v4}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p0, v0, Lcd4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public abstract r(Ljava/lang/String;)Loc4;
.end method

.method public final s()Loc4;
    .locals 1

    iget-object v0, p0, Lyh5;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lt0;->r(Ljava/lang/String;)Loc4;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lt0;->t()Loc4;

    move-result-object p0

    return-object p0
.end method

.method public abstract t()Loc4;
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyh5;->q()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lpd4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "i"

    invoke-static {p2, v1, v0}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "an "

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_0
    const-string v0, "a "

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse literal \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' as "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Lt0;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lt0;->c:Lxb4;

    iget-object p3, p3, Lxb4;->a:Lfc4;

    iget-boolean p3, p3, Lfc4;->h:Z

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lt0;->s()Loc4;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-object p0, v1

    :goto_2
    new-instance p3, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v0, p1, p2, v1, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
