.class public final Lo91;
.super Ln91;
.source "SourceFile"


# instance fields
.field public final a:Ls91;

.field public final b:Lpv8;


# direct methods
.method public constructor <init>(Ls91;Lpv8;)V
    .locals 0

    invoke-direct {p0}, Ln91;-><init>()V

    iput-object p1, p0, Lo91;->a:Ls91;

    const-string p1, "time"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lo91;->b:Lpv8;

    return-void
.end method

.method public static d(Ln91$a;)Ljava/util/logging/Level;
    .locals 1

    sget-object v0, Lo91$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method


# virtual methods
.method public final a(Ln91$a;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lo91;->a:Ls91;

    iget-object v1, v0, Ls91;->b:Lm94;

    invoke-static {p1}, Lo91;->d(Ln91$a;)Ljava/util/logging/Level;

    move-result-object v2

    sget-object v3, Ls91;->c:Ljava/util/logging/Logger;

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2, p2}, Ls91;->a(Lm94;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lo91;->c(Ln91$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ln91$a;->DEBUG:Ln91$a;

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lo91$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    sget-object p1, Lh94$a;->CT_INFO:Lh94$a;

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_2
    sget-object p1, Lh94$a;->CT_WARNING:Lh94$a;

    goto :goto_0

    :cond_3
    sget-object p1, Lh94$a;->CT_ERROR:Lh94$a;

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lo91;->b:Lpv8;

    invoke-interface {p0}, Lpv8;->b()J

    move-result-wide v4

    const-string p0, "description"

    invoke-static {p2, p0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "severity"

    invoke-static {v3, p0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lh94;

    const/4 v6, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lh94;-><init>(Ljava/lang/String;Lh94$a;JLp94;)V

    iget-object p0, v0, Ls91;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final varargs b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lo91;->d(Ln91$a;)Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {p0, p1}, Lo91;->c(Ln91$a;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ls91;->c:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p1, p2}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ln91$a;)Z
    .locals 1

    sget-object v0, Ln91$a;->DEBUG:Ln91$a;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lo91;->a:Ls91;

    iget-object p0, p0, Ls91;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
