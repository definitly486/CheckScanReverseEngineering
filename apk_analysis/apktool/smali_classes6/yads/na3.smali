.class public abstract Lyads/na3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/String;)Lyads/t06;
    .locals 3

    const/16 v0, 0x190

    const-string v1, ")"

    const/16 v2, 0x1f4

    if-gt v0, p0, :cond_1

    if-ge p0, v2, :cond_1

    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->f:Lyads/u06;

    if-nez p1, :cond_0

    const-string p1, "Client error (HTTP "

    invoke-static {p0, p1, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "client_error"

    invoke-direct {v0, v2, v1, p1, p0}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_1
    if-gt v2, p0, :cond_3

    const/16 v0, 0x258

    if-ge p0, v0, :cond_3

    new-instance v0, Lyads/t06;

    sget-object v2, Lyads/u06;->e:Lyads/u06;

    if-nez p1, :cond_2

    const-string p1, "Server error (HTTP "

    invoke-static {p0, p1, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "server_error"

    invoke-direct {v0, v2, v1, p1, p0}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_3
    new-instance v0, Lyads/t06;

    sget-object v1, Lyads/u06;->j:Lyads/u06;

    if-nez p1, :cond_4

    const-string p1, "Unknown HTTP code: "

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "unknown_http_code"

    invoke-direct {v0, v1, v2, p1, p0}, Lyads/t06;-><init>(Lyads/u06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
