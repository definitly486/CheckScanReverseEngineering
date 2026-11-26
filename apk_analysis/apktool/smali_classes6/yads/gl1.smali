.class public abstract Lyads/gl1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lyads/l66;

.field public static final B:Lyads/l66;

.field public static final C:Lyads/l66;

.field public static final D:Lyads/l66;

.field public static final E:Lyads/l66;

.field public static final F:Lyads/l66;

.field public static final G:Lyads/l66;

.field public static final H:Lyads/l66;

.field public static final I:Lyads/st3;

.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/w02;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/xr2;

.field public static final i:Lyads/xr2;

.field public static final j:Lyads/xr2;

.field public static final k:Lyads/xr2;

.field public static final l:Lyads/xr2;

.field public static final m:Lyads/xr2;

.field public static final n:Lyads/xr2;

.field public static final o:Lyads/xr2;

.field public static final p:Lyads/v02;

.field public static final q:Lyads/m36;

.field public static final r:Lyads/m36;

.field public static final s:Lyads/m36;

.field public static final t:Lyads/m36;

.field public static final u:Lyads/m36;

.field public static final v:Lyads/m36;

.field public static final w:Lyads/m36;

.field public static final x:Lyads/m36;

.field public static final y:Lyads/m36;

.field public static final z:Lyads/m36;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/gl1;->a:Lyads/xr2;

    sget-object v0, Lyads/yj1;->e:Lyads/yj1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/gl1;->b:Lyads/xr2;

    sget-object v1, Lyads/ak1;->e:Lyads/ak1;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/gl1;->c:Lyads/xr2;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/gl1;->d:Lyads/xr2;

    sget-object v2, Lyads/g12;->f:Lyads/g12;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/gl1;->e:Lyads/xr2;

    new-instance v3, Lyads/w02;

    new-instance v4, Lyads/ej2;

    invoke-direct {v4}, Lyads/ej2;-><init>()V

    invoke-direct {v3, v4}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v3, Lyads/gl1;->f:Lyads/w02;

    const/high16 v3, 0x73000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/gl1;->g:Lyads/xr2;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/gl1;->h:Lyads/xr2;

    sget-object v3, Lyads/ck1;->f:Lyads/ck1;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/gl1;->i:Lyads/xr2;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/gl1;->j:Lyads/xr2;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/gl1;->k:Lyads/xr2;

    sget-object v4, Lyads/f11;->h:Lyads/f11;

    invoke-static {v4}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v5

    sput-object v5, Lyads/gl1;->l:Lyads/xr2;

    sget-object v5, Lyads/h11;->f:Lyads/h11;

    invoke-static {v5}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v6

    sput-object v6, Lyads/gl1;->m:Lyads/xr2;

    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v6

    sput-object v6, Lyads/gl1;->n:Lyads/xr2;

    sget-object v6, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v6}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v7

    sput-object v7, Lyads/gl1;->o:Lyads/xr2;

    new-instance v7, Lyads/v02;

    new-instance v8, Lyads/pp1;

    invoke-direct {v8}, Lyads/pp1;-><init>()V

    invoke-direct {v7, v8}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v7, Lyads/gl1;->p:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v7

    invoke-static {v7}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lyt1;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lyt1;-><init>(I)V

    new-instance v10, Lyads/m36;

    invoke-direct {v10, v8, v7}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v10, Lyads/gl1;->q:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v7

    invoke-static {v7}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lbr2;

    const/4 v10, 0x3

    invoke-direct {v8, v10}, Lbr2;-><init>(I)V

    new-instance v11, Lyads/m36;

    invoke-direct {v11, v8, v7}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v11, Lyads/gl1;->r:Lyads/m36;

    new-instance v7, Lqy2;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Lqy2;-><init>(I)V

    new-instance v11, Lyads/m36;

    invoke-direct {v11, v7, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v11, Lyads/gl1;->s:Lyads/m36;

    new-instance v0, Let0;

    invoke-direct {v0, v8}, Let0;-><init>(I)V

    new-instance v7, Lyads/m36;

    invoke-direct {v7, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v7, Lyads/gl1;->t:Lyads/m36;

    new-instance v0, Lw82;

    invoke-direct {v0, v8}, Lw82;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/gl1;->u:Lyads/m36;

    invoke-static {}, Lyads/tf1;->values()[Lyads/tf1;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lsy2;

    invoke-direct {v1, v8}, Lsy2;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/gl1;->v:Lyads/m36;

    new-instance v0, Lty2;

    invoke-direct {v0, v8}, Lty2;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v3}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/gl1;->w:Lyads/m36;

    new-instance v0, Luy2;

    invoke-direct {v0, v9}, Luy2;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v4}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/gl1;->x:Lyads/m36;

    new-instance v0, Lvy2;

    invoke-direct {v0, v8}, Lvy2;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v5}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/gl1;->y:Lyads/m36;

    new-instance v0, Lii5;

    invoke-direct {v0, v9}, Lii5;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v6}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/gl1;->z:Lyads/m36;

    new-instance v0, Lrz0;

    invoke-direct {v0, v8}, Lrz0;-><init>(I)V

    sput-object v0, Lyads/gl1;->A:Lyads/l66;

    new-instance v0, Lhm;

    invoke-direct {v0, v8}, Lhm;-><init>(I)V

    sput-object v0, Lyads/gl1;->B:Lyads/l66;

    new-instance v0, Lcc;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcc;-><init>(I)V

    sput-object v0, Lyads/gl1;->C:Lyads/l66;

    new-instance v0, Ldc;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ldc;-><init>(I)V

    sput-object v0, Lyads/gl1;->D:Lyads/l66;

    new-instance v0, Ld92;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Ld92;-><init>(I)V

    sput-object v0, Lyads/gl1;->E:Lyads/l66;

    new-instance v0, Lkv2;

    invoke-direct {v0, v2}, Lkv2;-><init>(I)V

    sput-object v0, Lyads/gl1;->F:Lyads/l66;

    new-instance v0, Lki0;

    invoke-direct {v0, v8}, Lki0;-><init>(I)V

    sput-object v0, Lyads/gl1;->G:Lyads/l66;

    new-instance v0, Lni0;

    invoke-direct {v0, v1}, Lni0;-><init>(I)V

    sput-object v0, Lyads/gl1;->H:Lyads/l66;

    new-instance v0, Lfe0;

    invoke-direct {v0, v10}, Lfe0;-><init>(I)V

    sput-object v0, Lyads/gl1;->I:Lyads/st3;

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
    instance-of p0, p0, Lyads/yj1;

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
    instance-of p0, p0, Lyads/ak1;

    return p0
.end method

.method public static final e(J)Z
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

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/g12;

    return p0
.end method

.method public static final f(J)Z
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

.method public static final f(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/tf1;

    return p0
.end method

.method public static final g(J)Z
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

.method public static final g(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/ck1;

    return p0
.end method

.method public static final h(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/f11;

    return p0
.end method

.method public static final i(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/h11;

    return p0
.end method

.method public static final j(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
