.class public final Lrs6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lrs6;


# instance fields
.field public final a:Ltz4;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrs6;

    invoke-direct {v0}, Lrs6;-><init>()V

    sput-object v0, Lrs6;->c:Lrs6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lrs6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ltz4;

    invoke-direct {v0}, Ltz4;-><init>()V

    iput-object v0, p0, Lrs6;->a:Ltz4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/protobuf/f0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/f0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/q;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrs6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/f0;

    if-nez v1, :cond_a

    sget-object v1, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/protobuf/o;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/g0;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v3

    :cond_1
    :goto_0
    iget-object p0, p0, Lrs6;->a:Ltz4;

    iget-object p0, p0, Ltz4;->a:Ltz4$c;

    invoke-virtual {p0, p1}, Ltz4$c;->messageInfoFor(Ljava/lang/Class;)Lfa5;

    move-result-object v4

    invoke-interface {v4}, Lfa5;->isMessageSetWireFormat()Z

    move-result p0

    const-string v2, "Protobuf runtime is not correctly loaded."

    if-eqz p0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/protobuf/g0;->c:Lcom/google/protobuf/l0;

    sget-object v1, Lv43;->a:Lcom/google/protobuf/l;

    invoke-interface {v4}, Lfa5;->getDefaultInstance()Lcom/google/protobuf/a0;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/d0;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/protobuf/d0;-><init>(Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/a0;)V

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lcom/google/protobuf/g0;->b:Lcom/google/protobuf/j0;

    sget-object v1, Lv43;->b:Lcom/google/protobuf/k;

    if-eqz v1, :cond_3

    invoke-interface {v4}, Lfa5;->getDefaultInstance()Lcom/google/protobuf/a0;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/d0;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/protobuf/d0;-><init>(Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/a0;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    sget-object p0, Ltz4$b;->a:[I

    invoke-interface {v4}, Lfa5;->getSyntax()Lqs6;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p0, p0, v2

    if-eq p0, v1, :cond_5

    sget-object v5, Lcn5;->b:Lbn5;

    sget-object v6, Lcom/google/protobuf/u;->b:Lcom/google/protobuf/u$b;

    sget-object v7, Lcom/google/protobuf/g0;->c:Lcom/google/protobuf/l0;

    sget-object v8, Lv43;->a:Lcom/google/protobuf/l;

    sget-object v9, Lzz4;->b:Lcom/google/protobuf/z;

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/c0;->x(Lfa5;Lan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)Lcom/google/protobuf/c0;

    move-result-object v3

    goto :goto_1

    :cond_5
    sget-object v5, Lcn5;->b:Lbn5;

    sget-object v6, Lcom/google/protobuf/u;->b:Lcom/google/protobuf/u$b;

    sget-object v7, Lcom/google/protobuf/g0;->c:Lcom/google/protobuf/l0;

    const/4 v8, 0x0

    sget-object v9, Lzz4;->b:Lcom/google/protobuf/z;

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/c0;->x(Lfa5;Lan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)Lcom/google/protobuf/c0;

    move-result-object v3

    goto :goto_1

    :cond_6
    sget-object p0, Ltz4$b;->a:[I

    invoke-interface {v4}, Lfa5;->getSyntax()Lqs6;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p0, p0, v5

    if-eq p0, v1, :cond_8

    sget-object v5, Lcn5;->a:Lan5;

    sget-object v6, Lcom/google/protobuf/u;->a:Lcom/google/protobuf/u$a;

    sget-object v7, Lcom/google/protobuf/g0;->b:Lcom/google/protobuf/j0;

    sget-object v8, Lv43;->b:Lcom/google/protobuf/k;

    if-eqz v8, :cond_7

    sget-object v9, Lzz4;->a:Lcom/google/protobuf/y;

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/c0;->x(Lfa5;Lan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)Lcom/google/protobuf/c0;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-static {v2}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_8
    sget-object v5, Lcn5;->a:Lan5;

    sget-object v6, Lcom/google/protobuf/u;->a:Lcom/google/protobuf/u$a;

    sget-object v7, Lcom/google/protobuf/g0;->b:Lcom/google/protobuf/j0;

    const/4 v8, 0x0

    sget-object v9, Lzz4;->a:Lcom/google/protobuf/y;

    invoke-static/range {v4 .. v9}, Lcom/google/protobuf/c0;->x(Lfa5;Lan5;Lcom/google/protobuf/u;Lcom/google/protobuf/j0;Lcom/google/protobuf/k;Lcom/google/protobuf/y;)Lcom/google/protobuf/c0;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/f0;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    return-object v3

    :cond_a
    return-object v1
.end method
