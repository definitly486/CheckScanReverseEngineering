.class public abstract Lyads/gr0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/l66;

.field public static final f:Lyads/l66;

.field public static final g:Lyads/l66;

.field public static final h:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/gr0;->a:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/gr0;->b:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/gr0;->c:Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/gr0;->d:Lyads/xr2;

    new-instance v0, Ld;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld;-><init>(I)V

    sput-object v0, Lyads/gr0;->e:Lyads/l66;

    new-instance v0, Lyq;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lyq;-><init>(I)V

    sput-object v0, Lyads/gr0;->f:Lyads/l66;

    new-instance v0, Lg7;

    invoke-direct {v0, v2}, Lg7;-><init>(I)V

    sput-object v0, Lyads/gr0;->g:Lyads/l66;

    new-instance v0, Ly83;

    invoke-direct {v0, v1}, Ly83;-><init>(I)V

    sput-object v0, Lyads/gr0;->h:Lyads/l66;

    return-void
.end method

.method public static final a(J)Z
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
