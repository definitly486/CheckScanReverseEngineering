.class public abstract Lyads/cc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/dc2;

.field public static final d:Lyads/m36;

.field public static final e:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/cc2;->a:Lyads/xr2;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/cc2;->b:Lyads/xr2;

    new-instance v0, Lyads/dc2;

    new-instance v1, Lyads/jc2;

    invoke-direct {v1}, Lyads/jc2;-><init>()V

    invoke-direct {v0, v1}, Lyads/dc2;-><init>(Lyads/jc2;)V

    sput-object v0, Lyads/cc2;->c:Lyads/dc2;

    invoke-static {}, Lyads/pb2;->values()[Lyads/pb2;

    move-result-object v0

    invoke-static {v0}, Lyr;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lhg0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lhg0;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/cc2;->d:Lyads/m36;

    new-instance v0, Leg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/cc2;->e:Lyads/l66;

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
    instance-of p0, p0, Lyads/pb2;

    return p0
.end method
