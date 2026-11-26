.class public final Lcom/tapjoy/internal/m0;
.super Lcom/tapjoy/internal/l;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Map;


# instance fields
.field public final b:Lcom/tapjoy/internal/k;

.field public final c:Lcom/tapjoy/internal/k;

.field public final d:Lcom/tapjoy/internal/k;

.field public final e:Lcom/tapjoy/internal/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/m0;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/tapjoy/internal/l;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tapjoy/internal/m0;->b:Lcom/tapjoy/internal/k;

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tapjoy/internal/m0;->c:Lcom/tapjoy/internal/k;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tapjoy/internal/m0;->d:Lcom/tapjoy/internal/k;

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/tapjoy/internal/m0;->e:Lcom/tapjoy/internal/k;

    new-instance v0, Lcom/tapjoy/internal/k;

    invoke-direct {v0}, Lcom/tapjoy/internal/k;-><init>()V

    iget-object p0, p0, Lcom/tapjoy/internal/l;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "placement_request_content_retry_timeout"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Number;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "placement_request_content_retry_backoff"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p0, v0, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "final"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "default"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/m0;->b:Lcom/tapjoy/internal/k;

    iput-object v0, v1, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/tapjoy/internal/m0;->e:Lcom/tapjoy/internal/k;

    iput-object p1, v0, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tapjoy/internal/l;->setChanged()V

    return-void
.end method
