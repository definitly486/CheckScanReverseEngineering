.class public final Lzb9;
.super Ltm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzb9$g;,
        Lzb9$f;
    }
.end annotation


# static fields
.field public static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lzb9$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lzb9$a;

.field public static final t:Lzb9$b;

.field public static final u:Lzb9$c;

.field public static final v:Lzb9$d;

.field public static final w:Lzb9$e;

.field public static final x:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final y:J


# instance fields
.field public c:J

.field public d:J

.field public e:Z

.field public f:I

.field public g:Z

.field public h:J

.field public i:I

.field public j:Z

.field public k:Z

.field public l:J

.field public final m:I

.field public n:Landroid/view/animation/Interpolator;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzb9$g;",
            ">;"
        }
    .end annotation
.end field

.field public p:[Lgs6;

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgs6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->r:Ljava/lang/ThreadLocal;

    new-instance v0, Lzb9$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->s:Lzb9$a;

    new-instance v0, Lzb9$b;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->t:Lzb9$b;

    new-instance v0, Lzb9$c;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->u:Lzb9$c;

    new-instance v0, Lzb9$d;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->v:Lzb9$d;

    new-instance v0, Lzb9$e;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lzb9;->w:Lzb9$e;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lzb9;->x:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const-wide/16 v0, 0xa

    sput-wide v0, Lzb9;->y:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ltm;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lzb9;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzb9;->e:Z

    iput v0, p0, Lzb9;->f:I

    iput-boolean v0, p0, Lzb9;->g:Z

    iput v0, p0, Lzb9;->i:I

    iput-boolean v0, p0, Lzb9;->j:Z

    iput-boolean v0, p0, Lzb9;->k:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lzb9;->l:J

    const/4 v0, 0x1

    iput v0, p0, Lzb9;->m:I

    sget-object v0, Lzb9;->x:Landroid/view/animation/AccelerateDecelerateInterpolator;

    iput-object v0, p0, Lzb9;->n:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lzb9;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static varargs l([F)Lzb9;
    .locals 4

    new-instance v0, Lzb9;

    invoke-direct {v0}, Lzb9;-><init>()V

    array-length v1, p0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, v0, Lzb9;->p:[Lgs6;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Lgs6;->i([F)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lgs6;->h:Ld31;

    new-instance v1, Lgs6$a;

    invoke-direct {v1}, Lgs6;-><init>()V

    invoke-virtual {v1, p0}, Lgs6$a;->i([F)V

    const/4 p0, 0x1

    new-array v3, p0, [Lgs6;

    aput-object v1, v3, v2

    iput-object v3, v0, Lzb9;->p:[Lgs6;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lzb9;->q:Ljava/util/HashMap;

    aget-object p0, v3, v2

    iget-object v3, p0, Lgs6;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v0, Lzb9;->k:Z

    :goto_1
    iput-boolean v2, v0, Lzb9;->k:Z

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lzb9;->h()Lzb9;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic e()Ltm;
    .locals 0

    invoke-virtual {p0}, Lzb9;->h()Lzb9;

    move-result-object p0

    return-object p0
.end method

.method public final f(J)Z
    .locals 10

    iget v0, p0, Lzb9;->i:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iput v3, p0, Lzb9;->i:I

    iget-wide v4, p0, Lzb9;->d:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lzb9;->c:J

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    sub-long v4, p1, v4

    iput-wide v4, p0, Lzb9;->c:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lzb9;->d:J

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    return v5

    :cond_2
    iget-wide v6, p0, Lzb9;->l:J

    cmp-long v0, v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_3

    iget-wide v8, p0, Lzb9;->c:J

    sub-long/2addr p1, v8

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    cmpl-float p2, p1, v1

    if-ltz p2, :cond_7

    iget p2, p0, Lzb9;->f:I

    if-ltz p2, :cond_4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_4

    :cond_4
    iget-object p2, p0, Ltm;->b:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v5

    :goto_3
    if-ge v0, p2, :cond_5

    iget-object v2, p0, Ltm;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltm$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget p2, p0, Lzb9;->m:I

    if-ne p2, v4, :cond_6

    iget-boolean p2, p0, Lzb9;->e:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lzb9;->e:Z

    :cond_6
    iget p2, p0, Lzb9;->f:I

    float-to-int v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lzb9;->f:I

    rem-float/2addr p1, v1

    iget-wide v2, p0, Lzb9;->c:J

    iget-wide v6, p0, Lzb9;->l:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lzb9;->c:J

    :cond_7
    move v3, v5

    :goto_4
    iget-boolean p2, p0, Lzb9;->e:Z

    if-eqz p2, :cond_8

    sub-float p1, v1, p1

    :cond_8
    iget-object p2, p0, Lzb9;->n:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iget-object p2, p0, Lzb9;->p:[Lgs6;

    array-length p2, p2

    move v0, v5

    :goto_5
    if-ge v0, p2, :cond_9

    iget-object v1, p0, Lzb9;->p:[Lgs6;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lgs6;->b(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lzb9;->o:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_6
    if-ge v5, p1, :cond_a

    iget-object p2, p0, Lzb9;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzb9$g;

    invoke-interface {p2, p0}, Lzb9$g;->a(Lzb9;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    return v3
.end method

.method public final h()Lzb9;
    .locals 7

    invoke-super {p0}, Ltm;->e()Ltm;

    move-result-object v0

    check-cast v0, Lzb9;

    iget-object v1, p0, Lzb9;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lzb9;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v5, v0, Lzb9;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lzb9;->d:J

    iput-boolean v2, v0, Lzb9;->e:Z

    iput v2, v0, Lzb9;->f:I

    iput-boolean v2, v0, Lzb9;->k:Z

    iput v2, v0, Lzb9;->i:I

    iput-boolean v2, v0, Lzb9;->g:Z

    iget-object p0, p0, Lzb9;->p:[Lgs6;

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v3, v1, [Lgs6;

    iput-object v3, v0, Lzb9;->p:[Lgs6;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v0, Lzb9;->q:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lgs6;->e()Lgs6;

    move-result-object v3

    iget-object v4, v0, Lzb9;->p:[Lgs6;

    aput-object v3, v4, v2

    iget-object v4, v0, Lzb9;->q:Ljava/util/HashMap;

    iget-object v5, v3, Lgs6;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final i()V
    .locals 5

    sget-object v0, Lzb9;->s:Lzb9$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lzb9;->t:Lzb9$b;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lzb9;->u:Lzb9$c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lzb9;->i:I

    iget-boolean v1, p0, Lzb9;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltm;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltm$a;

    invoke-interface {v4}, Ltm$a;->onAnimationEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lzb9;->j:Z

    return-void
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lzb9;->p:[Lgs6;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lgs6;->h()Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()V
    .locals 5

    iget-boolean v0, p0, Lzb9;->k:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lzb9;->p:[Lgs6;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lzb9;->p:[Lgs6;

    aget-object v2, v2, v1

    iget-object v3, v2, Lgs6;->f:Lu39;

    if-nez v3, :cond_2

    iget-object v3, v2, Lgs6;->c:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    sget-object v3, Lgs6;->h:Ld31;

    goto :goto_1

    :cond_0
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    sget-object v3, Lgs6;->i:Lx65;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lgs6;->f:Lu39;

    :cond_2
    if-eqz v3, :cond_3

    iget-object v2, v2, Lgs6;->d:Luc3;

    iput-object v3, v2, Lyf4;->c:Lu39;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzb9;->k:Z

    :cond_5
    return-void
.end method

.method public final p(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lzb9;->l:J

    return-void

    :cond_0
    const-string p0, "Animators cannot have negative duration: "

    invoke-static {p1, p2, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzb9;->e:Z

    iput v0, p0, Lzb9;->f:I

    iput v0, p0, Lzb9;->i:I

    iput-boolean v0, p0, Lzb9;->g:Z

    sget-object v1, Lzb9;->t:Lzb9$b;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lzb9;->k:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lzb9;->i:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lzb9;->c:J

    sub-long/2addr v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lzb9;->k()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lzb9;->i:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iput-wide v1, p0, Lzb9;->d:J

    const/4 v5, 0x2

    iput v5, p0, Lzb9;->i:I

    :cond_2
    sub-long v1, v3, v1

    iput-wide v1, p0, Lzb9;->c:J

    invoke-virtual {p0, v3, v4}, Lzb9;->f(J)Z

    iput v0, p0, Lzb9;->i:I

    iput-boolean v6, p0, Lzb9;->j:Z

    iget-object p0, p0, Ltm;->b:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltm$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object p0, Lzb9;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzb9$f;

    if-nez v1, :cond_4

    new-instance v1, Lzb9$f;

    invoke-direct {v1}, Lzb9$f;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_5
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzb9;->p:[Lgs6;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lzb9;->p:[Lgs6;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n    "

    invoke-static {v0, v2}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lzb9;->p:[Lgs6;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgs6;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
