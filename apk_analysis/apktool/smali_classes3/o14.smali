.class public final Lo14;
.super Lnd0;
.source "SourceFile"


# instance fields
.field public final D:Lch4;

.field public final E:Landroid/graphics/Rect;

.field public final F:Landroid/graphics/Rect;

.field public final G:Landroid/graphics/RectF;

.field public final H:Lsx4;

.field public I:Lac9;

.field public J:Lac9;

.field public final K:Lht2;

.field public L:Lxu5;

.field public M:Lxu5$b;


# direct methods
.method public constructor <init>(Lox4;Lxk4;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lnd0;-><init>(Lox4;Lxk4;)V

    new-instance v0, Lch4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lo14;->D:Lch4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo14;->E:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo14;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo14;->G:Landroid/graphics/RectF;

    iget-object p2, p2, Lxk4;->g:Ljava/lang/String;

    iget-object p1, p1, Lox4;->b:Lnw4;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnw4;->c()Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx4;

    :goto_0
    iput-object p1, p0, Lo14;->H:Lsx4;

    iget-object p1, p0, Lnd0;->p:Lxk4;

    iget-object p1, p1, Lxk4;->x:Lft2;

    if-eqz p1, :cond_1

    new-instance p2, Lht2;

    invoke-direct {p2, p0, p0, p1}, Lht2;-><init>(Lnd0;Lnd0;Lft2;)V

    iput-object p2, p0, Lo14;->K:Lht2;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lnd0;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lo14;->H:Lsx4;

    if-eqz p2, :cond_2

    iget p3, p2, Lsx4;->b:I

    iget p2, p2, Lsx4;->a:I

    invoke-static {}, Lib9;->c()F

    move-result v0

    iget-object v1, p0, Lnd0;->o:Lox4;

    iget-boolean v1, v1, Lox4;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p3, v0

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo14;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p3, p3

    mul-float/2addr p3, v0

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    iget-object p0, p0, Lnd0;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_2
    return-void
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lnd0;->i(Lby4;Ljava/lang/Object;)V

    sget-object v0, Lvx4;->I:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lo14;->I:Lac9;

    return-void

    :cond_0
    sget-object v0, Lvx4;->L:Landroid/graphics/Bitmap;

    if-ne p2, v0, :cond_1

    new-instance p2, Lac9;

    invoke-direct {p2, p1, v1}, Lac9;-><init>(Lby4;Ljava/lang/Object;)V

    iput-object p2, p0, Lo14;->J:Lac9;

    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lo14;->K:Lht2;

    if-ne p2, v0, :cond_2

    if-eqz p0, :cond_2

    iget-object p0, p0, Lht2;->c:Ltn1;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_2
    sget-object v0, Lvx4;->E:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lht2;->b(Lby4;)V

    return-void

    :cond_3
    sget-object v0, Lvx4;->F:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    if-eqz p0, :cond_4

    iget-object p0, p0, Lht2;->e:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_4
    sget-object v0, Lvx4;->G:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    if-eqz p0, :cond_5

    iget-object p0, p0, Lht2;->f:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_5
    sget-object v0, Lvx4;->H:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    if-eqz p0, :cond_6

    iget-object p0, p0, Lht2;->g:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    :cond_6
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V
    .locals 8

    invoke-virtual {p0}, Lo14;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lo14;->H:Lsx4;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lib9;->c()F

    move-result v2

    iget-object v3, p0, Lo14;->D:Lch4;

    invoke-virtual {v3, p3}, Lch4;->setAlpha(I)V

    iget-object v4, p0, Lo14;->I:Lac9;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lac9;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object v4, p0, Lo14;->K:Lht2;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p2, p3}, Lht2;->a(Landroid/graphics/Matrix;I)Let2;

    move-result-object p4

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lo14;->E:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lnd0;->o:Lox4;

    iget-boolean v4, v4, Lox4;->o:Z

    iget-object v5, p0, Lo14;->F:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget v4, v1, Lsx4;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget v1, v1, Lsx4;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v5, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v5, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    if-eqz p4, :cond_4

    const/4 v7, 0x1

    :cond_4
    if-eqz v7, :cond_7

    iget-object v1, p0, Lo14;->L:Lxu5;

    if-nez v1, :cond_5

    new-instance v1, Lxu5;

    invoke-direct {v1}, Lxu5;-><init>()V

    iput-object v1, p0, Lo14;->L:Lxu5;

    :cond_5
    iget-object v1, p0, Lo14;->M:Lxu5$b;

    if-nez v1, :cond_6

    new-instance v1, Lxu5$b;

    invoke-direct {v1}, Lxu5$b;-><init>()V

    iput-object v1, p0, Lo14;->M:Lxu5$b;

    :cond_6
    move-object v2, v1

    const/16 v4, 0xff

    iput v4, v1, Lxu5$b;->a:I

    const/4 v4, 0x0

    iput-object v4, v1, Lxu5$b;->b:Let2;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Let2;

    invoke-direct {v1, p4}, Let2;-><init>(Let2;)V

    iput-object v1, v2, Lxu5$b;->b:Let2;

    invoke-virtual {v1, p3}, Let2;->b(I)V

    iget p3, v5, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, v5, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v4, p0, Lo14;->G:Landroid/graphics/RectF;

    invoke-virtual {v4, p3, p4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p3, p0, Lo14;->L:Lxu5;

    iget-object p4, p0, Lo14;->M:Lxu5$b;

    invoke-virtual {p3, p1, v4, p4}, Lxu5;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lxu5$b;)Landroid/graphics/Canvas;

    move-result-object p1

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v0, v6, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_8

    iget-object p2, p0, Lo14;->L:Lxu5;

    invoke-virtual {p2}, Lxu5;->c()V

    iget-object p0, p0, Lo14;->L:Lxu5;

    iget-object p0, p0, Lxu5;->c:Lxu5$c;

    sget-object p2, Lxu5$c;->RENDER_NODE:Lxu5$c;

    if-ne p0, p2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_1
    return-void
