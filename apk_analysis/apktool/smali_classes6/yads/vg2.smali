.class public abstract Lyads/vg2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/w02;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/xr2;

.field public static final g:Lyads/xr2;

.field public static final h:Lyads/xr2;

.field public static final i:Lyads/v02;

.field public static final j:Lyads/m36;

.field public static final k:Lyads/m36;

.field public static final l:Lyads/m36;

.field public static final m:Lyads/m36;

.field public static final n:Lyads/l66;

.field public static final o:Lyads/l66;

.field public static final p:Lyads/l66;

.field public static final q:Lyads/st3;

.field public static final r:Lyads/st3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/vg2;->a:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/vg2;->b:Lyads/xr2;

    new-instance v1, Lyads/w02;

    new-instance v2, Lyads/ej2;

    invoke-direct {v2}, Lyads/ej2;-><init>()V

    invoke-direct {v1, v2}, Lyads/w02;-><init>(Lyads/ej2;)V

    sput-object v1, Lyads/vg2;->c:Lyads/w02;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/vg2;->d:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/vg2;->e:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/vg2;->f:Lyads/xr2;

    sget-object v0, Lyads/yg2;->g:Lyads/yg2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/vg2;->g:Lyads/xr2;

    sget-object v1, Lyads/ri2;->e:Lyads/ri2;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    sput-object v2, Lyads/vg2;->h:Lyads/xr2;

    new-instance v2, Lyads/v02;

    new-instance v3, Lyads/pp1;

    invoke-direct {v3}, Lyads/pp1;-><init>()V

    invoke-direct {v2, v3}, Lyads/v02;-><init>(Lyads/pp1;)V

    sput-object v2, Lyads/vg2;->i:Lyads/v02;

    invoke-static {}, Lyads/f11;->values()[Lyads/f11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lem4;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lem4;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/vg2;->j:Lyads/m36;

    invoke-static {}, Lyads/h11;->values()[Lyads/h11;

    move-result-object v2

    invoke-static {v2}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lk31;

    const/4 v5, 0x5

    invoke-direct {v3, v5}, Lk31;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v3, v2}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/vg2;->k:Lyads/m36;

    new-instance v2, Llx9;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Llx9;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/vg2;->l:Lyads/m36;

    new-instance v0, Llm;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Llm;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/vg2;->m:Lyads/m36;

    new-instance v0, Lki0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lki0;-><init>(I)V

    sput-object v0, Lyads/vg2;->n:Lyads/l66;

    new-instance v0, Lni0;

    invoke-direct {v0, v2}, Lni0;-><init>(I)V

    sput-object v0, Lyads/vg2;->o:Lyads/l66;

    new-instance v0, Lfe0;

    invoke-direct {v0, v4}, Lfe0;-><init>(I)V

    sput-object v0, Lyads/vg2;->p:Lyads/l66;

    new-instance v0, Lmi2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/vg2;->q:Lyads/st3;

    new-instance v0, Lme0;

    invoke-direct {v0, v1}, Lme0;-><init>(I)V

    sput-object v0, Lyads/vg2;->r:Lyads/st3;

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

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/yg2;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ri2;

    return p0
.end method
