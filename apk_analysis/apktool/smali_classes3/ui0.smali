.class public final Lui0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv47;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv47<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# virtual methods
.method public final a(Le47;Lxz5;)Le47;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le47<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lxz5;",
            ")",
            "Le47<",
            "[B>;"
        }
    .end annotation

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Le47;->recycle()V

    new-instance p1, Lix0;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lix0;-><init>([B)V

    return-object p1
.end method
