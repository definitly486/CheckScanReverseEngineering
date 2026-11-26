.class public final Laa3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltf4<",
        "Lb99;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lb99;

    iget-object p0, p1, Lb99;->c:Ljava/lang/String;

    const-string v0, "file"

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p1, Lb99;->e:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    iget-object p0, p1, Lb99;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "android_asset"

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ld24;->c:Lb53$b;

    invoke-static {p2, p0}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lxz2;->c(Lb99;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p2, p2, Lzz5;->f:Lw93;

    sget-object v0, Lj46;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object p0

    invoke-virtual {p2, p0}, Lw93;->p(Lj46;)Ls93;

    move-result-object p0

    iget-object p0, p0, Ls93;->f:Ljava/lang/Long;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
