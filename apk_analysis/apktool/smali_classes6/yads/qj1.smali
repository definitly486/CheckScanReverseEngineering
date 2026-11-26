.class public abstract Lyads/qj1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/w02;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/e02;

.field public static final i:Lyads/af1;

.field public static final j:Lyads/xr2;

.field public static final k:Lyads/v02;

.field public static final l:Lyads/m36;

.field public static final m:Lyads/m36;

.field public static final n:Lyads/m36;

.field public static final o:Lyads/m36;

.field public static final p:Lyads/l66;

.field public static final q:Lyads/l66;

.field public static final r:Lyads/l66;

.field public static final s:Lyads/l66;

.field public static final t:Lyads/l66;

.field public static final u:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v0, 0xffdc60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/qj1;->a:Lyads/xr2;

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/qj1;->b:Lyads/xr2;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/qj1;->c:Lyads/xr2;

    sget-object v0, Lyads/aj1;->e:Lyads/aj1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/qj1;->d:Lyads/xr2;

    new-instance v1, Lyads/w02;

    new-instance v2, Lyads/ej2;

    invoke-direct {v2}, Lyads/ej2;-><init>()V

    invoke-direct {v1, v2}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v1, Lyads/qj1;->e:Lyads/w02;

    const v1, 0x33919cb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/qj1;->f:Lyads/xr2;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/qj1;->g:Lyads/xr2;

    new-instance v1, Lyads/e02;

    new-instance v2, Lyads/gy1;

    sget-object v4, Lyads/gy1;->f:Lyads/af1;

    sget-object v5, Lyads/gy1;->g:Lyads/af1;

    sget-object v6, Lyads/gy1;->h:Lyads/af1;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lyads/gy1;-><init>(Lyads/as2;Lyads/af1;Lyads/af1;Lyads/af1;Lyads/l42;)V

    invoke-direct {v1, v2}, Lyads/e02;-><init>(Lyads/gy1;)V

    sput-object v1, Lyads/qj1;->h:Lyads/e02;

    new-instance v1, Lyads/af1;

    const-wide/16 v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v1, Lyads/qj1;->i:Lyads/af1;

    sget-object v1, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/qj1;->j:Lyads/xr2;

    new-instance v2, Lyads/v02;

    new-instance v3, Lyads/pp1;

    invoke-direct {v3}, Lyads/pp1;-><init>()V

    invoke-direct {v2, v3}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v2, Lyads/qj1;->k:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lhf;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lhf;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/qj1;->l:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lay;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Lay;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/qj1;->m:Lyads/m36;

    new-instance v2, Lus2;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lus2;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/qj1;->n:Lyads/m36;

    new-instance v0, Luf0;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Luf0;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/qj1;->o:Lyads/m36;

    new-instance v0, Lh2;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lh2;-><init>(I)V

    sput-object v0, Lyads/qj1;->p:Lyads/l66;

    new-instance v0, Li2;

    invoke-direct {v0, v3}, Li2;-><init>(I)V

    sput-object v0, Lyads/qj1;->q:Lyads/l66;

    new-instance v0, Lj2;

    invoke-direct {v0, v2}, Lj2;-><init>(I)V

    sput-object v0, Lyads/qj1;->r:Lyads/l66;

    new-instance v0, Lk2;

    invoke-direct {v0, v4}, Lk2;-><init>(I)V

    sput-object v0, Lyads/qj1;->s:Lyads/l66;

    new-instance v0, Ll2;

    invoke-direct {v0, v4}, Ll2;-><init>(I)V

    sput-object v0, Lyads/qj1;->t:Lyads/l66;

    new-instance v0, Lm2;

    invoke-direct {v0, v3}, Lm2;-><init>(I)V

    sput-object v0, Lyads/qj1;->u:Lyads/st3;

    return-void
.end method

.method public static final a(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final a(J)Z
    .locals 2

    .line 10
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

    .line 11
    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final a(Ljava/util/List;)Z
    .locals 1

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(D)Z
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

.method public static final b(J)Z
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

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final c(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

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
    instance-of p0, p0, Lyads/aj1;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
