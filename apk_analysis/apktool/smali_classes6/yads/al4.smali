.class public final Lyads/al4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcl4;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/al4;->a:Landroid/content/Context;

    new-instance p1, Liz0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Liz0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/al4;->b:Lcl4;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final a(Lyads/al4;)Lyads/qk2;
    .locals 0

    .line 139
    iget-object p0, p0, Lyads/al4;->a:Landroid/content/Context;

    invoke-static {p0}, Lyads/ed6;->b(Landroid/content/Context;)Lyads/qk2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 140
    iget-object v0, p0, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lyads/al4;->b:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/qk2;

    if-eqz v2, :cond_0

    .line 142
    iget v3, v2, Lyads/qk2;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lyads/qk2;->c:I

    .line 143
    iget-object v2, v2, Lyads/qk2;->a:Lyads/nk2;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p0, p0, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;Lyads/vc6;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lyads/al4;->b:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/qk2;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Lyads/tk2;

    sget-object p1, Lyads/oe3;->c:Lyads/le3;

    sget-object v5, Lyads/k55;->f:Lyads/k55;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p3

    invoke-direct/range {v1 .. v8}, Lyads/tk2;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[B)V

    iget-object p0, p0, Lyads/al4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lyads/vj6;

    invoke-direct {p0, v2, p2}, Lyads/vj6;-><init>(Ljava/lang/String;Lyads/vc6;)V

    iget-object p1, v0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget p0, v0, Lyads/qk2;->c:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    iput p0, v0, Lyads/qk2;->c:I

    iget-object p0, v0, Lyads/qk2;->a:Lyads/nk2;

    const/4 p2, 0x6

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    iget-boolean p0, v0, Lyads/qk2;->d:Z

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p3, v0, Lyads/qk2;->d:Z

    iget p0, v0, Lyads/qk2;->c:I

    add-int/2addr p0, p1

    iput p0, v0, Lyads/qk2;->c:I

    iget-object p0, v0, Lyads/qk2;->a:Lyads/nk2;

    invoke-virtual {p0, p1, p3, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0}, Lyads/qk2;->a()Z

    move-result p0

    iget-object p1, v0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ok2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    iget-object p0, v0, Lyads/qk2;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ok2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p2}, Lyads/vc6;->b()V

    invoke-virtual {p0}, Lyads/al4;->a()V

    return-void
.end method
