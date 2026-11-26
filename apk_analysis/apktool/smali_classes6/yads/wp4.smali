.class public final Lyads/wp4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/aq4;

.field public final c:Lyads/z75;

.field public final d:Lyads/zg5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lyads/wp4;->a:Landroid/content/Context;

    invoke-static {p1}, Lyads/bq4;->a(Landroid/content/Context;)Lyads/aq4;

    move-result-object p1

    iput-object p1, p0, Lyads/wp4;->b:Lyads/aq4;

    sget-object p1, Lyads/z75;->b:Lyads/z75;

    if-nez p1, :cond_1

    sget-object p1, Lyads/z75;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lyads/z75;->b:Lyads/z75;

    if-nez v0, :cond_0

    new-instance v0, Lyads/z75;

    invoke-direct {v0}, Lyads/z75;-><init>()V

    sput-object v0, Lyads/z75;->b:Lyads/z75;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    move-object p1, v0

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    :goto_2
    iput-object p1, p0, Lyads/wp4;->c:Lyads/z75;

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object p1

    iput-object p1, p0, Lyads/wp4;->d:Lyads/zg5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/yp4;)V
    .locals 3

    iget-object v0, p0, Lyads/wp4;->d:Lyads/zg5;

    iget-object v1, p0, Lyads/wp4;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/fe5;->U:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyads/wp4;->b:Lyads/aq4;

    iget-object v1, v1, Lyads/aq4;->a:Lyads/zu3;

    check-cast v1, Lyads/av3;

    const-string v2, "YmadOmSdkJsUrl"

    invoke-virtual {v1, v2}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lyads/vp4;

    invoke-direct {v1, p0, v0, p1}, Lyads/vp4;-><init>(Lyads/wp4;Ljava/lang/String;Lyads/yp4;)V

    new-instance p1, Lyads/vs5;

    invoke-direct {p1, v0, v1, v1}, Lyads/vs5;-><init>(Ljava/lang/String;Lyads/y85;Lyads/x85;)V

    const-string v0, "om_sdk_js_request_tag"

    iput-object v0, p1, Lyads/r75;->q:Ljava/lang/Object;

    iget-object v0, p0, Lyads/wp4;->c:Lyads/z75;

    iget-object p0, p0, Lyads/wp4;->a:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyads/e85;->a(Lyads/r75;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lyads/yp4;->a()V

    return-void
.end method
