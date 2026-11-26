.class public abstract Lyads/d35;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/oa4;


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
    sput-object v0, Lyads/d35;->a:Lyads/oa4;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lyads/cp3;->a:Z

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

    sget-boolean p1, Lyads/cp3;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Yandex Mobile Ads"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {p1}, Lyads/u94;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lyads/d35;->a:Lyads/oa4;

    sget-object v0, Lyads/t94;->c:Lyads/t94;

    const-string v1, "Yandex Mobile Ads"

    invoke-virtual {p1, v0, v1, p0}, Lyads/oa4;->a(Lyads/t94;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
