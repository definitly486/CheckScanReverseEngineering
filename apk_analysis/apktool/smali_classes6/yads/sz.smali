.class public final Lyads/sz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tk;

.field public final b:Lyads/zz5;

.field public final c:Lyads/uo;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/tk;

    invoke-direct {v0}, Lyads/tk;-><init>()V

    new-instance v1, Lyads/zz5;

    invoke-direct {v1}, Lyads/zz5;-><init>()V

    new-instance v2, Lyads/uo;

    invoke-direct {v2}, Lyads/uo;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/sz;->a:Lyads/tk;

    iput-object v1, p0, Lyads/sz;->b:Lyads/zz5;

    iput-object v2, p0, Lyads/sz;->c:Lyads/uo;

    return-void
.end method

.method public static final b(Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lb36;
    .locals 4

    .line 299
    new-instance v0, Lb3;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lb3;-><init>(I)V

    invoke-static {v0, p1}, Ldp7;->h(Lnl3;Ljava/lang/Object;)Lzo7;

    move-result-object p1

    .line 300
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    instance-of v2, v0, Lyads/m05;

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lyads/sz;->b:Lyads/zz5;

    move-object v3, v0

    check-cast v3, Lyads/m05;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    invoke-virtual {v3}, Lyads/m05;->getTouchRecorder()Lyads/yz5;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    new-instance v1, Lb36;

    invoke-direct {v1, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :cond_1
    instance-of v2, v0, Lyads/o05;

    if-eqz v2, :cond_2

    .line 306
    iget-object v2, p0, Lyads/sz;->c:Lyads/uo;

    move-object v3, v0

    check-cast v3, Lyads/o05;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    invoke-virtual {v3}, Lyads/o05;->a()Lyads/yz5;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 308
    new-instance v1, Lb36;

    invoke-direct {v1, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_0

    :cond_3
    return-object v1
.end method

.method public final a(Landroid/view/View;Ljava/lang/Long;)Ljava/util/LinkedHashMap;
    .locals 8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1}, Lyads/sz;->a(Landroid/view/View;)Lb36;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Lyads/yz5;

    iget-object p1, p1, Lyads/yz5;->a:Landroid/graphics/Point;

    const-string v2, ""

    if-eqz p1, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v2

    :cond_1
    const-string v4, "{CLICK_X}"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v2

    :cond_3
    const-string v3, "{CLICK_Y}"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "{WIDTH}"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "{HEIGHT}"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "{CLICK_TIME}"

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lj59;->a:Lj59;

    goto :goto_1

    :cond_5
    move-object p2, v3

    :goto_1
    if-nez p2, :cond_6

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lyads/sz;->a:Lyads/tk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget p2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_close:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    new-instance v4, Lk57$a;

    invoke-direct {v4, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v4

    :goto_2
    nop

    instance-of v4, p2, Lk57$a;

    if-eqz v4, :cond_7

    move-object p2, v3

    :cond_7
    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_a

    :try_start_1
    const-string p2, "close"

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p2, "skip_button"

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p2, "instream_skip"

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p2, "yma_close_button"

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    new-instance v4, Lk57$a;

    invoke-direct {v4, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v4

    :cond_8
    :goto_3
    nop

    instance-of v4, p2, Lk57$a;

    if-eqz v4, :cond_9

    move-object p2, v3

    :cond_9
    check-cast p2, Landroid/view/View;

    if-nez p2, :cond_a

    move-object p1, v3

    goto :goto_4

    :cond_a
    iget-object p1, p1, Lyads/tk;->a:Lyads/qk;

    invoke-virtual {p1, p2, v1}, Lyads/qk;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_b

    move-object p1, v2

    :cond_b
    const-string p2, "{CLOSE_LOCATION}"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/sz;->a:Lyads/tk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    sget p1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_feedback:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_5
    nop

    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_c

    move-object p1, v3

    :cond_c
    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_f

    :try_start_3
    const-string p1, "feedback"

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "yma_feedback"

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :cond_d
    :goto_6
    nop

    instance-of p2, p1, Lk57$a;

    if-eqz p2, :cond_e

    move-object p1, v3

    :cond_e
    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    iget-object p0, p0, Lyads/tk;->a:Lyads/qk;

    invoke-virtual {p0, p1, v1}, Lyads/qk;->a(Landroid/view/View;Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    move-object v2, v3

    :goto_8
    const-string p0, "{FEEDBACK_LOCATION}"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object v0
.end method
