.class public abstract Lcom/tapjoy/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/tapjoy/internal/z;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/z;->a(I)V

    :goto_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/z;->e()I

    iget v2, v1, Lcom/tapjoy/internal/z;->i:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/internal/z;->e()I

    iget v2, v1, Lcom/tapjoy/internal/z;->i:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/internal/z;->e()I

    const/4 v3, 0x0

    iput v3, v1, Lcom/tapjoy/internal/z;->i:I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput-object v3, v1, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/internal/x;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/z;->e()I

    move-result p0

    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected a name but was "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/z;->a(I)V

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 9

    move-object v0, p0

    check-cast v0, Lcom/tapjoy/internal/z;

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/internal/c0;->a(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_c

    if-eq v2, v4, :cond_b

    const/4 p0, 0x5

    const-string v4, "Expected a string but was "

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v2, p0, :cond_8

    if-eq v2, v6, :cond_5

    const/16 p0, 0x8

    if-eq v2, v5, :cond_2

    if-ne v2, p0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iget p0, v0, Lcom/tapjoy/internal/z;->i:I

    const/16 v1, 0x9

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iput v7, v0, Lcom/tapjoy/internal/z;->i:I

    iput-object v8, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput-object v8, v0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    return-object v8

    :cond_0
    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected null but was "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_1
    invoke-static {v1}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected a value but was "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iget v1, v0, Lcom/tapjoy/internal/z;->i:I

    if-ne v1, p0, :cond_4

    iget-object p0, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    const-string v1, "true"

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v7

    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iput v7, v0, Lcom/tapjoy/internal/z;->i:I

    iput-object v8, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput-object v8, v0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v1}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Expected a boolean but was "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_5
    new-instance p0, Lcom/tapjoy/internal/s0;

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iget v1, v0, Lcom/tapjoy/internal/z;->i:I

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    move-result p0

    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iput v7, v0, Lcom/tapjoy/internal/z;->i:I

    iput-object v8, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput-object v8, v0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/s0;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_8
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iget p0, v0, Lcom/tapjoy/internal/z;->i:I

    if-eq p0, v6, :cond_a

    if-ne p0, v5, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    move-result p0

    invoke-static {p0}, Lcom/tapjoy/internal/b0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_a
    :goto_2
    iget-object p0, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iput v7, v0, Lcom/tapjoy/internal/z;->i:I

    iput-object v8, v0, Lcom/tapjoy/internal/z;->k:Ljava/lang/String;

    iput-object v8, v0, Lcom/tapjoy/internal/z;->j:Ljava/lang/String;

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/tapjoy/internal/x;->a()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/z;->a(I)V

    :goto_3
    invoke-virtual {v0}, Lcom/tapjoy/internal/z;->e()I

    iget v2, v0, Lcom/tapjoy/internal/z;->i:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d

    if-eq v2, v4, :cond_d

    invoke-virtual {p0}, Lcom/tapjoy/internal/x;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-virtual {v0, v4}, Lcom/tapjoy/internal/z;->a(I)V

    return-object v1
.end method
