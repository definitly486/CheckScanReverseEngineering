.class public abstract Lyads/nx5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/mx5;)Lyads/t06;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    instance-of p0, v0, Ljava/net/SocketTimeoutException;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    new-instance p0, Lyads/t06;

    sget-object v0, Lyads/u06;->d:Lyads/u06;

    if-nez v1, :cond_2

    const-string v1, "Read timeout"

    :cond_2
    const-string v3, "socket_timeout"

    invoke-direct {p0, v0, v3, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0

    :cond_3
    instance-of p0, v0, Ljava/net/ConnectException;

    const-string v3, "timeout"

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    invoke-static {p0, v3, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-ne p0, v0, :cond_5

    new-instance p0, Lyads/t06;

    sget-object v0, Lyads/u06;->d:Lyads/u06;

    if-nez v1, :cond_4

    const-string v1, "Connection timeout"

    :cond_4
    const-string v3, "connect_timeout"

    invoke-direct {p0, v0, v3, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0

    :cond_5
    new-instance p0, Lyads/t06;

    sget-object v0, Lyads/u06;->d:Lyads/u06;

    if-nez v1, :cond_6

    const-string v1, "Request timeout"

    :cond_6
    invoke-direct {p0, v0, v3, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method
