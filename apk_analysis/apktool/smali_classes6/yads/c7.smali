.class public final Lyads/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e40;

.field public final b:Lyads/xh4;

.field public final c:Lyads/g34;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/e40;

    invoke-direct {v0}, Lyads/e40;-><init>()V

    new-instance v1, Lyads/xh4;

    invoke-direct {v1}, Lyads/xh4;-><init>()V

    new-instance v2, Lyads/g34;

    invoke-direct {v2}, Lyads/g34;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/c7;->a:Lyads/e40;

    iput-object v1, p0, Lyads/c7;->b:Lyads/xh4;

    iput-object v2, p0, Lyads/c7;->c:Lyads/g34;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;Lyads/e4;Ljava/lang/String;Lyads/l24;)Lyads/h75;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lyads/d9;->m:Lyads/p60;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lyads/p60;->b:Lyads/p60;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lyads/d9;->t:Ljava/lang/Object;

    instance-of v2, v1, Lyads/vg4;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lyads/vg4;

    :cond_1
    iget-object v1, p0, Lyads/c7;->b:Lyads/xh4;

    invoke-virtual {v1, p2, p1, v0}, Lyads/xh4;->a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lyads/c7;->a:Lyads/e40;

    invoke-virtual {v0, p2, p1}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p1

    :goto_1
    const-string p2, "verification_network"

    invoke-virtual {p1, p3, p2}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    iget-object p2, p4, Lyads/l24;->b:Lyads/x54;

    iget-object p2, p2, Lyads/x54;->b:Ljava/lang/String;

    const-string p3, "adapter"

    invoke-virtual {p1, p2, p3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyads/c7;->c:Lyads/g34;

    iget-object p2, p4, Lyads/l24;->c:Lyads/o24;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/g34;->a(Lyads/o24;)Ljava/util/Map;

    move-result-object p0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "null"

    invoke-static {p4, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p4, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object p1
.end method
