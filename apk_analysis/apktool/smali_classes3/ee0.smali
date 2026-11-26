.class public abstract Lee0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lee0<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lsn2;

.field public d:Ljg6;

.field public e:I

.field public f:Landroid/graphics/drawable/ShapeDrawable;

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:Lkf4;

.field public l:Z

.field public m:Z

.field public n:Lxz5;

.field public o:Lzx0;

.field public p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Landroid/content/res/Resources$Theme;

.field public s:Z

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsn2;->d:Lsn2$e;

    iput-object v0, p0, Lee0;->c:Lsn2;

    sget-object v0, Ljg6;->NORMAL:Ljg6;

    iput-object v0, p0, Lee0;->d:Ljg6;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lee0;->h:Z

    const/4 v1, -0x1

    iput v1, p0, Lee0;->i:I

    iput v1, p0, Lee0;->j:I

    sget-object v1, Lpx2;->b:Lpx2;

    iput-object v1, p0, Lee0;->k:Lkf4;

    iput-boolean v0, p0, Lee0;->m:Z

    new-instance v1, Lxz5;

    invoke-direct {v1}, Lxz5;-><init>()V

    iput-object v1, p0, Lee0;->n:Lxz5;

    new-instance v1, Lzx0;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, p0, Lee0;->o:Lzx0;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lee0;->p:Ljava/lang/Class;

    iput-boolean v0, p0, Lee0;->t:Z

    return-void
.end method

