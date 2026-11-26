.class public final Lox4;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lox4$b;,
        Lox4$a;
    }
.end annotation


# static fields
.field public static final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final S:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public A:Landroid/graphics/Bitmap;

.field public B:Landroid/graphics/Canvas;

.field public C:Landroid/graphics/Rect;

.field public D:Landroid/graphics/RectF;

.field public E:Lch4;

.field public F:Landroid/graphics/Rect;

.field public G:Landroid/graphics/Rect;

.field public H:Landroid/graphics/RectF;

.field public I:Landroid/graphics/RectF;

.field public J:Landroid/graphics/Matrix;

.field public final K:[F

.field public L:Landroid/graphics/Matrix;

.field public M:Z

.field public N:Ldt;

.field public final O:Ljava/util/concurrent/Semaphore;

.field public final P:Lj11;

.field public Q:F

.field public b:Lnw4;

.field public final c:Lay4;

.field public final d:Z

.field public e:Z

.field public f:Z

.field public g:Lox4$b;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lox4$a;",
            ">;"
        }
    .end annotation
.end field

.field public i:La14;

.field public j:Ljava/lang/String;

.field public k:Lfi3;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/String;

.field public final n:Lqx4;

.field public o:Z

.field public p:Z

.field public q:Lku1;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Le27;

.field public y:Z

