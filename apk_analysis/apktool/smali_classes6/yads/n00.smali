.class public final Lyads/n00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/n00;->a:Lyads/e4;

    iput-object p2, p0, Lyads/n00;->b:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/n70;Lyads/qy4;Ljava/lang/Long;)V
    .locals 6

    sget-object v0, Lmx2;->b:Lmx2;

    invoke-static {v0}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    const-string v1, "undefined"

    const-string v3, "ad_type"

    if-nez p2, :cond_2

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string p2, "duration"

    if-nez p4, :cond_3

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {p3}, Lyads/sy4;->a(Lyads/qy4;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p3, "adapter"

    invoke-virtual {p2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p3, Lyads/e95;

    invoke-direct {p3}, Lyads/e95;-><init>()V

    new-instance p4, Lyads/u8;

    invoke-direct {p4}, Lyads/u8;-><init>()V

    iget-object v3, p0, Lyads/n00;->a:Lyads/e4;

    invoke-virtual {p3, v3, v2}, Lyads/e95;->b(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p3

    iget-object v4, v3, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {p4, v4}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object p4

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v4}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    if-nez v4, :cond_5

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_5
    iget v3, v3, Lyads/e4;->n:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, "landscape"

    goto :goto_4

    :cond_7
    const-string v1, "portrait"

    :goto_4
    const-string v3, "orientation"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p3

    iget-object p4, p3, Lyads/h75;->b:Lyads/c;

    if-nez p4, :cond_8

    move-object p4, v2

    :cond_8
    iget-object p3, p3, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p3, v4}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p3

    new-instance v1, Lyads/h75;

    invoke-direct {v1, p3, p4}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    iget-object p3, v1, Lyads/h75;->b:Lyads/c;

    iget-object p4, v1, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {v0, p4}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p4

    invoke-static {p4}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move-object p4, v2

    :goto_5
    if-nez p4, :cond_a

    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_a
    sget-object v0, Lyads/e75;->B:Lyads/e75;

    new-instance v1, Lyads/g75;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, p4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p4, "client_bidding_loading_result"

    invoke-direct {v1, p4, v3, p3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p3, p0, Lyads/n00;->b:Lyads/bf5;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/n00;->b:Lyads/bf5;

    check-cast p0, Lyads/do6;

    new-instance p3, Lyads/lm6;

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {p3, p0}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p3}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p0

    invoke-virtual {p0, v1}, Lyads/q84;->a(Lyads/g75;)V

    new-instance p0, Lyads/le;

    invoke-direct {p0, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v3, p2, v2}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    return-void
.end method
