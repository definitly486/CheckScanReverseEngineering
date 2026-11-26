.class public abstract Lyads/dn4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/IOException;)Lyads/t06;
    .locals 4

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 130
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    const-string v2, "connection reset"

    const/4 v3, 0x0

    .line 132
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v1, "connection_reset"

    goto :goto_0

    .line 134
    :cond_0
    const-string v2, "connection abort"

    .line 135
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string v1, "connection_aborted"

    goto :goto_0

    .line 137
    :cond_1
    const-string v2, "broken pipe"

    .line 138
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v1, "broken_pipe"

    goto :goto_0

    .line 140
    :cond_2
    const-string v2, "connection closed"

    .line 141
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    const-string v1, "connection_closed"

    goto :goto_0

    .line 143
    :cond_3
    const-string v2, "unexpected end of stream"

    .line 144
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    const-string v1, "unexpected_eof"

    goto :goto_0

    .line 146
    :cond_4
    const-string v2, "socket closed"

    .line 147
    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    const-string v1, "socket_closed"

    .line 149
    :goto_0
    new-instance v2, Lyads/t06;

    .line 150
    sget-object v3, Lyads/u06;->c:Lyads/u06;

    .line 151
    invoke-direct {v2, v3, v1, p0, v0}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2

    :cond_5
    return-object v0
.end method

.method public static a(Lyads/do4;)Lyads/t06;
    .locals 6

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
    instance-of p0, v0, Ljava/net/UnknownHostException;

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    new-instance p0, Lyads/t06;

    sget-object v0, Lyads/u06;->c:Lyads/u06;

    if-nez v1, :cond_2

    const-string v1, "Failed to resolve server address"

    :cond_2
    const-string v3, "unknown_host"

    invoke-direct {p0, v0, v3, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0

    :cond_3
    instance-of p0, v0, Ljava/net/ConnectException;

    if-eqz p0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    const-string v0, "connection refused"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const-string v4, "network_unreachable"

    const-string v5, "connection_refused"

    if-eqz v0, :cond_5

    move-object p0, v5

    goto :goto_1

    :cond_5
    const-string v0, "network unreachable"

    invoke-static {p0, v0, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object p0, v4

    goto :goto_1

    :cond_6
    const-string p0, "connect_failed"

    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Connection refused"

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Network unreachable"

    goto :goto_2

    :cond_8
    const-string v0, "Failed to connect to server"

    :goto_2
    new-instance v3, Lyads/t06;

    sget-object v4, Lyads/u06;->c:Lyads/u06;

    if-nez v1, :cond_9

    move-object v1, v0

    :cond_9
    invoke-direct {v3, v4, p0, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v3

    :cond_a
    new-instance p0, Lyads/t06;

    sget-object v0, Lyads/u06;->c:Lyads/u06;

    if-nez v1, :cond_b

    const-string v1, "No connection to server"

    :cond_b
    const-string v3, "no_connection"

    invoke-direct {p0, v0, v3, v1, v2}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method
