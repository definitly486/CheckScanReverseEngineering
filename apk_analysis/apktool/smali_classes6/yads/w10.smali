.class public final Lyads/w10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final a:Lyads/x10;

.field public final b:Lyads/y10;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/w10;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/x10;Lyads/y10;Lyads/zu3;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/w10;->a:Lyads/x10;

    iput-object p2, p0, Lyads/w10;->b:Lyads/y10;

    invoke-static {}, Lyads/s10;->values()[Lyads/s10;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    aget-object v1, p1, v0

    iget-object v2, p0, Lyads/w10;->b:Lyads/y10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/s10;->c:Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Lyads/av3;

    invoke-virtual {v3, v2}, Lyads/av3;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_1

    :cond_0
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_1

    invoke-static {v3, v2}, Lyads/y10;->a(Lyads/zu3;Lyads/s10;)Lyads/f20;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_3

    iget-object v2, p0, Lyads/w10;->a:Lyads/x10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/s10;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Lyads/av3;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-static {p3, v1}, Lyads/x10;->a(Lyads/zu3;Lyads/s10;)Lyads/f20;

    move-result-object v4

    goto :goto_4

    :cond_3
    move-object v4, v2

    :cond_4
    :goto_4
    invoke-virtual {p0, v4}, Lyads/w10;->a(Lyads/f20;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    check-cast p3, Lyads/av3;

    iget-object p1, p3, Lyads/av3;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p3, Lyads/av3;->d:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1, p3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_6
    iget-object p1, p3, Lyads/av3;->e:Ljava/util/LinkedHashSet;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lyads/f20;)V
    .locals 1

    instance-of v0, p1, Lyads/a20;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/a20;

    iget-boolean p1, p1, Lyads/a20;->a:Z

    iput-boolean p1, p0, Lyads/w10;->e:Z

    return-void

    :cond_0
    instance-of v0, p1, Lyads/b20;

    if-eqz v0, :cond_1

    check-cast p1, Lyads/b20;

    iget-object p1, p1, Lyads/b20;->a:Ljava/lang/String;

    iput-object p1, p0, Lyads/w10;->c:Ljava/lang/String;

    return-void

    :cond_1
    instance-of v0, p1, Lyads/c20;

    if-eqz v0, :cond_2

    check-cast p1, Lyads/c20;

    iget-object p1, p1, Lyads/c20;->a:Ljava/lang/String;

    iput-object p1, p0, Lyads/w10;->d:Ljava/lang/String;

    return-void

    :cond_2
    instance-of v0, p1, Lyads/d20;

    if-eqz v0, :cond_3

    check-cast p1, Lyads/d20;

    iget-object p1, p1, Lyads/d20;->a:Ljava/lang/String;

    iput-object p1, p0, Lyads/w10;->f:Ljava/lang/String;

    return-void

    :cond_3
    instance-of v0, p1, Lyads/e20;

    if-eqz v0, :cond_4

    check-cast p1, Lyads/e20;

    iget-object p1, p1, Lyads/e20;->a:Ljava/lang/String;

    iput-object p1, p0, Lyads/w10;->g:Ljava/lang/String;

    return-void

    :cond_4
    instance-of v0, p1, Lyads/z10;

    if-eqz v0, :cond_5

    check-cast p1, Lyads/z10;

    iget-object p1, p1, Lyads/z10;->a:Ljava/lang/String;

    iput-object p1, p0, Lyads/w10;->h:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 66
    sget-object v0, Lyads/w10;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-boolean p0, p0, Lyads/w10;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyads/w10;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/w10;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyads/w10;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/w10;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyads/w10;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/w10;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyads/w10;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/w10;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
