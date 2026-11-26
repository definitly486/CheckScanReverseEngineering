.class public abstract Lyads/l76;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;
    .locals 2

    .line 73
    invoke-static {p3}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    const-string v1, "Variable \'"

    if-nez p3, :cond_1

    .line 74
    const-string p2, "\' not defined!"

    .line 75
    invoke-static {v1, p1, p2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance p2, Lyads/k76;

    invoke-direct {p2, p1, v0}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p2

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p3, p2}, Lyads/u66;->c(Ljava/lang/String;)V

    .line 78
    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 79
    new-instance p3, Lk57$a;

    invoke-direct {p3, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, p3

    .line 80
    :goto_1
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    .line 81
    :cond_2
    const-string p3, "\' mutation failed!"

    .line 82
    invoke-static {v1, p1, p3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p3, Lyads/k76;

    invoke-direct {p3, p1, p2}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method public static a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V
    .locals 2

    invoke-static {p2}, Lyads/w56;->b(Lyads/fs2;)Lyads/z66;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    const-string v1, "Variable \'"

    if-nez p2, :cond_1

    const-string p2, "\' not defined!"

    invoke-static {v1, p1, p2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lyads/k76;

    invoke-direct {p2, p1, v0}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p3, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/u66;

    invoke-virtual {p2, p3}, Lyads/u66;->b(Lyads/u66;)V

    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    new-instance p3, Lk57$a;

    invoke-direct {p3, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, p3

    :goto_1
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string p3, "\' mutation failed!"

    invoke-static {v1, p1, p3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lyads/k76;

    invoke-direct {p3, p1, p2}, Lyads/k76;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, p3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    return-void
.end method
