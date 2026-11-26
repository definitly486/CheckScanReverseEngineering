.class public abstract Lyads/s11;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/w91;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/m36;

.field public static final f:Lyads/m36;

.field public static final g:Lyads/l66;

.field public static final h:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/s11;->a:Lyads/xr2;

    sget-object v0, Lyads/o11;->j:Lyads/o11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/s11;->b:Lyads/xr2;

    new-instance v1, Lyads/w91;

    new-instance v2, Lyads/sj1;

    invoke-direct {v2}, Lyads/sj1;-><init>()V

    invoke-direct {v1, v2}, Lyads/w91;-><init>(Lyads/sj1;)V

    sput-object v1, Lyads/s11;->c:Lyads/w91;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/s11;->d:Lyads/xr2;

    new-instance v1, Lmi;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lmi;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/s11;->e:Lyads/m36;

    invoke-static {}, Lyads/j11;->values()[Lyads/j11;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lni;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lni;-><init>(I)V

    new-instance v3, Lyads/m36;

    invoke-direct {v3, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v3, Lyads/s11;->f:Lyads/m36;

    new-instance v0, Ld;

    invoke-direct {v0, v2}, Ld;-><init>(I)V

    sput-object v0, Lyads/s11;->g:Lyads/l66;

    new-instance v0, Lyq;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lyq;-><init>(I)V

    sput-object v0, Lyads/s11;->h:Lyads/l66;

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

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p0, p0, Lyads/o11;

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
    instance-of p0, p0, Lyads/j11;

    return p0
.end method
