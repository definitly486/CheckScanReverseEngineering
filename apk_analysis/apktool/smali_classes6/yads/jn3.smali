.class public abstract Lyads/jn3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/oa4;

.field public static final b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/oa4;->b:Lyads/oa4;

    if-nez v0, :cond_1

    sget-object v0, Lyads/oa4;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/oa4;->b:Lyads/oa4;

    if-nez v1, :cond_0

    new-instance v1, Lyads/oa4;

    invoke-direct {v1}, Lyads/oa4;-><init>()V

    sput-object v1, Lyads/oa4;->b:Lyads/oa4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sput-object v0, Lyads/jn3;->a:Lyads/oa4;

    const-string v0, "YandexAds"

    sput-object v0, Lyads/jn3;->b:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/jn3;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "[Integration] "

    .line 64
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lyads/jn3;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lyads/u94;->a:Lyads/u94;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyads/u94;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/jn3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lyads/jn3;->c:Z

    if-eqz p1, :cond_1

    sget-object p1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {p1}, Lyads/u94;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lyads/jn3;->a:Lyads/oa4;

    sget-object v0, Lyads/t94;->d:Lyads/t94;

    sget-object v1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lyads/oa4;->a(Lyads/t94;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lyads/jn3;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lyads/u94;->a:Lyads/u94;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyads/u94;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/jn3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lyads/jn3;->c:Z

    if-eqz p1, :cond_1

    sget-object p1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {p1}, Lyads/u94;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lyads/jn3;->a:Lyads/oa4;

    sget-object v0, Lyads/t94;->b:Lyads/t94;

    sget-object v1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lyads/oa4;->a(Lyads/t94;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lyads/jn3;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lyads/u94;->a:Lyads/u94;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyads/u94;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/jn3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lyads/jn3;->c:Z

    if-eqz p1, :cond_1

    sget-object p1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {p1}, Lyads/u94;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lyads/jn3;->a:Lyads/oa4;

    sget-object v0, Lyads/t94;->c:Lyads/t94;

    sget-object v1, Lyads/jn3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lyads/oa4;->a(Lyads/t94;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
