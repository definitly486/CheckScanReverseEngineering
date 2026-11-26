.class public final Lyads/x10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/zu3;Lyads/s10;)Lyads/f20;
    .locals 3

    iget-object v0, p1, Lyads/s10;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 p0, 0x5

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    new-instance p1, Lyads/e20;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v0}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/e20;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p1, Lyads/d20;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v0}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/d20;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    new-instance p1, Lyads/a20;

    check-cast p0, Lyads/av3;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lyads/av3;->a(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {p1, p0}, Lyads/a20;-><init>(Z)V

    return-object p1

    :cond_5
    new-instance p1, Lyads/c20;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v0}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/c20;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    new-instance p1, Lyads/b20;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v0}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/b20;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :goto_0
    return-object v1
.end method
