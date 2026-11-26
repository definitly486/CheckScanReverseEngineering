.class public Lcom/google/gson/internal/bind/JsonElementTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lpc4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/gson/internal/bind/JsonElementTypeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->a:Lcom/google/gson/internal/bind/JsonElementTypeAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/gson/stream/JsonReader;)Lpc4;
    .locals 8

    instance-of v0, p0, Lce4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lce4;

    invoke-virtual {p0}, Lce4;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lce4;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-virtual {p0}, Lce4;->skipValue()V

    return-object v0

    :cond_0
    const-string p0, "Unexpected "

    const-string v2, " when reading a JsonElement."

    invoke-static {v0, p0, v2}, Lc9;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->f(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p0, v0}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->e(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    instance-of v3, v2, Lkd4;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->f(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_6

    invoke-static {p0, v4}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->e(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;

    move-result-object v5

    :cond_6
    instance-of v4, v2, Lac4;

    if-eqz v4, :cond_8

    move-object v3, v2

    check-cast v3, Lac4;

    if-nez v5, :cond_7

    sget-object v4, Lhd4;->b:Lhd4;

    goto :goto_3

    :cond_7
    move-object v4, v5

    :goto_3
    iget-object v3, v3, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object v4, v2

    check-cast v4, Lkd4;

    iget-object v4, v4, Lkd4;->b:Lxq4;

    if-nez v5, :cond_9

    sget-object v7, Lhd4;->b:Lhd4;

    goto :goto_4

    :cond_9
    move-object v7, v5

    :goto_4
    invoke-virtual {v4, v3, v7}, Lxq4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v6, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v2, v5

    goto :goto_0

    :cond_a
    instance-of v3, v2, Lac4;

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpc4;

    goto :goto_0
.end method

.method public static e(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;
    .locals 2

    sget-object v0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object p0, Lhd4;->b:Lhd4;

    return-object p0

    :cond_0
    const-string p0, "Unexpected token: "

    invoke-static {p1, p0}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p1, Lqd4;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lqd4;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lqd4;

    new-instance v0, Lbl4;

    invoke-direct {v0, p0}, Lbl4;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lqd4;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    new-instance p1, Lqd4;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lqd4;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static f(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lpc4;
    .locals 1

    sget-object v0, Lcom/google/gson/internal/bind/JsonElementTypeAdapter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    new-instance p0, Lkd4;

    invoke-direct {p0}, Lkd4;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    new-instance p0, Lac4;

    invoke-direct {p0}, Lac4;-><init>()V

    return-object p0
.end method

.method public static g(Lpc4;Lcom/google/gson/stream/JsonWriter;)V
    .locals 2

    if-eqz p0, :cond_8

    instance-of v0, p0, Lhd4;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p0, Lqd4;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lpc4;->f()Lqd4;

    move-result-object p0

    iget-object v0, p0, Lqd4;->b:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lqd4;->j()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lqd4;->a()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_2
    invoke-virtual {p0}, Lqd4;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_3
    instance-of v0, p0, Lac4;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0}, Lpc4;->c()Lac4;

    move-result-object p0

    iget-object p0, p0, Lac4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->g(Lpc4;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_5
    instance-of v0, p0, Lkd4;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0}, Lpc4;->d()Lkd4;

    move-result-object p0

    iget-object p0, p0, Lkd4;->b:Lxq4;

    invoke-virtual {p0}, Lxq4;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lxq4$b;

    invoke-virtual {p0}, Lxq4$b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    move-object v0, p0

    check-cast v0, Lxq4$d;

    invoke-virtual {v0}, Lxq4$d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lxq4$b$a;

    invoke-virtual {v0}, Lxq4$d;->a()Lxq4$e;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc4;

    invoke-static {v0, p1}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->g(Lpc4;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_7
    const-string p1, "Couldn\'t write "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lmz0;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->d(Lcom/google/gson/stream/JsonReader;)Lpc4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lpc4;

    invoke-static {p2, p1}, Lcom/google/gson/internal/bind/JsonElementTypeAdapter;->g(Lpc4;Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method
