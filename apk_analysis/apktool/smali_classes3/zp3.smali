.class public final Lzp3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp3$c;,
        Lzp3$a;,
        Lzp3$b;
    }
.end annotation


# instance fields
.field public final a:Lu68;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lp37;

.field public final e:Lij0;

.field public f:Z

.field public g:Z

.field public h:Lh37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh37<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lzp3$a;

.field public j:Z

.field public k:Lzp3$a;

.field public l:Landroid/graphics/Bitmap;

.field public m:Ls19;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lzp3$a;

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/a;Lu68;IILp59;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p1, Lcom/bumptech/glide/a;->b:Lij0;

    iget-object p1, p1, Lcom/bumptech/glide/a;->d:Lwq3;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object p1

    invoke-virtual {p1}, Lp37;->b()Lh37;

    move-result-object p1

    sget-object v2, Lsn2;->b:Lsn2$b;

    new-instance v3, Ls37;

    invoke-direct {v3}, Ls37;-><init>()V

    invoke-virtual {v3, v2}, Lee0;->g(Lsn2;)Lee0;

    move-result-object v2

    check-cast v2, Ls37;

    invoke-virtual {v2}, Lee0;->E()Lee0;

    move-result-object v2

    check-cast v2, Ls37;

    invoke-virtual {v2}, Lee0;->y()Lee0;

    move-result-object v2

    check-cast v2, Ls37;

    invoke-virtual {v2, p3, p4}, Lee0;->p(II)Lee0;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh37;->G(Lee0;)Lh37;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lzp3;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Lzp3;->d:Lp37;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lzp3$c;

    invoke-direct {v1, p0}, Lzp3$c;-><init>(Lzp3;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lzp3;->e:Lij0;

    iput-object p3, p0, Lzp3;->b:Landroid/os/Handler;

    iput-object p1, p0, Lzp3;->h:Lh37;

    iput-object p2, p0, Lzp3;->a:Lu68;

    invoke-virtual {p0, p5, p6}, Lzp3;->c(Ls19;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lzp3;->f:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lzp3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lzp3;->n:Lzp3$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lzp3;->n:Lzp3$a;

    invoke-virtual {p0, v0}, Lzp3;->b(Lzp3$a;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzp3;->g:Z

    iget-object v0, p0, Lzp3;->a:Lu68;

    iget-object v1, v0, Lu68;->l:Lbq3;

    iget v2, v1, Lbq3;->c:I

    if-lez v2, :cond_4

    iget v3, v0, Lu68;->k:I

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v3, :cond_3

    if-ge v3, v2, :cond_3

    iget-object v1, v1, Lbq3;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyp3;

    iget v1, v1, Lyp3;->i:I

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0}, Lu68;->b()V

    new-instance v1, Lzp3$a;

    iget-object v4, p0, Lzp3;->b:Landroid/os/Handler;

    iget v5, v0, Lu68;->k:I

    invoke-direct {v1, v4, v5, v2, v3}, Lzp3$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v1, p0, Lzp3;->k:Lzp3$a;

    iget-object v1, p0, Lzp3;->h:Lh37;

    new-instance v2, Loq5;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ls37;

    invoke-direct {v3}, Ls37;-><init>()V

    invoke-virtual {v3, v2}, Lee0;->x(Lkf4;)Lee0;

    move-result-object v2

    check-cast v2, Ls37;

    invoke-virtual {v1, v2}, Lh37;->G(Lee0;)Lh37;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object v0

    iget-object p0, p0, Lzp3;->k:Lzp3$a;

    invoke-virtual {v0, p0, v0}, Lh37;->K(Lwk8;Lee0;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Lzp3$a;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzp3;->g:Z

    iget-boolean v0, p0, Lzp3;->j:Z

    const/4 v1, 0x2

    iget-object v2, p0, Lzp3;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lzp3;->f:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lzp3;->n:Lzp3$a;

    return-void

    :cond_1
    iget-object v0, p1, Lzp3$a;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lzp3;->e:Lij0;

    invoke-interface {v3, v0}, Lij0;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lzp3;->i:Lzp3$a;

    iput-object p1, p0, Lzp3;->i:Lzp3$a;

    iget-object p1, p0, Lzp3;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzp3$b;

    invoke-interface {v4}, Lzp3$b;->a()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    invoke-virtual {p0}, Lzp3;->a()V

    return-void
.end method

.method public final c(Ls19;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lzp3;->m:Ls19;

    invoke-static {p2, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lzp3;->h:Lh37;

    new-instance v1, Ls37;

    invoke-direct {v1}, Ls37;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh37;->G(Lee0;)Lh37;

    move-result-object p1

    iput-object p1, p0, Lzp3;->h:Lh37;

    invoke-static {p2}, Leb9;->c(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lzp3;->o:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lzp3;->p:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lzp3;->q:I

    return-void
.end method
