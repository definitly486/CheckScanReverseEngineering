.class public final Lyads/bv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ds;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/fe5;

.field public final c:Lyads/d16;

.field public final d:Lyads/i16;

.field public final e:Lyads/h75;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/fe5;Lyads/d16;Lyads/i16;Lyads/h75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bv4;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/bv4;->b:Lyads/fe5;

    iput-object p3, p0, Lyads/bv4;->c:Lyads/d16;

    iput-object p4, p0, Lyads/bv4;->d:Lyads/i16;

    iput-object p5, p0, Lyads/bv4;->e:Lyads/h75;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1037
    check-cast p1, Lyads/en4;

    .line 1038
    iget p1, p1, Lyads/en4;->a:I

    .line 1039
    iget-object v0, p0, Lyads/bv4;->e:Lyads/h75;

    .line 1040
    iget-object v0, v0, Lyads/h75;->a:Ljava/util/Map;

    .line 1041
    iget-object v1, p0, Lyads/bv4;->d:Lyads/i16;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    new-instance v2, Lb36;

    const-string v3, "tracking_url_type"

    invoke-direct {v2, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    iget-object v1, p0, Lyads/bv4;->a:Ljava/lang/String;

    invoke-static {v1}, Lyads/a56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    new-instance v3, Lb36;

    const-string v4, "tracking_url"

    invoke-direct {v3, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1045
    filled-new-array {v2, v3}, [Lb36;

    move-result-object v1

    .line 1046
    invoke-static {v1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v1

    .line 1047
    new-instance v2, Lb36;

    const-string v3, "tracking_result"

    const-string v4, "success"

    invoke-direct {v2, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1048
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1049
    new-instance v3, Lb36;

    const-string v4, "code"

    invoke-direct {v3, v4, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1050
    filled-new-array {v2, v3}, [Lb36;

    move-result-object p1

    .line 1051
    invoke-static {p1}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p1, v0}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p1, v1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 1052
    iget-object v0, p0, Lyads/bv4;->c:Lyads/d16;

    sget-object v1, Lyads/e75;->c:Lyads/e75;

    iget-object p0, p0, Lyads/bv4;->b:Lyads/fe5;

    invoke-virtual {v0, p1, p0}, Lyads/d16;->a(Ljava/util/Map;Lyads/fe5;)V

    return-void
.end method

.method public final a(Lyads/hi6;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lyads/mx5;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/mx5;

    invoke-static {v0}, Lyads/nx5;->a(Lyads/mx5;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_0
    instance-of v0, p1, Lyads/do4;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lyads/do4;

    invoke-static {v0}, Lyads/dn4;->a(Lyads/do4;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_1
    instance-of v0, p1, Lyads/cn4;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lyads/cn4;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_3
    instance-of v0, v2, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_4

    check-cast v2, Ljavax/net/ssl/SSLException;

    invoke-static {v2}, Lyads/bq5;->a(Ljavax/net/ssl/SSLException;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_4
    instance-of v0, v2, Ljava/io/IOException;

    if-eqz v0, :cond_7

    check-cast v2, Ljava/io/IOException;

    invoke-static {v2}, Lyads/dn4;->a(Ljava/io/IOException;)Lyads/t06;

    move-result-object v0

    if-eqz v0, :cond_5

    goto/16 :goto_1d

    :cond_5
    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->c:Lyads/u06;

    if-nez v3, :cond_6

    const-string v3, "I/O error"

    :cond_6
    const-string v4, "io_error"

    invoke-direct {v0, v2, v4, v3, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1d

    :cond_7
    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->c:Lyads/u06;

    if-nez v3, :cond_8

    const-string v3, "Network error"

    :cond_8
    const-string v4, "network_error"

    invoke-direct {v0, v2, v4, v3, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1d

    :cond_9
    instance-of v0, p1, Lyads/o00;

    if-eqz v0, :cond_1c

    move-object v0, p1

    check-cast v0, Lyads/o00;

    iget-object v2, v0, Lyads/hi6;->b:Lyads/en4;

    if-eqz v2, :cond_a

    iget v1, v2, Lyads/en4;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x194

    const/16 v3, 0x193

    const/16 v4, 0x191

    const/16 v5, 0x190

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_c

    const-string v6, "Bad request"

    goto :goto_4

    :cond_c
    :goto_0
    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_e

    const-string v6, "Unauthorized"

    goto :goto_4

    :cond_e
    :goto_1
    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_10

    const-string v6, "Forbidden"

    goto :goto_4

    :cond_10
    :goto_2
    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_12

    const-string v6, "Not found"

    goto :goto_4

    :cond_12
    :goto_3
    const-string v6, "Client error"

    :goto_4
    new-instance v7, Lyads/t06;

    sget-object v8, Lyads/u06;->f:Lyads/u06;

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_14

    const-string v2, "client_bad_request"

    goto :goto_9

    :cond_14
    :goto_5
    if-nez v1, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_16

    const-string v2, "client_unauthorized"

    goto :goto_9

    :cond_16
    :goto_6
    if-nez v1, :cond_17

    goto :goto_7

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_18

    const-string v2, "client_forbidden"

    goto :goto_9

    :cond_18
    :goto_7
    if-nez v1, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1a

    const-string v2, "client_not_found"

    goto :goto_9

    :cond_1a
    :goto_8
    const-string v2, "client_error"

    :goto_9
    if-nez v0, :cond_1b

    move-object v0, v6

    :cond_1b
    invoke-direct {v7, v8, v2, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_a
    move-object v0, v7

    goto/16 :goto_1d

    :cond_1c
    instance-of v0, p1, Lyads/vi5;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Lyads/vi5;

    iget-object v2, v0, Lyads/hi6;->b:Lyads/en4;

    if-eqz v2, :cond_1d

    iget v1, v2, Lyads/en4;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f8

    const/16 v3, 0x1f7

    const/16 v4, 0x1f6

    const/16 v5, 0x1f4

    if-nez v1, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1f

    const-string v6, "Internal server error"

    goto :goto_f

    :cond_1f
    :goto_b
    if-nez v1, :cond_20

    goto :goto_c

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_21

    const-string v6, "Bad gateway"

    goto :goto_f

    :cond_21
    :goto_c
    if-nez v1, :cond_22

    goto :goto_d

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_23

    const-string v6, "Service unavailable"

    goto :goto_f

    :cond_23
    :goto_d
    if-nez v1, :cond_24

    goto :goto_e

    :cond_24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_25

    const-string v6, "Gateway timeout"

    goto :goto_f

    :cond_25
    :goto_e
    const-string v6, "Server error"

    :goto_f
    new-instance v7, Lyads/t06;

    sget-object v8, Lyads/u06;->e:Lyads/u06;

    if-nez v1, :cond_26

    goto :goto_10

    :cond_26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_27

    const-string v2, "server_internal_error"

    goto :goto_14

    :cond_27
    :goto_10
    if-nez v1, :cond_28

    goto :goto_11

    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_29

    const-string v2, "server_bad_gateway"

    goto :goto_14

    :cond_29
    :goto_11
    if-nez v1, :cond_2a

    goto :goto_12

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2b

    const-string v2, "server_unavailable"

    goto :goto_14

    :cond_2b
    :goto_12
    if-nez v1, :cond_2c

    goto :goto_13

    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2d

    const-string v2, "server_gateway_timeout"

    goto :goto_14

    :cond_2d
    :goto_13
    const-string v2, "server_error"

    :goto_14
    if-nez v0, :cond_2e

    move-object v0, v6

    :cond_2e
    invoke-direct {v7, v8, v2, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_a

    :cond_2f
    instance-of v0, p1, Lyads/rs4;

    if-eqz v0, :cond_31

    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->h:Lyads/u06;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_30

    const-string v3, "Response parsing error"

    :cond_30
    const-string v4, "parse_error"

    invoke-direct {v0, v2, v4, v3, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1d

    :cond_31
    instance-of v0, p1, Lyads/ym;

    if-eqz v0, :cond_33

    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->i:Lyads/u06;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_32

    const-string v3, "Authentication failure"

    :cond_32
    const-string v4, "auth_failure"

    invoke-direct {v0, v2, v4, v3, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1d

    :cond_33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, p1

    :goto_15
    if-eqz v0, :cond_34

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto :goto_15

    :cond_34
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_16

    :cond_35
    move-object v3, v1

    :goto_16
    instance-of v0, v3, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_36

    new-instance v0, Lyads/do4;

    check-cast v3, Ljava/io/IOException;

    invoke-direct {v0, v3}, Lyads/do4;-><init>(Ljava/io/IOException;)V

    invoke-static {v0}, Lyads/dn4;->a(Lyads/do4;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_36
    instance-of v0, v3, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_37

    check-cast v3, Ljavax/net/ssl/SSLException;

    invoke-static {v3}, Lyads/bq5;->a(Ljavax/net/ssl/SSLException;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_37
    instance-of v0, v3, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_38

    new-instance v0, Lyads/mx5;

    invoke-direct {v0}, Lyads/mx5;-><init>()V

    invoke-static {v0}, Lyads/nx5;->a(Lyads/mx5;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_38
    instance-of v0, v3, Ljava/net/ConnectException;

    if-eqz v0, :cond_39

    new-instance v0, Lyads/do4;

    check-cast v3, Ljava/io/IOException;

    invoke-direct {v0, v3}, Lyads/do4;-><init>(Ljava/io/IOException;)V

    invoke-static {v0}, Lyads/dn4;->a(Lyads/do4;)Lyads/t06;

    move-result-object v0

    goto/16 :goto_1d

    :cond_39
    instance-of v0, v3, Ljava/io/IOException;

    if-eqz v0, :cond_3a

    move-object v0, v3

    check-cast v0, Ljava/io/IOException;

    invoke-static {v0}, Lyads/dn4;->a(Ljava/io/IOException;)Lyads/t06;

    move-result-object v0

    if-eqz v0, :cond_3a

    goto/16 :goto_1d

    :cond_3a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_3b
    move-object v0, v1

    :cond_3c
    :goto_17
    if-eqz v0, :cond_48

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "unable to resolve host"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "nodename nor servname provided"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "temporary failure in name resolution"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto/16 :goto_1a

    :cond_3d
    const-string v3, "timeout"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "timed out"

    invoke-static {v2, v5, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_3e

    goto/16 :goto_19

    :cond_3e
    const-string v3, "connection refused"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_3f

    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->c:Lyads/u06;

    const-string v4, "connection_refused"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1b

    :cond_3f
    const-string v3, "network is unreachable"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->c:Lyads/u06;

    const-string v4, "network_unreachable"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_40
    const-string v3, "no route to host"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_41

    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->c:Lyads/u06;

    const-string v4, "no_route"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_41
    const-string v3, "host is down"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_42

    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->c:Lyads/u06;

    const-string v4, "host_down"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_42
    const-string v3, "ssl"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "tls"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_18

    :cond_43
    const-string v3, "interrupted"

    invoke-static {v2, v3, v4}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_44

    new-instance v2, Lyads/t06;

    sget-object v4, Lyads/u06;->c:Lyads/u06;

    invoke-direct {v2, v4, v3, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_44
    move-object v2, v1

    goto :goto_1b

    :cond_45
    :goto_18
    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->g:Lyads/u06;

    const-string v4, "ssl_error"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_46
    :goto_19
    new-instance v2, Lyads/t06;

    sget-object v4, Lyads/u06;->d:Lyads/u06;

    invoke-direct {v2, v4, v3, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1b

    :cond_47
    :goto_1a
    new-instance v2, Lyads/t06;

    sget-object v3, Lyads/u06;->c:Lyads/u06;

    const-string v4, "unknown_host"

    invoke-direct {v2, v3, v4, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1b
    if-eqz v2, :cond_48

    move-object v0, v2

    goto :goto_1d

    :cond_48
    iget-object v2, p1, Lyads/hi6;->b:Lyads/en4;

    if-eqz v2, :cond_49

    iget v2, v2, Lyads/en4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1c

    :cond_49
    move-object v2, v1

    :goto_1c
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v0}, Lyads/na3;->a(ILjava/lang/String;)Lyads/t06;

    move-result-object v0

    goto :goto_1d

    :cond_4a
    const-string v2, "unknown"

    if-eqz v0, :cond_4b

    new-instance v3, Lyads/t06;

    sget-object v4, Lyads/u06;->j:Lyads/u06;

    const-string v5, "https?://[^\\s]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "[url]"

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d+)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "[ip]"

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x64

    invoke-static {v5, v0}, Lua8;->l0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v2, v0, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v0, v3

    goto :goto_1d

    :cond_4b
    new-instance v0, Lyads/t06;

    sget-object v3, Lyads/u06;->j:Lyads/u06;

    const-string v4, "Unknown error"

    invoke-direct {v0, v3, v2, v4, v1}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1d
    iget-object v1, v0, Lyads/t06;->a:Lyads/u06;

    sget-object v2, Lyads/u06;->j:Lyads/u06;

    if-ne v1, v2, :cond_4d

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, p1

    :goto_1e
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_1e

    :cond_4c
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :cond_4d
    iget-object p1, p0, Lyads/bv4;->e:Lyads/h75;

    iget-object p1, p1, Lyads/h75;->a:Ljava/util/Map;

    iget-object v1, p0, Lyads/bv4;->d:Lyads/i16;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lb36;

    const-string v3, "tracking_url_type"

    invoke-direct {v2, v3, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/bv4;->a:Ljava/lang/String;

    invoke-static {v1}, Lyads/a56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lb36;

    const-string v4, "tracking_url"

    invoke-direct {v3, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lb36;

    const-string v3, "tracking_result"

    const-string v4, "failure"

    invoke-direct {v2, v3, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/t06;->a:Lyads/u06;

    iget-object v3, v3, Lyads/u06;->b:Ljava/lang/String;

    new-instance v4, Lb36;

    const-string v5, "error_description"

    invoke-direct {v4, v5, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/t06;->b:Ljava/lang/String;

    new-instance v5, Lb36;

    const-string v6, "error_code"

    invoke-direct {v5, v6, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lyads/t06;->c:Ljava/lang/String;

    new-instance v6, Lb36;

    const-string v7, "error_message"

    invoke-direct {v6, v7, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v5, v6}, [Lb36;

    move-result-object v2

    invoke-static {v2}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, v0, Lyads/t06;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object p1, p0, Lyads/bv4;->c:Lyads/d16;

    sget-object v0, Lyads/e75;->c:Lyads/e75;

    iget-object p0, p0, Lyads/bv4;->b:Lyads/fe5;

    invoke-virtual {p1, v2, p0}, Lyads/d16;->a(Ljava/util/Map;Lyads/fe5;)V

    return-void
.end method
