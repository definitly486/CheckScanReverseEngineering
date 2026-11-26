.class public abstract Lyads/kc1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x320

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/kc1;->a:Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/kc1;->b:Lyads/xr2;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/kc1;->c:Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v0

    sput-object v0, Lyads/kc1;->d:Lyads/xr2;

    new-instance v0, Lih;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lih;-><init>(I)V

    sput-object v0, Lyads/kc1;->e:Lyads/l66;

    new-instance v0, Ljh;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljh;-><init>(I)V

    sput-object v0, Lyads/kc1;->f:Lyads/l66;

    new-instance v0, Lkh;

    invoke-direct {v0, v1}, Lkh;-><init>(I)V

    sput-object v0, Lyads/kc1;->g:Lyads/l66;

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

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x64

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
