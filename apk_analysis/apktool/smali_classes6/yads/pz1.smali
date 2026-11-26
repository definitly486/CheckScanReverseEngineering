.class public abstract Lyads/pz1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/xr2;

.field public static final c:Lyads/m36;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, 0x14000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/pz1;->a:Lyads/xr2;

    sget-object v0, Lyads/iz1;->f:Lyads/iz1;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/pz1;->b:Lyads/xr2;

    new-instance v1, Lki3;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lki3;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/pz1;->c:Lyads/m36;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/iz1;

    return p0
.end method
