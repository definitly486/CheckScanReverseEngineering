.class public abstract Lyads/lh1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/k11;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/w02;

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

.field public static final r:Lyads/l66;

.field public static final s:Lyads/l66;

.field public static final t:Lyads/l66;

.field public static final u:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 8

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

    sput-object v0, Lyads/lh1;->a:Lyads/k11;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/lh1;->b:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/lh1;->c:Lyads/xr2;

    sget-object v0, Lyads/f11;->f:Lyads/f11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/lh1;->d:Lyads/xr2;

    sget-object v1, Lyads/h11;->f:Lyads/h11;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lh1;->e:Lyads/xr2;

    new-instance v2, Lyads/w02;

    new-instance v3, Lyads/ej2;

    invoke-direct {v3}, Lyads/ej2;-><init>()V

    invoke-direct {v2, v3}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v2, Lyads/lh1;->f:Lyads/w02;

    const/high16 v2, 0x14000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lh1;->g:Lyads/xr2;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/lh1;->h:Lyads/xr2;

    sget-object v2, Lyads/vi1;->e:Lyads/vi1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/lh1;->i:Lyads/xr2;

    sget-object v3, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/lh1;->j:Lyads/xr2;

    new-instance v4, Lyads/v02;

    new-instance v5, Lyads/pp1;

    invoke-direct {v5}, Lyads/pp1;-><init>()V

    invoke-direct {v4, v5}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v4, Lyads/lh1;->k:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v4

    invoke-static {v4}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Leg0;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Leg0;-><init>(I)V

    new-instance v6, Lyads/m36;

    invoke-direct {v6, v5, v4}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v6, Lyads/lh1;->l:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v4

    invoke-static {v4}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lt2;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lt2;-><init>(I)V

    new-instance v7, Lyads/m36;

    invoke-direct {v7, v5, v4}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v7, Lyads/lh1;->m:Lyads/m36;

    new-instance v4, Lo44;

    invoke-direct {v4, v6}, Lo44;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v4, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/lh1;->n:Lyads/m36;

    new-instance v0, Lhg0;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lhg0;-><init>(I)V

    new-instance v4, Lyads/m36;

    invoke-direct {v4, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v4, Lyads/lh1;->o:Lyads/m36;

    new-instance v0, Lnx0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lnx0;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/lh1;->p:Lyads/m36;

    new-instance v0, Ldr8;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ldr8;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v3}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/lh1;->q:Lyads/m36;

    new-instance v0, Lgg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/lh1;->r:Lyads/l66;

    new-instance v0, Lhg;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lhg;-><init>(I)V

    sput-object v0, Lyads/lh1;->s:Lyads/l66;

    new-instance v0, Lig;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lig;-><init>(I)V

    sput-object v0, Lyads/lh1;->t:Lyads/l66;

    new-instance v0, Ljg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/lh1;->u:Lyads/st3;

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

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/vi1;

    return p0
.end method

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
