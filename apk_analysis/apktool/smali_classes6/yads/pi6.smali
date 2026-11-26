.class public abstract Lyads/pi6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/hi6;)Lyads/z96;
    .locals 3

    instance-of v0, p0, Lyads/fn2;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/fn2;

    invoke-static {p0}, Lyads/y96;->a(Lyads/fn2;)Lyads/z96;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/qs4;

    if-eqz v0, :cond_1

    invoke-static {}, Lyads/y96;->a()Lyads/z96;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lyads/hi6;->b:Lyads/en4;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/y96;->a(Ljava/lang/String;)Lyads/z96;

    move-result-object p0

    return-object p0

    :cond_2
    iget p0, v0, Lyads/en4;->a:I

    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_3

    invoke-static {}, Lyads/y96;->b()Lyads/z96;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "Network Error.  Code: "

    const-string v2, "."

    invoke-static {p0, v1, v2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lyads/en4;->b:[B

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " Data: \n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/y96;->b(Ljava/lang/String;)Lyads/z96;

    move-result-object p0

    return-object p0
.end method
