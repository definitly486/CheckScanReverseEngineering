.class public final Lyads/lx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:F

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public N:[B

.field public O:I

.field public P:I

.field public Q:I

.field public R:J

.field public S:J

.field public T:Lyads/j26;

.field public U:Z

.field public V:Z

.field public W:Ljava/lang/String;

.field public X:Lyads/k06;

.field public Y:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:[B

.field public j:Lyads/j06;

.field public k:[B

.field public l:Lyads/ql2;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:[B

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lyads/lx3;->m:I

    iput v0, p0, Lyads/lx3;->n:I

    iput v0, p0, Lyads/lx3;->o:I

    iput v0, p0, Lyads/lx3;->p:I

    const/4 v1, 0x0

    iput v1, p0, Lyads/lx3;->q:I

    iput v0, p0, Lyads/lx3;->r:I

    const/4 v2, 0x0

    iput v2, p0, Lyads/lx3;->s:F

    iput v2, p0, Lyads/lx3;->t:F

    iput v2, p0, Lyads/lx3;->u:F

    const/4 v2, 0x0

    iput-object v2, p0, Lyads/lx3;->v:[B

    iput v0, p0, Lyads/lx3;->w:I

    iput-boolean v1, p0, Lyads/lx3;->x:Z

    iput v0, p0, Lyads/lx3;->y:I

    iput v0, p0, Lyads/lx3;->z:I

    iput v0, p0, Lyads/lx3;->A:I

    const/16 v1, 0x3e8

    iput v1, p0, Lyads/lx3;->B:I

    const/16 v1, 0xc8

    iput v1, p0, Lyads/lx3;->C:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lyads/lx3;->D:F

    iput v1, p0, Lyads/lx3;->E:F

    iput v1, p0, Lyads/lx3;->F:F

    iput v1, p0, Lyads/lx3;->G:F

    iput v1, p0, Lyads/lx3;->H:F

    iput v1, p0, Lyads/lx3;->I:F

    iput v1, p0, Lyads/lx3;->J:F

    iput v1, p0, Lyads/lx3;->K:F

    iput v1, p0, Lyads/lx3;->L:F

    iput v1, p0, Lyads/lx3;->M:F

    const/4 v1, 0x1

    iput v1, p0, Lyads/lx3;->O:I

    iput v0, p0, Lyads/lx3;->P:I

    const/16 v0, 0x1f40

    iput v0, p0, Lyads/lx3;->Q:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lyads/lx3;->R:J

    iput-wide v2, p0, Lyads/lx3;->S:J

    iput-boolean v1, p0, Lyads/lx3;->V:Z

    const-string v0, "eng"

    iput-object v0, p0, Lyads/lx3;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lyads/lx3;->k:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Missing CodecPrivate for codec "

    invoke-static {p0, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p1
.end method
