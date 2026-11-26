.class public final Lyads/l00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/e4;

.field public final c:Lyads/re4;

.field public final d:Lyads/q84;

.field public final e:Lyads/e40;

.field public final f:Lyads/le;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/re4;)V
    .locals 2

    check-cast p4, Lyads/do6;

    iget-object p4, p4, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p4, p4}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p4

    new-instance v0, Lyads/e40;

    invoke-direct {v0}, Lyads/e40;-><init>()V

    new-instance v1, Lyads/le;

    invoke-direct {v1, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/l00;->a:Lyads/d9;

    iput-object p3, p0, Lyads/l00;->b:Lyads/e4;

    iput-object p5, p0, Lyads/l00;->c:Lyads/re4;

    iput-object p4, p0, Lyads/l00;->d:Lyads/q84;

    iput-object v0, p0, Lyads/l00;->e:Lyads/e40;

    iput-object v1, p0, Lyads/l00;->f:Lyads/le;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e75;Ljava/util/Map;)Lyads/g75;
    .locals 4

    invoke-static {p2}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    sget-object v0, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    if-nez v0, :cond_2

    const-string v0, "undefined"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lyads/l00;->e:Lyads/e40;

    iget-object v2, p0, Lyads/l00;->a:Lyads/d9;

    iget-object v3, p0, Lyads/l00;->b:Lyads/e4;

    invoke-virtual {v0, v3, v2}, Lyads/e40;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object v0

    iget-object v2, v0, Lyads/h75;->b:Lyads/c;

    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p2, v0}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-static {p2}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p2

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_4
    iget-object p2, p0, Lyads/l00;->b:Lyads/e4;

    iget-object p2, p2, Lyads/e4;->d:Lyads/tl5;

    iget-object p2, p2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v0

    iget-object v0, v0, Lyads/rl5;->b:Ljava/lang/String;

    const-string v3, "size_type"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lyads/sl5;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "width"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lyads/sl5;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, p0, Lyads/l00;->c:Lyads/re4;

    if-eqz p0, :cond_8

    new-instance p2, Luz4;

    invoke-direct {p2}, Luz4;-><init>()V

    iget-object v0, p0, Lyads/re4;->a:Ljava/lang/String;

    const-string v3, "asset_name"

    invoke-virtual {p2, v3, v0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action_type"

    const-string v3, "url"

    invoke-virtual {p2, v0, v3}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/re4;->b:Lyads/zh4;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lyads/zh4;->a()Lyads/h75;

    move-result-object v0

    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-virtual {p2, v0}, Luz4;->putAll(Ljava/util/Map;)V

    :cond_6
    iget-object p0, p0, Lyads/re4;->c:Lyads/nn0;

    iget-object p0, p0, Lyads/nn0;->a:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_7

    invoke-virtual {p2, p0}, Luz4;->putAll(Ljava/util/Map;)V

    :cond_7
    invoke-virtual {p2}, Luz4;->b()Luz4;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_8
    new-instance p0, Lyads/g75;

    iget-object p1, p1, Lyads/e75;->b:Ljava/lang/String;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, p2, v2}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p0
.end method