.method public static k(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A(Luq2;Llj0;)Lee0;
    .locals 2

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Luq2;->f:Lqz5;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p0

    return-object p0
.end method

.method public final B(Ls19;Z)Lee0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lps2;

    invoke-direct {v0, p1, p2}, Lps2;-><init>(Ls19;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lee0;->C(Ljava/lang/Class;Ls19;Z)Lee0;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lee0;->C(Ljava/lang/Class;Ls19;Z)Lee0;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lee0;->C(Ljava/lang/Class;Ls19;Z)Lee0;

    new-instance v0, Lxp3;

    invoke-direct {v0, p1}, Lxp3;-><init>(Ls19;)V

    const-class p1, Lup3;

    invoke-virtual {p0, p1, v0, p2}, Lee0;->C(Ljava/lang/Class;Ls19;Z)Lee0;

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final C(Ljava/lang/Class;Ls19;Z)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Ls19<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lee0;->C(Ljava/lang/Class;Ls19;Z)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lr96;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lee0;->o:Lzx0;

    invoke-virtual {v0, p1, p2}, Lzx0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lee0;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lee0;->m:Z

    const v0, 0x10800

    or-int/2addr v0, p1

    iput v0, p0, Lee0;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lee0;->t:Z

    if-eqz p3, :cond_1

    const p3, 0x30800

    or-int/2addr p1, p3

    iput p1, p0, Lee0;->b:I

    iput-boolean p2, p0, Lee0;->l:Z

    :cond_1
    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final varargs D([Ls19;)Lee0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ls19<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcg5;

    invoke-direct {v0, p1}, Lcg5;-><init>([Ls19;)V

    invoke-virtual {p0, v0, v1}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v1}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final E()Lee0;
    .locals 2

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0}, Lee0;->E()Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lee0;->u:Z

    iget v0, p0, Lee0;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public b(Lee0;)Lee0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee0<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->b(Lee0;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p1, Lee0;->b:I

    iget v0, p1, Lee0;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lee0;->u:Z

    iput-boolean v0, p0, Lee0;->u:Z

    :cond_1
    iget v0, p1, Lee0;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lee0;->c:Lsn2;

    iput-object v0, p0, Lee0;->c:Lsn2;

    :cond_2
    iget v0, p1, Lee0;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lee0;->d:Ljg6;

    iput-object v0, p0, Lee0;->d:Ljg6;

    :cond_3
    iget v0, p1, Lee0;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lee0;->k(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput v1, p0, Lee0;->e:I

    iget v0, p0, Lee0;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lee0;->b:I

    :cond_4
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p1, Lee0;->e:I

    iput v0, p0, Lee0;->e:I

    iget v0, p0, Lee0;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lee0;->b:I

    :cond_5
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iput-object v0, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iput v1, p0, Lee0;->g:I

    iget v0, p0, Lee0;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lee0;->b:I

    :cond_6
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lee0;->g:I

    iput v0, p0, Lee0;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lee0;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lee0;->b:I

    :cond_7
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x100

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lee0;->h:Z

    iput-boolean v0, p0, Lee0;->h:Z

    :cond_8
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lee0;->j:I

    iput v0, p0, Lee0;->j:I

    iget v0, p1, Lee0;->i:I

    iput v0, p0, Lee0;->i:I

    :cond_9
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x400

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lee0;->k:Lkf4;

    iput-object v0, p0, Lee0;->k:Lkf4;

    :cond_a
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x1000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lee0;->p:Ljava/lang/Class;

    iput-object v0, p0, Lee0;->p:Ljava/lang/Class;

    :cond_b
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lee0;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lee0;->b:I

    :cond_c
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x4000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lee0;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lee0;->b:I

    :cond_d
    iget v0, p1, Lee0;->b:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lee0;->r:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lee0;->r:Landroid/content/res/Resources$Theme;

    :cond_e
    iget v0, p1, Lee0;->b:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lee0;->m:Z

    iput-boolean v0, p0, Lee0;->m:Z

    :cond_f
    iget v0, p1, Lee0;->b:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lee0;->l:Z

    iput-boolean v0, p0, Lee0;->l:Z

    :cond_10
    iget v0, p1, Lee0;->b:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lee0;->k(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lee0;->o:Lzx0;

    iget-object v2, p1, Lee0;->o:Lzx0;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lee0;->t:Z

    iput-boolean v0, p0, Lee0;->t:Z

    :cond_11
    iget-boolean v0, p0, Lee0;->m:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lee0;->o:Lzx0;

    invoke-virtual {v0}, Lzx0;->clear()V

    iget v0, p0, Lee0;->b:I

    iput-boolean v1, p0, Lee0;->l:Z

    const v1, -0x20801

    and-int/2addr v0, v1

    iput v0, p0, Lee0;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lee0;->t:Z

    :cond_12
    iget v0, p0, Lee0;->b:I

    iget v1, p1, Lee0;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lee0;->b:I

    iget-object v0, p0, Lee0;->n:Lxz5;

    iget-object p1, p1, Lee0;->n:Lxz5;

    iget-object v0, v0, Lxz5;->b:Lzx0;

    iget-object p1, p1, Lxz5;->b:Lzx0;

    invoke-virtual {v0, p1}, Lzx0;->putAll(Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    return-object p0
.end method

.method public e()Lee0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lee0;

    new-instance v1, Lxz5;

    invoke-direct {v1}, Lxz5;-><init>()V

    iput-object v1, v0, Lee0;->n:Lxz5;

    iget-object v2, p0, Lee0;->n:Lxz5;

    iget-object v1, v1, Lxz5;->b:Lzx0;

    iget-object v2, v2, Lxz5;->b:Lzx0;

    invoke-virtual {v1, v2}, Lzx0;->putAll(Landroidx/collection/SimpleArrayMap;)V

    new-instance v1, Lzx0;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v1, v0, Lee0;->o:Lzx0;

    iget-object p0, p0, Lee0;->o:Lzx0;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lee0;->q:Z

    iput-boolean p0, v0, Lee0;->s:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lee0;

    if-eqz v0, :cond_0

    check-cast p1, Lee0;

    invoke-virtual {p0, p1}, Lee0;->j(Lee0;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Ljava/lang/Class;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->f(Ljava/lang/Class;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lee0;->p:Ljava/lang/Class;

    iget p1, p0, Lee0;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final g(Lsn2;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsn2;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->g(Lsn2;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lee0;->c:Lsn2;

    iget p1, p0, Lee0;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final h(I)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->h(I)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lee0;->e:I

    iget p1, p0, Lee0;->b:I

    or-int/lit8 p1, p1, 0x20

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x11

    invoke-static {v0, v1}, Leb9;->g(FI)I

    move-result v0

    iget v1, p0, Lee0;->e:I

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget v2, p0, Lee0;->g:I

    invoke-static {v2, v0}, Leb9;->h(II)I

    move-result v0

    iget-object v2, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-static {v0, v2}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Leb9;->h(II)I

    move-result v0

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lee0;->h:Z

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget v1, p0, Lee0;->i:I

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget v1, p0, Lee0;->j:I

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget-boolean v1, p0, Lee0;->l:Z

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    iget-boolean v1, p0, Lee0;->m:Z

    invoke-static {v1, v0}, Leb9;->h(II)I

    move-result v0

    invoke-static {v2, v0}, Leb9;->h(II)I

    move-result v0

    invoke-static {v2, v0}, Leb9;->h(II)I

    move-result v0

    iget-object v1, p0, Lee0;->c:Lsn2;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lee0;->d:Ljg6;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lee0;->n:Lxz5;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lee0;->o:Lzx0;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lee0;->p:Ljava/lang/Class;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lee0;->k:Lkf4;

    invoke-static {v0, v1}, Leb9;->i(ILjava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lee0;->r:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p0}, Leb9;->i(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i()Lee0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Luq2;->a:Luq2$e;

    new-instance v1, Ldc3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lee0;->u(Luq2;Llj0;Z)Lee0;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lee0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee0<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lee0;->e:I

    iget v1, p1, Lee0;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lee0;->g:I

    iget v1, p1, Lee0;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p1, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    invoke-static {v0, v1}, Leb9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lee0;->h:Z

    iget-boolean v1, p1, Lee0;->h:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lee0;->i:I

    iget v1, p1, Lee0;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lee0;->j:I

    iget v1, p1, Lee0;->j:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lee0;->l:Z

    iget-boolean v1, p1, Lee0;->l:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lee0;->m:Z

    iget-boolean v1, p1, Lee0;->m:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lee0;->c:Lsn2;

    iget-object v1, p1, Lee0;->c:Lsn2;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee0;->d:Ljg6;

    iget-object v1, p1, Lee0;->d:Ljg6;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lee0;->n:Lxz5;

    iget-object v1, p1, Lee0;->n:Lxz5;

    invoke-virtual {v0, v1}, Lxz5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee0;->o:Lzx0;

    iget-object v1, p1, Lee0;->o:Lzx0;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee0;->p:Ljava/lang/Class;

    iget-object v1, p1, Lee0;->p:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee0;->k:Lkf4;

    iget-object v1, p1, Lee0;->k:Lkf4;

    invoke-static {v0, v1}, Leb9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lee0;->r:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lee0;->r:Landroid/content/res/Resources$Theme;

    invoke-static {p0, p1}, Leb9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l(Luq2;Llj0;)Lee0;
    .locals 2

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lee0;->l(Luq2;Llj0;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Luq2;->f:Lqz5;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lee0;->B(Ls19;Z)Lee0;

    move-result-object p0

    return-object p0
.end method

.method public final p(II)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lee0;->p(II)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lee0;->j:I

    iput p2, p0, Lee0;->i:I

    iget p1, p0, Lee0;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final q(I)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->q(I)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput p1, p0, Lee0;->g:I

    iget p1, p0, Lee0;->b:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    iput-object v0, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;
    .locals 1

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lee0;->f:Landroid/graphics/drawable/ShapeDrawable;

    iget p1, p0, Lee0;->b:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, Lee0;->g:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final s(Ljg6;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg6;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->s(Ljg6;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lee0;->d:Ljg6;

    iget p1, p0, Lee0;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final t(Lqz5;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz5<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->t(Lqz5;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lee0;->n:Lxz5;

    iget-object v0, v0, Lxz5;->b:Lzx0;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final u(Luq2;Llj0;Z)Lee0;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lee0;->l(Luq2;Llj0;)Lee0;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lee0;->t:Z

    return-object p0
.end method

.method public final v()V
    .locals 0

    iget-boolean p0, p0, Lee0;->q:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "You cannot modify locked T, consider clone()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Lqz5;Ljava/lang/Object;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lqz5<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lr96;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lee0;->n:Lxz5;

    iget-object v0, v0, Lxz5;->b:Lzx0;

    invoke-virtual {v0, p1, p2}, Lzx0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final x(Lkf4;)Lee0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf4;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->x(Lkf4;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p1, Lkf4;

    iput-object p1, p0, Lee0;->k:Lkf4;

    iget p1, p0, Lee0;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final y()Lee0;
    .locals 1

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0}, Lee0;->y()Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lee0;->h:Z

    iget v0, p0, Lee0;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lee0;->b:I

    invoke-virtual {p0}, Lee0;->v()V

    return-object p0
.end method

.method public final z(Landroid/content/res/Resources$Theme;)Lee0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lee0;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee0;->e()Lee0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lee0;->z(Landroid/content/res/Resources$Theme;)Lee0;

    move-result-object p0

    return-object p0

    :cond_0
    iput-object p1, p0, Lee0;->r:Landroid/content/res/Resources$Theme;

    iget v0, p0, Lee0;->b:I

    if-eqz p1, :cond_1

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lee0;->b:I

    sget-object v0, Lk47;->b:Lqz5;

    invoke-virtual {p0, v0, p1}, Lee0;->w(Lqz5;Ljava/lang/Object;)Lee0;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Lee0;->b:I

    sget-object p1, Lk47;->b:Lqz5;

    invoke-virtual {p0, p1}, Lee0;->t(Lqz5;)Lee0;

    move-result-object p0

    return-object p0
.end method
