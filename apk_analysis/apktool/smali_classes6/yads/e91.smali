.class public abstract Lyads/e91;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/k11;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/w02;

.field public static final h:Lyads/xr2;

.field public static final i:Lyads/xr2;

.field public static final j:Lyads/xr2;

.field public static final k:Lyads/xr2;

.field public static final l:Lyads/xr2;

.field public static final m:Lyads/v02;

.field public static final n:Lyads/m36;

.field public static final o:Lyads/m36;

.field public static final p:Lyads/m36;

.field public static final q:Lyads/m36;

.field public static final r:Lyads/m36;

.field public static final s:Lyads/m36;

.field public static final t:Lyads/m36;

.field public static final u:Lyads/l66;

.field public static final v:Lyads/l66;

.field public static final w:Lyads/l66;

.field public static final x:Lyads/l66;

.field public static final y:Lyads/l66;

.field public static final z:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lyads/k11;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sget-object v3, Lyads/j11;->e:Lyads/j11;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    invoke-direct {v0, v1, v2, v3, v5}, Lyads/k11;-><init>(Lyads/xr2;Lyads/xr2;Lyads/xr2;Lyads/xr2;)V

    sput-object v0, Lyads/e91;->a:Lyads/k11;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/e91;->b:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/e91;->c:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/e91;->d:Lyads/xr2;

    sget-object v0, Lyads/m91;->h:Lyads/m91;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/e91;->e:Lyads/xr2;

    sget-object v1, Lyads/o91;->e:Lyads/o91;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/e91;->f:Lyads/xr2;

    new-instance v2, Lyads/w02;

    new-instance v3, Lyads/ej2;

    invoke-direct {v3}, Lyads/ej2;-><init>()V

    invoke-direct {v2, v3}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v2, Lyads/e91;->g:Lyads/w02;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/e91;->h:Lyads/xr2;

    sget-object v3, Lyads/f81;->e:Lyads/f81;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/e91;->i:Lyads/xr2;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/e91;->j:Lyads/xr2;

    sget-object v2, Lyads/h81;->e:Lyads/h81;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/e91;->k:Lyads/xr2;

    sget-object v4, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    sput-object v5, Lyads/e91;->l:Lyads/xr2;

    new-instance v5, Lyads/v02;

    new-instance v6, Lyads/pp1;

    invoke-direct {v6}, Lyads/pp1;-><init>()V

    invoke-direct {v5, v6}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v5, Lyads/e91;->m:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v5

    invoke-static {v5}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ldh0;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ldh0;-><init>(I)V

    new-instance v7, Lyads/m36;

    invoke-direct {v7, v6, v5}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v7, Lyads/e91;->n:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v5

    invoke-static {v5}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lws0;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lws0;-><init>(I)V

    new-instance v8, Lyads/m36;

    invoke-direct {v8, v6, v5}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v8, Lyads/e91;->o:Lyads/m36;

    new-instance v5, Lyc2;

    invoke-direct {v5, v7}, Lyc2;-><init>(I)V

    new-instance v6, Lyads/m36;

    invoke-direct {v6, v5, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v6, Lyads/e91;->p:Lyads/m36;

    new-instance v0, Lzc2;

    const/4 v5, 0x7

    invoke-direct {v0, v5}, Lzc2;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/e91;->q:Lyads/m36;

    new-instance v0, Lt71;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lt71;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v0, v3}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/e91;->r:Lyads/m36;

    new-instance v0, Lyq2;

    invoke-direct {v0, v1}, Lyq2;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v0, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/e91;->s:Lyads/m36;

    new-instance v0, Lv71;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lv71;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v4}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/e91;->t:Lyads/m36;

    new-instance v0, Lbh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/e91;->u:Lyads/l66;

    new-instance v0, Lch;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/e91;->v:Lyads/l66;

    new-instance v0, Ldh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/e91;->w:Lyads/l66;

    new-instance v0, Leh;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/e91;->x:Lyads/l66;

    new-instance v0, Lfh;

    invoke-direct {v0, v1}, Lfh;-><init>(I)V

    sput-object v0, Lyads/e91;->y:Lyads/l66;

    new-instance v0, Lih;

    invoke-direct {v0, v1}, Lih;-><init>(I)V

    sput-object v0, Lyads/e91;->z:Lyads/st3;

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
    instance-of p0, p0, Lyads/m91;

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
    instance-of p0, p0, Lyads/o91;

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/f81;

    return p0
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/h81;

    return p0
.end method

.method public static final g(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
