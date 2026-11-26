.class public final Lfs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfs;
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

    sget-object p0, Lsb9;->a:[Landroid/graphics/Bitmap$Config;

    iget-object p0, p1, Lb99;->c:Ljava/lang/String;

    const-string p3, "file"

    invoke-static {p0, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lxz2;->d(Lb99;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string p3, "android_asset"

    invoke-static {p0, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lfs;

    invoke-direct {p0, p1, p2}, Lfs;-><init>(Lb99;Lzz5;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
