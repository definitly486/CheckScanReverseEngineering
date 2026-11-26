.class public abstract Lyads/az1;
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

.field public static final i:Lyads/v02;

.field public static final j:Lyads/m36;

.field public static final k:Lyads/m36;

.field public static final l:Lyads/m36;

.field public static final m:Lyads/m36;

.field public static final n:Lyads/m36;

.field public static final o:Lyads/l66;

.field public static final p:Lyads/l66;

.field public static final q:Lyads/l66;

.field public static final r:Lyads/l66;

.field public static final s:Lyads/l66;

.field public static final t:Lyads/st3;

.field public static final u:Lyads/l66;

.field public static final v:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/az1;->a:Lyads/xr2;

    const-wide/16 v0, 0xc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/az1;->b:Lyads/xr2;

    sget-object v0, Lyads/g12;->f:Lyads/g12;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/az1;->c:Lyads/xr2;

    new-instance v1, Lyads/w02;

    new-instance v2, Lyads/ej2;

    invoke-direct {v2}, Lyads/ej2;-><init>()V

    invoke-direct {v1, v2}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v1, Lyads/az1;->d:Lyads/w02;

    const/high16 v1, 0x73000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/az1;->e:Lyads/xr2;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/az1;->f:Lyads/xr2;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/az1;->g:Lyads/xr2;

    sget-object v1, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/az1;->h:Lyads/xr2;

    new-instance v2, Lyads/v02;

    new-instance v3, Lyads/pp1;

    invoke-direct {v3}, Lyads/pp1;-><init>()V

    invoke-direct {v2, v3}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v2, Lyads/az1;->i:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lji;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lji;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/az1;->j:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Leg1;

    invoke-direct {v3, v4}, Leg1;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/az1;->k:Lyads/m36;

    new-instance v2, Lh7;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lh7;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/az1;->l:Lyads/m36;

    invoke-static {}, Lyads/tf1;->values()[Lyads/tf1;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lgg1;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Lgg1;-><init>(I)V

    new-instance v6, Lyads/m36;

    invoke-direct {v6, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v6, Lyads/az1;->m:Lyads/m36;

    new-instance v0, Lti2;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lti2;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/az1;->n:Lyads/m36;

    new-instance v0, Li01;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Li01;-><init>(I)V

    sput-object v0, Lyads/az1;->o:Lyads/l66;

    new-instance v0, Lzc5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/az1;->p:Lyads/l66;

    new-instance v0, Lfe0;

    invoke-direct {v0, v3}, Lfe0;-><init>(I)V

    sput-object v0, Lyads/az1;->q:Lyads/l66;

    new-instance v0, Lmi2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/az1;->r:Lyads/l66;

    new-instance v0, Lme0;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lme0;-><init>(I)V

    sput-object v0, Lyads/az1;->s:Lyads/l66;

    new-instance v0, Lti0;

    invoke-direct {v0, v5}, Lti0;-><init>(I)V

    sput-object v0, Lyads/az1;->t:Lyads/st3;

    new-instance v0, Ld;

    invoke-direct {v0, v1}, Ld;-><init>(I)V

    sput-object v0, Lyads/az1;->u:Lyads/l66;

    new-instance v0, Lyq;

    invoke-direct {v0, v4}, Lyq;-><init>(I)V

    sput-object v0, Lyads/az1;->v:Lyads/st3;

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

    if-ltz p0, :cond_0

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

.method public static final b(Ljava/util/List;)Z
    .locals 1

    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/g12;

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
    instance-of p0, p0, Lyads/tf1;

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
    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
