.class public final Lg78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:Le78;

.field public final synthetic b:Ln07;


# direct methods
.method public constructor <init>(Le78;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg78;->a:Le78;

    iput-object p2, p0, Lg78;->b:Ln07;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object p2, p0, Lg78;->a:Le78;

    iget-object p3, p2, Le78;->c:Lzz5;

    iget-object v2, p3, Lzz5;->b:Lt18;

    iget-object v3, p3, Lzz5;->c:Lmd7;

    sget-object v4, Ld24;->b:Lb53$b;

    invoke-static {p3, v4}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lt18;

    invoke-static {v0, v1, v2, v3, p3}, Lrd2;->a(IILt18;Lmd7;Lt18;)J

    move-result-wide v2

    const/16 p3, 0x20

    shr-long v5, v2, p3

    long-to-int p3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v3, v2

    const/4 v6, 0x1

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    if-ne v0, p3, :cond_0

    if-eq v1, v3, :cond_3

    :cond_0
    iget-object v2, p2, Le78;->c:Lzz5;

    move-object v5, v4

    iget-object v4, v2, Lzz5;->c:Lmd7;

    invoke-static {v2, v5}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lt18;

    move v2, p3

    invoke-static/range {v0 .. v5}, Lrd2;->b(IIIILmd7;Lt18;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double p3, v2, v4

    if-gez p3, :cond_1

    move p3, v6

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object p0, p0, Lg78;->b:Ln07;

    iput-boolean p3, p0, Ln07;->b:Z

    if-nez p3, :cond_2

    iget-object p0, p2, Le78;->c:Lzz5;

    iget-object p0, p0, Lzz5;->d:Lre6;

    sget-object p3, Lre6;->EXACT:Lre6;

    if-ne p0, p3, :cond_3

    :cond_2
    int-to-double v4, v0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Lw65;->a(D)I

    move-result p0

    int-to-double v0, v1

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lw65;->a(D)I

    move-result p3

    invoke-virtual {p1, p0, p3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_3
    new-instance p0, Ld78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    iget-object p0, p2, Le78;->c:Lzz5;

    invoke-static {p0}, Lf24;->a(Lzz5;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p2, p3, :cond_4

    const/4 p2, 0x3

    goto :goto_1

    :cond_4
    move p2, v6

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    sget-object p2, Lf24;->g:Lb53$b;

    invoke-static {p0, p2}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v6

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    sget-object p2, Lf24;->c:Lb53$b;

    invoke-static {p0, p2}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorSpace;

    if-eqz p3, :cond_5

    invoke-static {p0, p2}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/ColorSpace;

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_5
    sget-object p2, Lf24;->d:Lb53$b;

    invoke-static {p0, p2}, Lc53;->b(Lzz5;Lb53$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v6

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    return-void
.end method
