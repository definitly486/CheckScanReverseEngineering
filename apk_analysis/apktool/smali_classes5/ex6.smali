.class public final Lex6;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lex6$c;,
        Lex6$b;,
        Lex6$a;
    }
.end annotation


# instance fields
.field public final f:Lir3;

.field public final g:Lmg5;


# direct methods
.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lir3;

    const-string v2, "helper"

    invoke-static {p1, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Lir3;-><init>(Lio/grpc/h$e;)V

    iput-object v1, p0, Lex6;->f:Lir3;

    sget p1, Lyu3;->a:I

    new-instance p1, Lmg5;

    invoke-direct {p1, v0}, Lmg5;-><init>(I)V

    iput-object p1, p0, Lex6;->g:Lmg5;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    check-cast v2, Lex6$c;

    iget v3, v2, Lex6$c;->a:I

    iget-object v4, v1, Lio/grpc/h$i;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/d;

    iget-object v8, v6, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/SocketAddress;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Lmg5$a;

    iget-object v11, v0, Lex6;->g:Lmg5;

    iget v11, v11, Lmg5;->o:I

    invoke-direct {v10, v7, v7}, Lu1;-><init>(IB)V

    int-to-long v11, v11

    iput-wide v11, v10, Lmg5$a;->c:J

    iput-wide v11, v10, Lmg5$a;->d:J

    iput v7, v10, Lmg5$a;->e:I

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v10, v8}, Lu1;->n([B)Lu1;

    invoke-virtual {v10}, Lu1;->j()Ltu3$a;

    move-result-object v8

    new-instance v9, Lex6$a;

    iget-object v8, v8, Ltu3$a;->c:[B

    array-length v10, v8

    const/4 v11, 0x1

    const/16 v12, 0x8

    if-lt v10, v12, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    move v10, v7

    :goto_1
    const-string v13, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    array-length v14, v8

    invoke-static {v14, v13, v10}, Lo8;->p(ILjava/lang/String;Z)V

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v13, v7

    :goto_2
    array-length v7, v8

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v11, v7, :cond_2

    aget-byte v7, v8, v11

    move-wide v15, v13

    int-to-long v12, v7

    const-wide/16 v17, 0xff

    and-long v12, v12, v17

    mul-int/lit8 v7, v11, 0x8

    shl-long/2addr v12, v7

    or-long v13, v15, v12

    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0x8

    goto :goto_2

    :cond_2
    invoke-direct {v9, v6, v13, v14}, Lex6$a;-><init>(Lio/grpc/d;J)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v4, Lex6$b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v7, v3, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lex6$a;

    iget-object v6, v6, Lex6$a;->a:Lio/grpc/d;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lio/grpc/h$i;->a()Lio/grpc/h$i$a;

    move-result-object v1

    iput-object v4, v1, Lio/grpc/h$i$a;->a:Ljava/util/List;

    invoke-virtual {v1}, Lio/grpc/h$i$a;->a()Lio/grpc/h$i;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Lio/grpc/h$i;->a()Lio/grpc/h$i$a;

    move-result-object v1

    iget-object v2, v2, Lex6$c;->b:Ljava/lang/Object;

    iput-object v2, v1, Lio/grpc/h$i$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lio/grpc/h$i$a;->a()Lio/grpc/h$i;

    move-result-object v1

    iget-object v0, v0, Lex6;->f:Lir3;

    invoke-virtual {v0, v1}, Lir3;->a(Lio/grpc/h$i;)Lh88;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lh88;)V
    .locals 0

    iget-object p0, p0, Lex6;->f:Lir3;

    invoke-virtual {p0, p1}, Ljj3;->b(Lh88;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lex6;->f:Lir3;

    invoke-virtual {p0}, Lir3;->d()V

    return-void
.end method
