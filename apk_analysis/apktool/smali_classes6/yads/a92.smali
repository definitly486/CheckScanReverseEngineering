.class public abstract Lyads/a92;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/af1;

.field public static final c:Lyads/xr2;

.field public static final d:Lyads/xr2;

.field public static final e:Lyads/xr2;

.field public static final f:Lyads/af1;

.field public static final g:Lyads/m36;

.field public static final h:Lyads/m36;

.field public static final i:Lyads/m36;

.field public static final j:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lyads/d82;->f:Lyads/d82;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v1

    sput-object v1, Lyads/a92;->a:Lyads/xr2;

    new-instance v1, Lyads/af1;

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    invoke-direct {v1, v3}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v1, Lyads/a92;->b:Lyads/af1;

    sget-object v1, Lyads/w72;->e:Lyads/w72;

    invoke-static {v1}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/a92;->c:Lyads/xr2;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v3

    sput-object v3, Lyads/a92;->d:Lyads/xr2;

    sget-object v3, Lyads/y41;->e:Lyads/y41;

    invoke-static {v3}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v4

    sput-object v4, Lyads/a92;->e:Lyads/xr2;

    new-instance v4, Lyads/af1;

    invoke-static {v2}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    move-result-object v2

    invoke-direct {v4, v2}, Lyads/af1;-><init>(Lyads/xr2;)V

    sput-object v4, Lyads/a92;->f:Lyads/af1;

    new-instance v2, Lb3;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lb3;-><init>(I)V

    new-instance v5, Lyads/m36;

    invoke-direct {v5, v2, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v5, Lyads/a92;->g:Lyads/m36;

    new-instance v0, Lqc7;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lqc7;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v0, v1}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/a92;->h:Lyads/m36;

    new-instance v0, Lgn6;

    invoke-direct {v0, v4}, Lgn6;-><init>(I)V

    new-instance v1, Lyads/m36;

    invoke-direct {v1, v0, v3}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v1, Lyads/a92;->i:Lyads/m36;

    new-instance v0, Lmg;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lmg;-><init>(I)V

    sput-object v0, Lyads/a92;->j:Lyads/l66;

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
    instance-of p0, p0, Lyads/d82;

    return p0
.end method

.method public static final b(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/w72;

    return p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/y41;

    return p0
.end method
