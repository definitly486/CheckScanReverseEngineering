.class public final Lkha;
.super Lao9;
.source "SourceFile"


# instance fields
.field public final R:Ljava/util/ArrayList;

.field public S:Lh14;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Lsda;

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:F

.field public g0:F

.field public h0:Lxha;


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 1

    invoke-direct {p0, p1}, Lao9;-><init>(Lpp9;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkha;->R:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "Close"

    iput-object p1, p0, Lkha;->T:Ljava/lang/String;

    const-string p1, "Replay"

    iput-object p1, p0, Lkha;->U:Ljava/lang/String;

    const-string p1, "Ad can be skipped after %ds"

    iput-object p1, p0, Lkha;->V:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkha;->X:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkha;->Y:Z

    iput-boolean v0, p0, Lkha;->Z:Z

    iput-boolean v0, p0, Lkha;->a0:Z

    iput-boolean v0, p0, Lkha;->b0:Z

    iput-boolean v0, p0, Lkha;->c0:Z

    iput-boolean p1, p0, Lkha;->d0:Z

    iput-boolean v0, p0, Lkha;->e0:Z

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lkha;->f0:F

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Lkha;->g0:F

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget-object p0, p0, Lkha;->h0:Lxha;

    if-eqz p0, :cond_0

    iget p0, p0, Lxha;->b:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkha;->W:Lsda;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lsda;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lao9;->G:Ljava/lang/String;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget-object p0, p0, Lkha;->h0:Lxha;

    if-eqz p0, :cond_0

    iget p0, p0, Lxha;->c:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