.field public final z:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "reduced-motion"

    const-string v1, "reducedmotion"

    const-string v2, "reduced motion"

    const-string v3, "reduced_motion"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lox4;->R:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lzx4;

    invoke-direct {v8}, Lzx4;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x23

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lox4;->S:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lay4;

    invoke-direct {v0}, Lod0;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lay4;->e:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lay4;->f:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lay4;->g:J

    const/4 v2, 0x0

    iput v2, v0, Lay4;->h:F

    iput v2, v0, Lay4;->i:F

    iput v1, v0, Lay4;->j:I

    const/high16 v2, -0x31000000

    iput v2, v0, Lay4;->k:F

    const/high16 v2, 0x4f000000

    iput v2, v0, Lay4;->l:F

    iput-boolean v1, v0, Lay4;->n:Z

    iput-boolean v1, v0, Lay4;->o:Z

    iput-object v0, p0, Lox4;->c:Lay4;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lox4;->d:Z

    iput-boolean v1, p0, Lox4;->e:Z

    iput-boolean v1, p0, Lox4;->f:Z

    sget-object v3, Lox4$b;->NONE:Lox4$b;

    iput-object v3, p0, Lox4;->g:Lox4$b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lox4;->h:Ljava/util/ArrayList;

    new-instance v3, Lqx4;

    invoke-direct {v3}, Lqx4;-><init>()V

    iput-object v3, p0, Lox4;->n:Lqx4;

    iput-boolean v1, p0, Lox4;->o:Z

    iput-boolean v2, p0, Lox4;->p:Z

    const/16 v3, 0xff

    iput v3, p0, Lox4;->r:I

    iput-boolean v1, p0, Lox4;->w:Z

    sget-object v3, Le27;->AUTOMATIC:Le27;

    iput-object v3, p0, Lox4;->x:Le27;

    iput-boolean v1, p0, Lox4;->y:Z

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lox4;->z:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    iput-object v3, p0, Lox4;->K:[F

    iput-boolean v1, p0, Lox4;->M:Z

    new-instance v1, Lkx4;

    invoke-direct {v1, p0}, Lkx4;-><init>(Lox4;)V

    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v3, p0, Lox4;->O:Ljava/util/concurrent/Semaphore;

    new-instance v2, Lj11;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lj11;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lox4;->P:Lj11;

    const v2, -0x800001

    iput v2, p0, Lox4;->Q:F

    invoke-virtual {v0, v1}, Lod0;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static i(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lnf4;Ljava/lang/Object;Lby4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnf4;",
            "TT;",
            "Lby4<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lox4;->q:Lku1;

    if-nez v0, :cond_0

    new-instance v0, Lex4;

    invoke-direct {v0, p0, p1, p2, p3}, Lex4;-><init>(Lox4;Lnf4;Ljava/lang/Object;Lby4;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Lnf4;->c:Lnf4;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, p3, p2}, Lku1;->i(Lby4;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lnf4;->b:Lof4;

    if-eqz v0, :cond_2

    invoke-interface {v0, p3, p2}, Lof4;->i(Lby4;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lox4;->q:Lku1;

    new-instance v3, Lnf4;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v3, v5}, Lnf4;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v4, v0, v3}, Lnd0;->a(Lnf4;ILjava/util/ArrayList;Lnf4;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnf4;

    iget-object p1, p1, Lnf4;->b:Lof4;

    invoke-interface {p1, p3, p2}, Lof4;->i(Lby4;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    sget-object p1, Lvx4;->C:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lox4;->c:Lay4;

    invoke-virtual {p1}, Lay4;->h()F

    move-result p1

    invoke-virtual {p0, p1}, Lox4;->w(F)V

    :cond_4
    return-void
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    iget-boolean v0, p0, Lox4;->e:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p0, p0, Lox4;->d:Z

    if-eqz p0, :cond_3

    sget-object p0, Lah4;->d:Llh8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    sget-object p0, Lib9;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "animator_duration_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lm07;->REDUCED_MOTION:Lm07;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lm07;->STANDARD_MOTION:Lm07;

    :goto_1
    sget-object p1, Lm07;->STANDARD_MOTION:Lm07;

    if-ne p0, p1, :cond_3

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v3, v0, Lox4;->b:Lnw4;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Lku1;

    sget-object v2, Lyk4;->a:Ltd4$a;

    iget-object v2, v3, Lnw4;->k:Landroid/graphics/Rect;

    move-object v4, v1

    new-instance v1, Lxk4;

    move-object v5, v2

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lxk4$a;->PRE_COMP:Lxk4$a;

    new-instance v12, Lql;

    invoke-direct {v12}, Lql;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget-object v23, Lxk4$b;->NONE:Lxk4$b;

    const/16 v27, 0x0

    sget-object v28, Lbh4;->NORMAL:Lbh4;

    move-object v8, v4

    const-string v4, "__container"

    move/from16 v19, v5

    move/from16 v18, v6

    const-wide/16 v5, -0x1

    move-object v10, v8

    const-wide/16 v8, -0x1

    move-object v11, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v11

    move-object v11, v2

    move-object/from16 v29, v22

    move-object/from16 v22, v2

    move-object/from16 v30, v29

    invoke-direct/range {v1 .. v28}, Lxk4;-><init>(Ljava/util/List;Lnw4;Ljava/lang/String;JLxk4$a;JLjava/lang/String;Ljava/util/List;Lql;IIIFFFFLll;Lml;Ljava/util/List;Lxk4$b;Ldl;ZLik0;Lft2;Lbh4;)V

    iget-object v2, v3, Lnw4;->j:Ljava/util/ArrayList;

    move-object/from16 v4, v30

    invoke-direct {v4, v0, v1, v2, v3}, Lku1;-><init>(Lox4;Lxk4;Ljava/util/List;Lnw4;)V

    iput-object v4, v0, Lox4;->q:Lku1;

    iget-boolean v1, v0, Lox4;->t:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lku1;->r(Z)V

    :cond_1
    iget-object v1, v0, Lox4;->q:Lku1;

    iget-boolean v0, v0, Lox4;->p:Z

    iput-boolean v0, v1, Lku1;->L:Z

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lox4;->c:Lay4;

    iget-boolean v1, v0, Lay4;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lay4;->cancel()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lox4$b;->NONE:Lox4$b;

    iput-object v1, p0, Lox4;->g:Lox4$b;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lox4;->b:Lnw4;

    iput-object v1, p0, Lox4;->q:Lku1;

    iput-object v1, p0, Lox4;->i:La14;

    const v2, -0x800001

    iput v2, p0, Lox4;->Q:F

    iput-object v1, v0, Lay4;->m:Lnw4;

    const/high16 v1, -0x31000000

    iput v1, v0, Lay4;->k:F

    const/high16 v1, 0x4f000000

    iput v1, v0, Lay4;->l:F

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lox4;->q:Lku1;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lox4;->N:Ldt;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lah4;->a:Ldt;

    :goto_0
    sget-object v2, Ldt;->ENABLED:Ldt;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iget-object v2, p0, Lox4;->P:Lj11;

    sget-object v4, Lox4;->S:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v5, p0, Lox4;->O:Ljava/util/concurrent/Semaphore;

    iget-object v6, p0, Lox4;->c:Lay4;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_3
    :goto_2
    sget-object v7, Lah4;->a:Ldt;

    if-eqz v1, :cond_5

    iget-object v7, p0, Lox4;->b:Lnw4;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    iget v8, p0, Lox4;->Q:F

    invoke-virtual {v6}, Lay4;->h()F

    move-result v9

    iput v9, p0, Lox4;->Q:F

    invoke-virtual {v7}, Lnw4;->b()F

    move-result v7

    sub-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v7

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v7, v8, v7

    if-ltz v7, :cond_5

    invoke-virtual {v6}, Lay4;->h()F

    move-result v7

    invoke-virtual {p0, v7}, Lox4;->w(F)V

    :cond_5
    :goto_3
    iget-boolean v7, p0, Lox4;->f:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v8, p0, Lox4;->y:Z

    if-eqz v7, :cond_7

    if-eqz v8, :cond_6

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lox4;->l(Landroid/graphics/Canvas;Lku1;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Lox4;->g(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    :try_start_2
    sget-object p1, Lgv4;->a:Ldv4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lah4;->a:Ldt;

    goto :goto_4

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {p0, p1, v0}, Lox4;->l(Landroid/graphics/Canvas;Lku1;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lox4;->g(Landroid/graphics/Canvas;)V

    :goto_4
    iput-boolean v3, p0, Lox4;->M:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    iget p0, v0, Lku1;->K:F

    invoke-virtual {v6}, Lay4;->h()F

    move-result p1

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_a

    :goto_5
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :goto_6
    sget-object p1, Lah4;->a:Ldt;

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    iget p1, v0, Lku1;->K:F

    invoke-virtual {v6}, Lay4;->h()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_9

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    throw p0

    :catch_0
    sget-object p0, Lah4;->a:Ldt;

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    iget p0, v0, Lku1;->K:F

    invoke-virtual {v6}, Lay4;->h()F

    move-result p1

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lox4;->x:Le27;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v3, v0, Lnw4;->o:Z

    iget v0, v0, Lnw4;->p:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le27$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-eqz v3, :cond_2

    const/16 v1, 0x1c

    if-ge v2, v1, :cond_2

    :cond_1
    :goto_0
    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lox4;->y:Z

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lox4;->q:Lku1;

    iget-object v1, p0, Lox4;->b:Lnw4;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lox4;->z:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v1, v1, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    iget p0, p0, Lox4;->r:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Lnd0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lox4;->r:I

    return p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lox4;->b:Lnw4;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lox4;->b:Lnw4;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lnw4;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final h()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-boolean v0, p0, Lox4;->M:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lox4;->M:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lox4;->c:Lay4;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lay4;->n:Z

    return p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Lox4;->c:Lay4;

    invoke-virtual {v1, v0}, Lay4;->l(Z)V

    iget-object v0, v1, Lod0;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v2, v1}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lox4;->q:Lku1;

    if-nez v0, :cond_0

    new-instance v0, Llx4;

    invoke-direct {v0, p0}, Llx4;-><init>(Lox4;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lox4;->e()V

    invoke-virtual {p0}, Lox4;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lox4;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lox4;->c:Lay4;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v2, Lay4;->n:Z

    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    iget-object v3, v2, Lod0;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lay4;->i()F

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lay4;->j()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lay4;->p(F)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lay4;->g:J

    const/4 v0, 0x0

    iput v0, v2, Lay4;->j:I

    iget-boolean v3, v2, Lay4;->n:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Lay4;->l(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    goto :goto_2

    :cond_5
    sget-object v0, Lox4$b;->PLAY:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lox4;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lox4;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lox4;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lox4;->b:Lnw4;

    invoke-virtual {v4, v3}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v3

    if-eqz v3, :cond_7

    :cond_8
    if-eqz v3, :cond_9

    iget v0, v3, Lu05;->b:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lox4;->n(I)V

    goto :goto_4

    :cond_9
    iget v0, v2, Lay4;->e:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    invoke-virtual {v2}, Lay4;->j()F

    move-result v0

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Lay4;->i()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lox4;->n(I)V

    :goto_4
    invoke-virtual {v2, v1}, Lay4;->l(Z)V

    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    invoke-virtual {v2, v0}, Lod0;->b(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_b
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Lku1;)V
    .locals 11

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-eqz v0, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lox4;->B:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lox4;->B:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lox4;->I:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lox4;->J:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lox4;->L:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lox4;->C:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lox4;->D:Landroid/graphics/RectF;

    new-instance v0, Lch4;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lox4;->E:Lch4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lox4;->F:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lox4;->G:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lox4;->H:Landroid/graphics/RectF;

    :goto_0
    iget-object v0, p0, Lox4;->J:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lox4;->C:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lox4;->C:Landroid/graphics/Rect;

    iget-object v1, p0, Lox4;->D:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lox4;->J:Landroid/graphics/Matrix;

    iget-object v1, p0, Lox4;->D:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lox4;->D:Landroid/graphics/RectF;

    iget-object v1, p0, Lox4;->C:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lox4;->f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-boolean v0, p0, Lox4;->p:Z

    iget-object v1, p0, Lox4;->I:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lox4;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lox4;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1, v2, v3}, Lku1;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    :goto_1
    iget-object v0, p0, Lox4;->J:Landroid/graphics/Matrix;

    iget-object v1, p0, Lox4;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lox4;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lox4;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lox4;->I:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v1

    iget v6, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v6, v0

    iget v7, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v7, v1

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    const/4 v6, 0x1

    if-nez v5, :cond_4

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v4

    xor-int/2addr v4, v6

    :goto_2
    if-nez v4, :cond_5

    iget-object v4, p0, Lox4;->I:Landroid/graphics/RectF;

    iget-object v5, p0, Lox4;->C:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/RectF;->intersect(FFFF)Z

    :cond_5
    iget-object v4, p0, Lox4;->I:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Lox4;->i(F)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Lox4;->i(F)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Lox4;->i(F)Z

    move-result v5

    if-eqz v5, :cond_e

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Lox4;->i(F)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lox4;->I:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lox4;->I:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    if-lez v4, :cond_d

    if-gtz v5, :cond_6

    goto/16 :goto_5

    :cond_6
    int-to-long v7, v4

    int-to-long v9, v5

    mul-long/2addr v7, v9

    const-wide/32 v9, 0x2faf080

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Skipping software rendering: bitmap request exceeds safe pixel count ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgv4;->b(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lt v7, v4, :cond_a

    iget-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v7, v5, :cond_8

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-gt v7, v4, :cond_9

    iget-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v7, v5, :cond_b

    :cond_9
    iget-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lox4;->B:Landroid/graphics/Canvas;

    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lox4;->M:Z

    goto :goto_4

    :cond_a
    :goto_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lox4;->A:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lox4;->B:Landroid/graphics/Canvas;

    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lox4;->M:Z

    :cond_b
    :goto_4
    iget-boolean v6, p0, Lox4;->M:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lox4;->J:Landroid/graphics/Matrix;

    iget-object v7, p0, Lox4;->K:[F

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    aget v6, v7, v3

    const/4 v8, 0x4

    aget v7, v7, v8

    iget-object v8, p0, Lox4;->J:Landroid/graphics/Matrix;

    iget-object v9, p0, Lox4;->z:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lox4;->I:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, v6

    div-float/2addr v0, v7

    invoke-virtual {v9, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lox4;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lox4;->B:Landroid/graphics/Canvas;

    sget-object v1, Lib9;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lox4;->B:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lox4;->B:Landroid/graphics/Canvas;

    iget v1, p0, Lox4;->r:I

    invoke-virtual {p2, v0, v9, v1, v2}, Lnd0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;ILet2;)V

    iget-object p2, p0, Lox4;->J:Landroid/graphics/Matrix;

    iget-object v0, p0, Lox4;->L:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p2, p0, Lox4;->L:Landroid/graphics/Matrix;

    iget-object v0, p0, Lox4;->H:Landroid/graphics/RectF;

    iget-object v1, p0, Lox4;->I:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p2, p0, Lox4;->H:Landroid/graphics/RectF;

    iget-object v0, p0, Lox4;->G:Landroid/graphics/Rect;

    invoke-static {v0, p2}, Lox4;->f(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    :cond_c
    iget-object p2, p0, Lox4;->F:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lox4;->A:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lox4;->F:Landroid/graphics/Rect;

    iget-object v1, p0, Lox4;->G:Landroid/graphics/Rect;

    iget-object p0, p0, Lox4;->E:Lch4;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_d
    :goto_5
    const-string p0, "Skipping software rendering: transformed bounds have negative values."

    invoke-static {p0}, Lgv4;->b(Ljava/lang/String;)V

    return-void

    :cond_e
    const-string p0, "Skipping software rendering: transformed bounds contain non-finite values."

    invoke-static {p0}, Lgv4;->b(Ljava/lang/String;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lox4;->q:Lku1;

    if-nez v0, :cond_0

    new-instance v0, Lgx4;

    invoke-direct {v0, p0}, Lgx4;-><init>(Lox4;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lox4;->e()V

    invoke-virtual {p0}, Lox4;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lox4;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lox4;->c:Lay4;

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, v2, Lay4;->n:Z

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lay4;->l(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lay4;->g:J

    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v2, Lay4;->i:F

    invoke-virtual {v2}, Lay4;->j()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lay4;->i()F

    move-result v0

    invoke-virtual {v2, v0}, Lay4;->p(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v2, Lay4;->i:F

    invoke-virtual {v2}, Lay4;->i()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lay4;->j()F

    move-result v0

    invoke-virtual {v2, v0}, Lay4;->p(F)V

    :cond_3
    :goto_0
    iget-object v0, v2, Lod0;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    invoke-interface {v3, v2}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    goto :goto_2

    :cond_5
    sget-object v0, Lox4$b;->RESUME:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lox4;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lox4;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, v2, Lay4;->e:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_7

    invoke-virtual {v2}, Lay4;->j()F

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lay4;->i()F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lox4;->n(I)V

    invoke-virtual {v2, v1}, Lay4;->l(Z)V

    invoke-virtual {v2}, Lay4;->k()Z

    move-result v0

    invoke-virtual {v2, v0}, Lod0;->b(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_8
    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lzw4;

    invoke-direct {v0, p0, p1}, Lzw4;-><init>(Lox4;I)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lox4;->c:Lay4;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lay4;->p(F)V

    return-void
.end method

.method public final o(I)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lcx4;

    invoke-direct {v0, p0, p1}, Lcx4;-><init>(Lox4;I)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    iget-object p0, p0, Lox4;->c:Lay4;

    iget v0, p0, Lay4;->k:F

    invoke-virtual {p0, v0, p1}, Lay4;->q(FF)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lix4;

    invoke-direct {v0, p0, p1}, Lix4;-><init>(Lox4;Ljava/lang/String;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lu05;->b:F

    iget v0, v0, Lu05;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lox4;->o(I)V

    return-void

    :cond_1
    const-string p0, "Cannot find marker with name "

    const-string v0, "."

    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final q(II)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lbx4;

    invoke-direct {v0, p0, p1, p2}, Lbx4;-><init>(Lox4;II)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0, p1, p2}, Lay4;->q(FF)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lyw4;

    invoke-direct {v0, p0, p1}, Lyw4;-><init>(Lox4;Ljava/lang/String;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lu05;->b:F

    float-to-int p1, p1

    iget v0, v0, Lu05;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lox4;->q(II)V

    return-void

    :cond_1
    const-string p0, "Cannot find marker with name "

    const-string v0, "."

    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lhx4;

    invoke-direct {v0, p0, p1, p2, p3}, Lhx4;-><init>(Lox4;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v0

    const-string v1, "."

    const-string v2, "Cannot find marker with name "

    if-eqz v0, :cond_3

    iget p1, v0, Lu05;->b:F

    float-to-int p1, p1

    iget-object v0, p0, Lox4;->b:Lnw4;

    invoke-virtual {v0, p2}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p2, v0, Lu05;->b:F

    if-eqz p3, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lox4;->q(II)V

    return-void

    :cond_2
    invoke-static {v2, p2, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v2, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lox4;->r:I

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lgv4;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lox4;->g:Lox4$b;

    sget-object v0, Lox4$b;->PLAY:Lox4$b;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lox4;->k()V

    return p2

    :cond_0
    sget-object v0, Lox4$b;->RESUME:Lox4$b;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lox4;->m()V

    return p2

    :cond_1
    iget-object p1, p0, Lox4;->c:Lay4;

    iget-boolean p1, p1, Lay4;->n:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lox4;->j()V

    sget-object p1, Lox4$b;->RESUME:Lox4$b;

    iput-object p1, p0, Lox4;->g:Lox4$b;

    return p2

    :cond_2
    if-eqz v0, :cond_3

    sget-object p1, Lox4$b;->NONE:Lox4$b;

    iput-object p1, p0, Lox4;->g:Lox4$b;

    :cond_3
    return p2
.end method

.method public final start()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lox4;->k()V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Lox4;->c:Lay4;

    invoke-virtual {v1, v0}, Lay4;->l(Z)V

    invoke-virtual {v1}, Lay4;->k()Z

    move-result v0

    invoke-virtual {v1, v0}, Lod0;->b(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lox4$b;->NONE:Lox4$b;

    iput-object v0, p0, Lox4;->g:Lox4$b;

    :cond_0
    return-void
.end method

.method public final t(FF)V
    .locals 2

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lax4;

    invoke-direct {v0, p0, p1, p2}, Lax4;-><init>(Lox4;FF)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v1, v0, Lnw4;->l:F

    iget v0, v0, Lnw4;->m:F

    invoke-static {v1, v0, p1}, Lhb5;->f(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lox4;->b:Lnw4;

    iget v1, v0, Lnw4;->l:F

    iget v0, v0, Lnw4;->m:F

    invoke-static {v1, v0, p2}, Lhb5;->f(FFF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lox4;->q(II)V

    return-void
.end method

.method public final u(I)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Ldx4;

    invoke-direct {v0, p0, p1}, Ldx4;-><init>(Lox4;I)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    int-to-float p1, p1

    iget-object p0, p0, Lox4;->c:Lay4;

    iget v0, p0, Lay4;->l:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lay4;->q(FF)V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Ljx4;

    invoke-direct {v0, p0, p1}, Ljx4;-><init>(Lox4;Ljava/lang/String;)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lnw4;->d(Ljava/lang/String;)Lu05;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p1, v0, Lu05;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lox4;->u(I)V

    return-void

    :cond_1
    const-string p0, "Cannot find marker with name "

    const-string v0, "."

    invoke-static {p0, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final w(F)V
    .locals 2

    iget-object v0, p0, Lox4;->b:Lnw4;

    if-nez v0, :cond_0

    new-instance v0, Lnx4;

    invoke-direct {v0, p0, p1}, Lnx4;-><init>(Lox4;F)V

    iget-object p0, p0, Lox4;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-object v1, Lah4;->a:Ldt;

    iget v1, v0, Lnw4;->l:F

    iget v0, v0, Lnw4;->m:F

    invoke-static {v1, v0, p1}, Lhb5;->f(FFF)F

    move-result p1

    iget-object p0, p0, Lox4;->c:Lay4;

    invoke-virtual {p0, p1}, Lay4;->p(F)V

    return-void
.end method
