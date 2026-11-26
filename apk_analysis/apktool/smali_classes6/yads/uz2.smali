.class public final Lyads/uz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lyads/h84;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Lyads/ql2;

.field public o:J

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public u:[B

.field public v:I

.field public w:Lyads/x20;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lyads/uz2;->f:I

    .line 126
    iput v0, p0, Lyads/uz2;->g:I

    .line 127
    iput v0, p0, Lyads/uz2;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 128
    iput-wide v1, p0, Lyads/uz2;->o:J

    .line 129
    iput v0, p0, Lyads/uz2;->p:I

    .line 130
    iput v0, p0, Lyads/uz2;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 131
    iput v1, p0, Lyads/uz2;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    iput v1, p0, Lyads/uz2;->t:F

    .line 133
    iput v0, p0, Lyads/uz2;->v:I

    .line 134
    iput v0, p0, Lyads/uz2;->x:I

    .line 135
    iput v0, p0, Lyads/uz2;->y:I

    .line 136
    iput v0, p0, Lyads/uz2;->z:I

    .line 137
    iput v0, p0, Lyads/uz2;->C:I

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lyads/uz2;->D:I

    return-void
.end method

.method public constructor <init>(Lyads/vz2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/vz2;->b:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->a:Ljava/lang/String;

    iget-object v0, p1, Lyads/vz2;->c:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->b:Ljava/lang/String;

    iget-object v0, p1, Lyads/vz2;->d:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->c:Ljava/lang/String;

    iget v0, p1, Lyads/vz2;->e:I

    iput v0, p0, Lyads/uz2;->d:I

    iget v0, p1, Lyads/vz2;->f:I

    iput v0, p0, Lyads/uz2;->e:I

    iget v0, p1, Lyads/vz2;->g:I

    iput v0, p0, Lyads/uz2;->f:I

    iget v0, p1, Lyads/vz2;->h:I

    iput v0, p0, Lyads/uz2;->g:I

    iget-object v0, p1, Lyads/vz2;->j:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->h:Ljava/lang/String;

    iget-object v0, p1, Lyads/vz2;->k:Lyads/h84;

    iput-object v0, p0, Lyads/uz2;->i:Lyads/h84;

    iget-object v0, p1, Lyads/vz2;->l:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->j:Ljava/lang/String;

    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    iput-object v0, p0, Lyads/uz2;->k:Ljava/lang/String;

    iget v0, p1, Lyads/vz2;->n:I

    iput v0, p0, Lyads/uz2;->l:I

    iget-object v0, p1, Lyads/vz2;->o:Ljava/util/List;

    iput-object v0, p0, Lyads/uz2;->m:Ljava/util/List;

    iget-object v0, p1, Lyads/vz2;->p:Lyads/ql2;

    iput-object v0, p0, Lyads/uz2;->n:Lyads/ql2;

    iget-wide v0, p1, Lyads/vz2;->q:J

    iput-wide v0, p0, Lyads/uz2;->o:J

    iget v0, p1, Lyads/vz2;->r:I

    iput v0, p0, Lyads/uz2;->p:I

    iget v0, p1, Lyads/vz2;->s:I

    iput v0, p0, Lyads/uz2;->q:I

    iget v0, p1, Lyads/vz2;->t:F

    iput v0, p0, Lyads/uz2;->r:F

    iget v0, p1, Lyads/vz2;->u:I

    iput v0, p0, Lyads/uz2;->s:I

    iget v0, p1, Lyads/vz2;->v:F

    iput v0, p0, Lyads/uz2;->t:F

    iget-object v0, p1, Lyads/vz2;->w:[B

    iput-object v0, p0, Lyads/uz2;->u:[B

    iget v0, p1, Lyads/vz2;->x:I

    iput v0, p0, Lyads/uz2;->v:I

    iget-object v0, p1, Lyads/vz2;->y:Lyads/x20;

    iput-object v0, p0, Lyads/uz2;->w:Lyads/x20;

    iget v0, p1, Lyads/vz2;->z:I

    iput v0, p0, Lyads/uz2;->x:I

    iget v0, p1, Lyads/vz2;->A:I

    iput v0, p0, Lyads/uz2;->y:I

    iget v0, p1, Lyads/vz2;->B:I

    iput v0, p0, Lyads/uz2;->z:I

    iget v0, p1, Lyads/vz2;->C:I

    iput v0, p0, Lyads/uz2;->A:I

    iget v0, p1, Lyads/vz2;->D:I

    iput v0, p0, Lyads/uz2;->B:I

    iget v0, p1, Lyads/vz2;->E:I

    iput v0, p0, Lyads/uz2;->C:I

    iget p1, p1, Lyads/vz2;->F:I

    iput p1, p0, Lyads/uz2;->D:I

    return-void
.end method
