.class public Lyads/pq0;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ContextThemeWrapper;

.field public final b:Lyads/nq0;

.field public final c:Landroidx/lifecycle/LifecycleOwner;

.field public d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lyads/c81;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7

    .line 38
    sget v4, Lcom/yandex/mobile/ads/R$style;->monetization_ads_divkit_Div_Theme:I

    .line 39
    sget-object v0, Lyads/jn1;->b:Lyads/in1;

    invoke-virtual {v0, p1}, Lyads/in1;->a(Landroid/content/Context;)Lyads/jn1;

    move-result-object v0

    .line 40
    iget-object v1, v0, Lyads/jn1;->a:Lyads/bo1;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v5, Lyads/ea1;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v5, v2, v3}, Lyads/ea1;-><init>(J)V

    .line 43
    iget-object v6, p2, Lyads/c81;->m:Lyads/yf2;

    .line 44
    new-instance v0, Lyads/nq0;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lyads/nq0;-><init>(Lyads/bo1;Landroid/view/ContextThemeWrapper;Lyads/c81;ILyads/ea1;Lyads/yf2;)V

    .line 45
    invoke-direct {p0, v2, v0, p3}, Lyads/pq0;-><init>(Landroid/view/ContextThemeWrapper;Lyads/nq0;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lyads/nq0;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lyads/pq0;->a:Landroid/view/ContextThemeWrapper;

    iput-object p2, p0, Lyads/pq0;->b:Lyads/nq0;

    iput-object p3, p0, Lyads/pq0;->c:Landroidx/lifecycle/LifecycleOwner;

    new-instance p1, Lr54;

    const/4 p3, 0x4

    invoke-direct {p1, p0, p3}, Lr54;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lfh8;

    invoke-direct {p0, p1}, Lfh8;-><init>(Lll3;)V

    iget-object p0, p2, Lyads/nq0;->e:Lyads/ea1;

    iget-wide p1, p0, Lyads/ea1;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lyads/ea1;->b:J

    return-void
.end method

.method public static final a(Lyads/pq0;)Lyads/m73;
    .locals 1

    new-instance v0, Lyads/m73;

    iget-object p0, p0, Lyads/pq0;->b:Lyads/nq0;

    iget-object p0, p0, Lyads/nq0;->f:Lyads/yf2;

    invoke-direct {v0}, Lyads/m73;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lyads/pq0;->d:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lyads/pq0;->d:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    iget-object p1, p0, Lyads/pq0;->a:Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/oq0;

    invoke-direct {v0, p0}, Lyads/oq0;-><init>(Lyads/pq0;)V

    invoke-static {p1, v0}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    iput-object p1, p0, Lyads/pq0;->d:Landroid/view/LayoutInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1

    :cond_2
    iget-object p0, p0, Lyads/pq0;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
