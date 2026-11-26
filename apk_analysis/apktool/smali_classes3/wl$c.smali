.class public final Lwl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lwl;


# direct methods
.method public constructor <init>(Lwl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwl$c;->a:Lwl;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lax0;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lwl;->a(Landroid/graphics/ImageDecoder$Source;IILxz5;)Lwl$a;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    iget-object p0, p0, Lwl$c;->a:Lwl;

    iget-object p2, p0, Lwl;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Lwl;->b:Lpr;

    invoke-static {p2, p1, p0}, Lcom/bumptech/glide/load/a;->b(Ljava/util/ArrayList;Ljava/io/InputStream;Lpr;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq p0, p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
