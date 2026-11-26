.class public abstract Lyads/ax2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/zw2;Z)Lyads/zw2;
    .locals 1

    if-eqz p0, :cond_3

    sget-object v0, Lyads/vw2;->c:Lyads/vw2;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lyads/ww2;->c:Lyads/ww2;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lyads/yw2;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/yw2;

    check-cast p0, Lyads/yw2;

    iget-object p0, p0, Lyads/yw2;->c:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lyads/xw2;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/xw2;

    check-cast p0, Lyads/xw2;

    iget-object p0, p0, Lyads/xw2;->c:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lyads/xw2;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_2
    const-string p0, "Unknown field type"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    sget-object p0, Lyads/ww2;->c:Lyads/ww2;

    goto :goto_1

    :cond_4
    sget-object p0, Lyads/vw2;->c:Lyads/vw2;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
