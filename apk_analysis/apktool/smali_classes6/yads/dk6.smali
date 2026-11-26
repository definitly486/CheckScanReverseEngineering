.class public final Lyads/dk6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vb4;

.field public final b:Lyads/nl5;


# direct methods
.method public constructor <init>(Lyads/vb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dk6;->a:Lyads/vb4;

    new-instance p1, Lyads/nl5;

    invoke-direct {p1}, Lyads/nl5;-><init>()V

    iput-object p1, p0, Lyads/dk6;->b:Lyads/nl5;

    return-void
.end method

.method public static final a(Lyads/dk6;Ljava/util/Map;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lyads/dk6;->a:Lyads/vb4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p0, p0, Lyads/dk6;->a:Lyads/vb4;

    .line 26
    iget-object v0, p0, Lyads/ls4;->f:Lyads/ha3;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p0, p1}, Lyads/ha3;->a(Lyads/vb4;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lyads/dk6;->b:Lyads/nl5;

    iget-object v1, v0, Lyads/nl5;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lyads/nl5;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lyads/nl5;->b:Z

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-static {p0, p1}, Lyads/dk6;->a(Lyads/dk6;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
