.class public abstract Lyads/bq5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljavax/net/ssl/SSLException;)Lyads/t06;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    instance-of p0, p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "ssl_handshake"

    const-string v3, "ssl_protocol"

    const-string v4, "ssl_certificate"

    if-nez p0, :cond_4

    const-string p0, "handshake"

    const/4 v5, 0x0

    invoke-static {v1, p0, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "certificate"

    invoke-static {v1, p0, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, v4

    goto :goto_2

    :cond_2
    const-string p0, "protocol"

    invoke-static {v1, p0, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object p0, v3

    goto :goto_2

    :cond_3
    const-string p0, "ssl_error"

    goto :goto_2

    :cond_4
    :goto_1
    move-object p0, v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v5, -0x3d3b541c

    if-eq v1, v5, :cond_9

    const v4, 0x159c1584

    if-eq v1, v4, :cond_7

    const v2, 0x30f50f6b

    if-eq v1, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "SSL protocol error"

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, "SSL handshake error"

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    const-string v1, "SSL error"

    goto :goto_4

    :cond_a
    const-string v1, "SSL certificate error"

    :goto_4
    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->g:Lyads/u06;

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    const/4 v1, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method
