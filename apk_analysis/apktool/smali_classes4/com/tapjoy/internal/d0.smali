.class public final Lcom/tapjoy/internal/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/StringWriter;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/a0;->f:Lcom/tapjoy/internal/a0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ":"

    iput-object v0, p0, Lcom/tapjoy/internal/d0;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/a0;Lcom/tapjoy/internal/a0;Ljava/lang/String;)Lcom/tapjoy/internal/d0;
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 438
    invoke-static {v1, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 439
    check-cast v0, Lcom/tapjoy/internal/a0;

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    const-string p1, "Nesting problem: "

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 441
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    iget-object p1, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    const-string v0, "null"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_7

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    const-string v2, "Numeric values must be finite, but was "

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    :cond_4
    invoke-static {v2, v3, v4}, Lav;->d(Ljava/lang/String;D)V

    return-void

    :cond_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-Infinity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Infinity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "NaN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    :cond_6
    invoke-static {p1, v2}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v2, p1, Lcom/tapjoy/internal/v;

    if-nez v2, :cond_13

    instance-of v2, p1, Ljava/util/Collection;

    const-string v3, "]"

    const-string v4, "["

    const/4 v5, 0x1

    if-eqz v2, :cond_a

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    sget-object v0, Lcom/tapjoy/internal/a0;->b:Lcom/tapjoy/internal/a0;

    invoke-virtual {p0, p1, v0, v3}, Lcom/tapjoy/internal/d0;->a(Lcom/tapjoy/internal/a0;Lcom/tapjoy/internal/a0;Ljava/lang/String;)Lcom/tapjoy/internal/d0;

    return-void

    :cond_a
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_e

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/tapjoy/internal/a0;->c:Lcom/tapjoy/internal/a0;

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/a0;

    sget-object v3, Lcom/tapjoy/internal/a0;->e:Lcom/tapjoy/internal/a0;

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/tapjoy/internal/a0;->c:Lcom/tapjoy/internal/a0;

    if-ne v2, v3, :cond_c

    :goto_3
    sget-object v2, Lcom/tapjoy/internal/a0;->d:Lcom/tapjoy/internal/a0;

    iget-object v3, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    const-string p1, "Nesting problem: "

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_d
    sget-object p1, Lcom/tapjoy/internal/a0;->c:Lcom/tapjoy/internal/a0;

    sget-object v0, Lcom/tapjoy/internal/a0;->e:Lcom/tapjoy/internal/a0;

    const-string v1, "}"

    invoke-virtual {p0, p1, v0, v1}, Lcom/tapjoy/internal/d0;->a(Lcom/tapjoy/internal/a0;Lcom/tapjoy/internal/a0;Ljava/lang/String;)Lcom/tapjoy/internal/d0;

    return-void

    :cond_e
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_10

    check-cast p1, Ljava/util/Date;

    sget-object v2, Lcom/tapjoy/internal/n;->a:Lcom/tapjoy/internal/m;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_12

    check-cast p1, [Ljava/lang/Object;

    sget-object v0, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    invoke-virtual {p0, v5}, Lcom/tapjoy/internal/d0;->a(Z)V

    iget-object v2, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    sget-object p1, Lcom/tapjoy/internal/a0;->a:Lcom/tapjoy/internal/a0;

    sget-object v0, Lcom/tapjoy/internal/a0;->b:Lcom/tapjoy/internal/a0;

    invoke-virtual {p0, p1, v0, v3}, Lcom/tapjoy/internal/d0;->a(Lcom/tapjoy/internal/a0;Lcom/tapjoy/internal/a0;Ljava/lang/String;)Lcom/tapjoy/internal/d0;

    return-void

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown type: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_13
    check-cast p1, Lcom/tapjoy/internal/v;

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/d0;->a(Z)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 458
    iget-object v0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 460
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_4

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    const/16 v4, 0x2028

    const-string v5, "\\u%04x"

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2029

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 461
    iget-object v4, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_0

    .line 462
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_0
    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 464
    :pswitch_0
    iget-object v3, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :pswitch_1
    iget-object v3, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :pswitch_2
    iget-object v3, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_2
    iget-object v4, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 469
    iget-object v4, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :cond_4
    iget-object v3, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 472
    :cond_5
    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 444
    invoke-static {v1, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    .line 445
    check-cast v0, Lcom/tapjoy/internal/a0;

    .line 446
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    .line 447
    const-string p1, "Nesting problem: "

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_0
    const-string p0, "JSON must have only one top-level value."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 449
    sget-object p1, Lcom/tapjoy/internal/a0;->g:Lcom/tapjoy/internal/a0;

    .line 450
    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 451
    :cond_2
    const-string p0, "JSON must start with an array or an object."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    .line 452
    :cond_3
    iget-object p1, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    iget-object v0, p0, Lcom/tapjoy/internal/d0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 453
    sget-object p1, Lcom/tapjoy/internal/a0;->e:Lcom/tapjoy/internal/a0;

    .line 454
    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 455
    :cond_4
    iget-object p0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void

    .line 456
    :cond_5
    sget-object p1, Lcom/tapjoy/internal/a0;->b:Lcom/tapjoy/internal/a0;

    .line 457
    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object p0, p0, Lcom/tapjoy/internal/d0;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/a0;

    sget-object v0, Lcom/tapjoy/internal/a0;->g:Lcom/tapjoy/internal/a0;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "Incomplete document"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method
