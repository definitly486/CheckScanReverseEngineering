.class public abstract Lao9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Lcom/my/target/q;

.field public I:Laga;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Z

.field public final P:Lzn9;

.field public final Q:Lpp9;

.field public final a:Ln4a;

.field public final b:La0a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;

.field public p:Lh14;

.field public q:Lh14;

.field public r:Lt2a;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    sget-object v0, Lpp9;->d:Lpp9;

    invoke-direct {p0, v0}, Lao9;-><init>(Lpp9;)V

    return-void
.end method

.method public constructor <init>(Lpp9;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, La0a;->a:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, La0a;->b:F

    const/4 v1, 0x0

    iput v1, v0, La0a;->c:F

    iput-object v0, p0, Lao9;->b:La0a;

    const-string v0, ""

    iput-object v0, p0, Lao9;->c:Ljava/lang/String;

    iput-object v0, p0, Lao9;->e:Ljava/lang/String;

    iput-object v0, p0, Lao9;->f:Ljava/lang/String;

    iput-object v0, p0, Lao9;->g:Ljava/lang/String;

    iput-object v0, p0, Lao9;->j:Ljava/lang/String;

    iput-object v0, p0, Lao9;->k:Ljava/lang/String;

    iput-object v0, p0, Lao9;->l:Ljava/lang/String;

    const-string v1, "web"

    iput-object v1, p0, Lao9;->m:Ljava/lang/String;

    iput-object v0, p0, Lao9;->n:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lt2a;->r:Lt2a;

    iput-object v1, p0, Lao9;->r:Lt2a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lao9;->s:Z

    iput-boolean v1, p0, Lao9;->t:Z

    iput-boolean v1, p0, Lao9;->u:Z

    iput-boolean v1, p0, Lao9;->v:Z

    iput v1, p0, Lao9;->w:I

    iput-object v0, p0, Lao9;->A:Ljava/lang/String;

    iput-object v0, p0, Lao9;->B:Ljava/lang/String;

    iput-boolean v1, p0, Lao9;->L:Z

    iput-object v0, p0, Lao9;->M:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lao9;->O:Z

    new-instance v0, Lzn9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lzn9;->a:Z

    iput-boolean v1, v0, Lzn9;->b:Z

    iput-boolean v1, v0, Lzn9;->c:Z

    iput-boolean v1, v0, Lzn9;->d:Z

    iput-object v0, p0, Lao9;->P:Lzn9;

    iput-object p1, p0, Lao9;->Q:Lpp9;

    new-instance v0, Ln4a;

    invoke-direct {v0, p1}, Ln4a;-><init>(Lpp9;)V

    iput-object v0, p0, Lao9;->a:Ln4a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lao9;->K:Ljava/lang/String;

    return-object p0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Lao9;->h:Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lao9;->x:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lao9;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lao9;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lao9;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lao9;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lao9;->G:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lao9;->J:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lao9;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p0, p0, Lao9;->m:Ljava/lang/String;

    const-string v0, "store"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Install"

    return-object p0

    :cond_0
    const-string p0, "Visit"

    return-object p0

    :cond_1
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lao9;->J:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lao9;->K:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lao9;->y:I

    return p0
.end method
