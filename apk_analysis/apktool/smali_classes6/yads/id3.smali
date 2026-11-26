.class public final Lyads/id3;
.super Lyads/r75;
.source "SourceFile"


# static fields
.field public static final y:Ljava/lang/Object;


# instance fields
.field public final s:Ljava/lang/Object;

.field public t:Lyads/tc3;

.field public final u:Landroid/graphics/Bitmap$Config;

.field public final v:I

.field public final w:I

.field public final x:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/id3;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/tc3;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lyads/uc3;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lyads/r75;-><init>(ILjava/lang/String;Lyads/x85;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/id3;->s:Ljava/lang/Object;

    new-instance p1, Lyads/am0;

    const/high16 p7, 0x40000000    # 2.0f

    const/4 v0, 0x2

    const/16 v1, 0x3e8

    invoke-direct {p1, v1, p7, v0}, Lyads/am0;-><init>(IFI)V

    iput-object p1, p0, Lyads/r75;->o:Lyads/am0;

    iput-object p2, p0, Lyads/id3;->t:Lyads/tc3;

    iput-object p6, p0, Lyads/id3;->u:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lyads/id3;->v:I

    iput p4, p0, Lyads/id3;->w:I

    iput-object p5, p0, Lyads/id3;->x:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_1

    if-nez p0, :cond_5

    :goto_0
    return p2

    :cond_1
    if-nez p0, :cond_2

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_4

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    return p0

    :cond_4
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_5

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_5
    :goto_1
    return p0
.end method


# virtual methods
.method public final a(Lyads/en4;)Lyads/z85;
    .locals 1

    .line 57
    sget-object v0, Lyads/id3;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-virtual {p0, p1}, Lyads/id3;->b(Lyads/en4;)Lyads/z85;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    iget-object p1, p1, Lyads/en4;->b:[B

    array-length p1, p1

    sget-boolean p1, Lyads/li6;->a:Z

    .line 60
    new-instance p1, Lyads/rs4;

    invoke-direct {p1, p0}, Lyads/rs4;-><init>(Ljava/lang/Throwable;)V

    .line 61
    new-instance p0, Lyads/z85;

    invoke-direct {p0, p1}, Lyads/z85;-><init>(Lyads/hi6;)V

    .line 62
    monitor-exit v0

    return-object p0

    .line 63
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a()V
    .locals 2

    .line 64
    invoke-super {p0}, Lyads/r75;->a()V

    .line 65
    iget-object v0, p0, Lyads/id3;->s:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 66
    :try_start_0
    iput-object v1, p0, Lyads/id3;->t:Lyads/tc3;

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 51
    check-cast p1, Landroid/graphics/Bitmap;

    .line 52
    iget-object v0, p0, Lyads/id3;->s:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object p0, p0, Lyads/id3;->t:Lyads/tc3;

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lyads/tc3;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lyads/en4;)Lyads/z85;
    .locals 11

    iget-object v0, p1, Lyads/en4;->b:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lyads/id3;->v:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lyads/id3;->w:I

    if-nez v2, :cond_0

    iget-object p0, p0, Lyads/id3;->u:Landroid/graphics/Bitmap$Config;

    iput-object p0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length p0, v0

    invoke-static {v0, v3, p0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lyads/id3;->v:I

    iget v7, p0, Lyads/id3;->w:I

    iget-object v8, p0, Lyads/id3;->x:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v5, v8}, Lyads/id3;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    iget v7, p0, Lyads/id3;->w:I

    iget v8, p0, Lyads/id3;->v:I

    iget-object p0, p0, Lyads/id3;->x:Landroid/widget/ImageView$ScaleType;

    invoke-static {v7, v8, v5, v4, p0}, Lyads/id3;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result p0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    int-to-double v7, v4

    int-to-double v9, v6

    div-double/2addr v7, v9

    int-to-double v4, v5

    int-to-double v9, p0

    div-double/2addr v4, v9

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v7

    float-to-double v9, v8

    cmpg-double v9, v9, v4

    if-gtz v9, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    float-to-int v4, v7

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v6, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p0, :cond_3

    :cond_2
    invoke-static {v0, v6, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_4

    new-instance p0, Lyads/rs4;

    invoke-direct {p0, p1}, Lyads/rs4;-><init>(Lyads/en4;)V

    new-instance p1, Lyads/z85;

    invoke-direct {p1, p0}, Lyads/z85;-><init>(Lyads/hi6;)V

    return-object p1

    :cond_4
    invoke-static {p1}, Lyads/pa3;->a(Lyads/en4;)Lyads/wv;

    move-result-object p1

    new-instance v0, Lyads/z85;

    invoke-direct {v0, p0, p1}, Lyads/z85;-><init>(Ljava/lang/Object;Lyads/wv;)V

    return-object v0
.end method

.method public final f()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