.end method

.method public final t()Landroid/graphics/Bitmap;
    .locals 15

    iget-object v0, p0, Lo14;->J:Lac9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lac9;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lnd0;->p:Lxk4;

    iget-object v0, v0, Lxk4;->g:Ljava/lang/String;

    iget-object v1, p0, Lnd0;->o:Lox4;

    iget-object v2, v1, Lox4;->i:La14;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lox4;->h()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, La14;->a:Landroid/content/Context;

    if-nez v4, :cond_1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_1
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    :cond_2
    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_3
    iput-object v3, v1, Lox4;->i:La14;

    :cond_4
    :goto_0
    iget-object v2, v1, Lox4;->i:La14;

    if-nez v2, :cond_5

    new-instance v2, La14;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    iget-object v5, v1, Lox4;->j:Ljava/lang/String;

    iget-object v6, v1, Lox4;->b:Lnw4;

    invoke-virtual {v6}, Lnw4;->c()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, La14;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, v1, Lox4;->i:La14;

    :cond_5
    iget-object v1, v2, La14;->b:Ljava/lang/String;

    const-string v4, "`."

    const-string v5, "Unable to decode image `"

    const-string v6, "` is null."

    const-string v7, "Decoded image `"

    iget-object v8, v2, La14;->c:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsx4;

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    iget v9, v8, Lsx4;->b:I

    iget v10, v8, Lsx4;->a:I

    iget-object v11, v8, Lsx4;->f:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v11, v2, La14;->a:Landroid/content/Context;

    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    iget-object v8, v8, Lsx4;->d:Ljava/lang/String;

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v14, 0xa0

    iput v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v14, "data:"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v14, "base64,"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_a

    const/16 v1, 0x2c

    :try_start_0
    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v13

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v11, v1

    invoke-static {v1, v8, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgv4;->b(Ljava/lang/String;)V

    :goto_1
    move-object v11, v3

    goto/16 :goto_3

    :cond_9
    invoke-static {v1, v10, v9}, Lib9;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v1, La14;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, v2, La14;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx4;

    iput-object v11, v0, Lsx4;->f:Landroid/graphics/Bitmap;

    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "data URL did not have correct base64 format."

    invoke-static {v1, v0}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-static {v1, v3, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgv4;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    invoke-static {v1, v10, v9}, Lib9;->d(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v1, La14;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, v2, La14;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx4;

    iput-object v11, v0, Lsx4;->f:Landroid/graphics/Bitmap;

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_c
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_2
    const-string v1, "Unable to open asset."

    invoke-static {v1, v0}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :goto_3
    if-eqz v11, :cond_d

    return-object v11

    :cond_d
    iget-object p0, p0, Lo14;->H:Lsx4;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lsx4;->f:Landroid/graphics/Bitmap;

    return-object p0

    :cond_e
    return-object v3
.end method
