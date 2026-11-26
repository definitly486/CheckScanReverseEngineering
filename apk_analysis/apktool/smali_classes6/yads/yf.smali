.class public final Lyads/yf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Landroid/graphics/RectF;

.field public static final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final l:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public e:[I

.field public f:Landroid/text/TextPaint;

.field public final g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

.field public final h:Landroid/content/Context;

.field public final i:Lyads/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lyads/yf;->j:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lyads/yf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lyads/yf;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/yf;->a:I

    iput-boolean v0, p0, Lyads/yf;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lyads/yf;->c:F

    iput v1, p0, Lyads/yf;->d:F

    new-array v0, v0, [I

    iput-object v0, p0, Lyads/yf;->e:[I

    iput-object p1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/yf;->h:Landroid/content/Context;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    new-instance p1, Lyads/wf;

    invoke-direct {p1}, Lyads/wf;-><init>()V

    iput-object p1, p0, Lyads/yf;->i:Lyads/xf;

    return-void

    :cond_0
    new-instance p1, Lyads/vf;

    invoke-direct {p1}, Lyads/vf;-><init>()V

    iput-object p1, p0, Lyads/yf;->i:Lyads/xf;

    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 261
    :try_start_0
    invoke-static {p1}, Lyads/yf;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    throw p0

    .line 264
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to invoke TextView#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lyads/yf;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, p0, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-object v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve TextView#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ACTVAutoSizeHelper"

    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)I
    .locals 12

    iget-object v0, p0, Lyads/yf;->e:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v4, v1

    move v3, v2

    :goto_0
    iget-object v5, p0, Lyads/yf;->e:[I

    if-gt v3, v0, :cond_6

    add-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    aget v5, v5, v4

    iget-object v6, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-interface {v7, v6, v8}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v6, v7

    :cond_0
    iget-object v7, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMaxLines()I

    move-result v7

    iget-object v8, p0, Lyads/yf;->f:Landroid/text/TextPaint;

    if-nez v8, :cond_1

    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    iput-object v8, p0, Lyads/yf;->f:Landroid/text/TextPaint;

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    :goto_1
    iget-object v8, p0, Lyads/yf;->f:Landroid/text/TextPaint;

    iget-object v9, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v8, p0, Lyads/yf;->f:Landroid/text/TextPaint;

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const-string v9, "getLayoutAlignment"

    invoke-static {v5, v9, v8}, Lyads/yf;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/Layout$Alignment;

    iget v8, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, p0, Lyads/yf;->f:Landroid/text/TextPaint;

    invoke-static {v6, v1, v9, v10, v8}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v9, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v9

    iget-object v10, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v9, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v9, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    iget-object v9, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    const v10, 0x7fffffff

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    invoke-virtual {v5, v10}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    :try_start_0
    iget-object v5, p0, Lyads/yf;->i:Lyads/xf;

    iget-object v10, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v5, v8, v10}, Lyads/xf;->a(Landroid/text/StaticLayout$Builder;Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v5, "ACTVAutoSizeHelper"

    const-string v10, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v8}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    if-eq v7, v9, :cond_3

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    if-gt v8, v7, :cond_4

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v5, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v7, v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v11, v4

    move v4, v3

    move v3, v11

    goto/16 :goto_0

    :cond_6
    aget p0, v5, v4

    return p0

    :cond_7
    const-string p0, "No available text sizes to choose from."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1
.end method

.method public final a()V
    .locals 3

    .line 265
    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    .line 266
    iget v1, p0, Lyads/yf;->a:I

    if-eqz v1, :cond_5

    .line 267
    iget-boolean v1, p0, Lyads/yf;->b:Z

    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 269
    :cond_0
    iget-object v0, p0, Lyads/yf;->i:Lyads/xf;

    iget-object v1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v0, v1}, Lyads/xf;->a(Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x100000

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    .line 272
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 273
    :goto_0
    iget-object v1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    .line 274
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_5

    if-gtz v1, :cond_2

    goto :goto_4

    .line 275
    :cond_2
    sget-object v2, Lyads/yf;->j:Landroid/graphics/RectF;

    monitor-enter v2

    .line 276
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    .line 277
    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 278
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 279
    invoke-virtual {p0, v2}, Lyads/yf;->a(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 280
    iget-object v1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, v1, v0}, Lyads/yf;->a(IF)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 282
    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lyads/yf;->b:Z

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(IF)V
    .locals 2

    .line 245
    iget-object v0, p0, Lyads/yf;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 249
    iget-object p2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 250
    iget-object p2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 251
    iget-object p1, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p1}, Landroid/view/View;->isInLayout()Z

    move-result p1

    .line 252
    iget-object p2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 253
    iput-boolean p2, p0, Lyads/yf;->b:Z

    .line 254
    :try_start_0
    const-string p2, "nullLayouts"

    invoke-static {p2}, Lyads/yf;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 255
    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 256
    const-string v0, "ACTVAutoSizeHelper"

    const-string v1, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :cond_1
    :goto_1
    iget-object p2, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    if-nez p1, :cond_2

    .line 258
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 259
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    .line 260
    :goto_2
    iget-object p0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
