.class public final Lz93$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu83$a<",
        "Lb99;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lzz5;Lsy6;)Lu83;
    .locals 0

    check-cast p1, Lb99;

    iget-object p0, p1, Lb99;->c:Ljava/lang/String;

    const-string p3, "file"

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    iget-object p0, p1, Lb99;->e:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    iget-object p0, p1, Lb99;->c:Ljava/lang/String;

    invoke-static {p0, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string p3, "android_asset"

    invoke-static {p0, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lz93;

    invoke-direct {p0, p1, p2}, Lz93;-><init>(Lb99;Lzz5;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
