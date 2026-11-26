.class public final Lcom/tapjoy/internal/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/util/List;

.field public final e:Lcom/tapjoy/internal/w0;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/w0;

    invoke-direct {v0}, Lcom/tapjoy/internal/w0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->b:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->c:Ljava/lang/Integer;

    sget-object v1, Lkx2;->b:Lkx2;

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/tapjoy/internal/y1;->e:Lcom/tapjoy/internal/w0;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserIdIfNotEmpty()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserLevelIfNeeded()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserSegmentInt()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/y1;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserTags()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/y1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    const-string v1, "publisher_user_id"

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getUserSegmentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_segment"

    invoke-static {p1, v1, v0, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/y1;->b:Ljava/lang/Integer;

    const-string v1, "user_level"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/tapjoy/internal/y1;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v3, Ljava/lang/String;

    const-string v5, "user_tags["

    const-string v6, "]"

    invoke-static {v1, v5, v6}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/internal/y1;->e:Lcom/tapjoy/internal/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/internal/w0;->a:Ljava/lang/Long;

    const-string v1, "uptime"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/tapjoy/internal/w0;->b:Lcom/tapjoy/internal/r1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/tapjoy/internal/r1;->a:Ljava/lang/String;

    const-string v1, "purchase_currency"

    invoke-static {p1, v1, v0, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/r1;->b:Ljava/lang/Double;

    const-string v1, "purchase_total_price"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/tapjoy/internal/r1;->d:Ljava/lang/Double;

    const-string v1, "purchase_last_price"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/tapjoy/internal/r1;->c:Ljava/lang/Long;

    const-string v1, "purchase_last_at"

    invoke-static {p1, v1, v0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/tapjoy/internal/r1;->e:Ljava/lang/Integer;

    const-string v0, "purchase_total_count"

    invoke-static {p1, v0, p0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
