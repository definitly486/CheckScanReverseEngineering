.class public abstract Lyads/ix0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/xr2;

.field public static final b:Lyads/m36;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lyads/ww0;->f:Lyads/ww0;

    new-instance v1, Lyads/xr2;

    invoke-direct {v1, v0}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lyads/ix0;->a:Lyads/xr2;

    new-instance v1, Lqy2;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lqy2;-><init>(I)V

    new-instance v2, Lyads/m36;

    invoke-direct {v2, v1, v0}, Lyads/m36;-><init>(Lnl3;Ljava/lang/Object;)V

    sput-object v2, Lyads/ix0;->b:Lyads/m36;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lyads/ww0;

    return p0
.end method
