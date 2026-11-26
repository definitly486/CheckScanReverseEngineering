.class public final Lyads/vs5;
.super Lyads/r75;
.source "SourceFile"


# instance fields
.field public final s:Ljava/lang/Object;

.field public t:Lyads/y85;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/y85;Lyads/x85;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lyads/r75;-><init>(ILjava/lang/String;Lyads/x85;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vs5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lyads/vs5;->t:Lyads/y85;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Lyads/z85;
    .locals 2

    :try_start_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lyads/en4;->b:[B

    iget-object v1, p1, Lyads/en4;->c:Ljava/util/Map;

    invoke-static {v1}, Lyads/pa3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lyads/en4;->b:[B

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p1

    new-instance v0, Lyads/z85;

    invoke-direct {v0, p0, p1}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 31
    invoke-super {p0}, Lyads/r75;->a()V

    .line 32
    iget-object v0, p0, Lyads/vs5;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 33
    :try_start_0
    iput-object v1, p0, Lyads/vs5;->t:Lyads/y85;

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lyads/vs5;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object p0, p0, Lyads/vs5;->t:Lyads/y85;

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0, p1}, Lyads/y85;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
