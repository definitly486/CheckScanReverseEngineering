.class public final Lyads/xb6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/q84;

.field public final c:Lyads/vb6;

.field public d:Lyads/vh3;

.field public e:Lyads/wb6;

.field public f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/d9;Lyads/t5;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p2, Lyads/vb6;

    invoke-direct {p2, p4}, Lyads/vb6;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/xb6;->a:Lyads/d9;

    iput-object p1, p0, Lyads/xb6;->b:Lyads/q84;

    iput-object p2, p0, Lyads/xb6;->c:Lyads/vb6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lyads/xb6;->f:Ljava/util/Map;

    sget-object v1, Lmx2;->b:Lmx2;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lyads/xb6;->d:Lyads/vh3;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lv39;->e(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_2
    sget-object p0, Lyads/n70;->c:Lyads/m70;

    const-string p0, "instream"

    const-string p1, "ad_type"

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lyads/xb6;->e:Lyads/wb6;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lyads/wb6;->a()Lyads/h75;

    move-result-object v0

    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v0, Lyads/g75;

    sget-object v1, Lyads/e75;->c:Lyads/e75;

    iget-object v1, p0, Lyads/xb6;->a:Lyads/d9;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lyads/d9;->i:Lyads/c;

    :cond_6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string p1, "video_ad_rendering_result"

    invoke-direct {v0, p1, v1, v2}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/xb6;->b:Lyads/q84;

    invoke-virtual {p0, v0}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
