.class public abstract Lyads/zg1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/w02;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/xr2;

.field public static final i:Lyads/xr2;

.field public static final j:Lyads/xr2;

.field public static final k:Lyads/v02;

.field public static final l:Lyads/m36;

.field public static final m:Lyads/m36;

.field public static final n:Lyads/m36;

.field public static final o:Lyads/m36;

.field public static final p:Lyads/m36;

.field public static final q:Lyads/m36;

.field public static final r:Lyads/m36;

.field public static final s:Lyads/l66;

.field public static final t:Lyads/l66;

.field public static final u:Lyads/l66;

.field public static final v:Lyads/l66;

.field public static final w:Lyads/l66;

.field public static final x:Lyads/l66;

.field public static final y:Lyads/l66;

.field public static final z:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/zg1;->a:Lyads/xr2;

    sget-object v0, Lyads/hg1;->e:Lyads/hg1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/zg1;->b:Lyads/xr2;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/zg1;->c:Lyads/xr2;

    new-instance v1, Lyads/w02;

    new-instance v2, Lyads/ej2;

    invoke-direct {v2}, Lyads/ej2;-><init>()V

    invoke-direct {v1, v2}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v1, Lyads/zg1;->d:Lyads/w02;

    const-wide/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/zg1;->e:Lyads/xr2;

    sget-object v1, Lyads/jg1;->e:Lyads/jg1;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/zg1;->f:Lyads/xr2;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/zg1;->g:Lyads/xr2;

    sget-object v2, Lyads/lg1;->f:Lyads/lg1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/zg1;->h:Lyads/xr2;

    sget-object v3, Lyads/ng1;->e:Lyads/ng1;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/zg1;->i:Lyads/xr2;

    sget-object v4, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    sput-object v5, Lyads/zg1;->j:Lyads/xr2;

    new-instance v5, Lyads/v02;

    new-instance v6, Lyads/pp1;

    invoke-direct {v6}, Lyads/pp1;-><init>()V

    invoke-direct {v5, v6}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v5, Lyads/zg1;->k:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v5

    invoke-static {v5}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lik3;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lik3;-><init>(I)V

    new-instance v8, Lyads/m36;

    invoke-direct {v8, v6, v5}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v8, Lyads/zg1;->l:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v5

    invoke-static {v5}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lxr2;

    const/4 v8, 0x6

    invoke-direct {v6, v8}, Lxr2;-><init>(I)V

    new-instance v8, Lyads/m36;

    invoke-direct {v8, v6, v5}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v8, Lyads/zg1;->m:Lyads/m36;

    new-instance v5, Lyr2;

    invoke-direct {v5, v7}, Lyr2;-><init>(I)V

    new-instance v6, Lyads/m36;

    invoke-direct {v6, v5, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v6, Lyads/zg1;->n:Lyads/m36;

    new-instance v0, Lgf0;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Lgf0;-><init>(I)V

    new-instance v6, Lyads/m36;

    invoke-direct {v6, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v6, Lyads/zg1;->o:Lyads/m36;

    new-instance v0, Lte;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lte;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/zg1;->p:Lyads/m36;

    new-instance v0, Lau0;

    invoke-direct {v0, v5}, Lau0;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v3}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/zg1;->q:Lyads/m36;

    new-instance v0, Lmi;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lmi;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v4}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/zg1;->r:Lyads/m36;

    new-instance v0, Lti0;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lti0;-><init>(I)V

    sput-object v0, Lyads/zg1;->s:Lyads/l66;

    new-instance v0, Ld;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Ld;-><init>(I)V

    sput-object v0, Lyads/zg1;->t:Lyads/l66;

    new-instance v0, Lyq;

    invoke-direct {v0, v2}, Lyq;-><init>(I)V

    sput-object v0, Lyads/zg1;->u:Lyads/l66;

    new-instance v0, Lg7;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lg7;-><init>(I)V

    sput-object v0, Lyads/zg1;->v:Lyads/l66;

    new-instance v0, Ly83;

    invoke-direct {v0, v2}, Ly83;-><init>(I)V

    sput-object v0, Lyads/zg1;->w:Lyads/l66;

    new-instance v0, Lej0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/zg1;->x:Lyads/l66;

    new-instance v0, Lk;

    invoke-direct {v0, v2}, Lk;-><init>(I)V

    sput-object v0, Lyads/zg1;->y:Lyads/l66;

    new-instance v0, Li01;

    invoke-direct {v0, v1}, Li01;-><init>(I)V

    sput-object v0, Lyads/zg1;->z:Lyads/st3;

    return-void
.end method

.method public static final a(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(J)Z
    .locals 2

    .line 16
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/hg1;

    return p0
.end method

.method public static final d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/jg1;

    return p0
.end method

.method public static final e(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/ng1;

    return p0
.end method

.method public static final f(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/lg1;

    return p0
.end method

.method public static final g(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
