.class public abstract Lyads/fd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/qu1;

.field public static final b:Lyads/qu1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/qu1;

    new-instance v1, Lyads/bv1;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v3, Lyads/xr2;

    invoke-direct {v3, v2}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lyads/bv1;-><init>(Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/qu1;-><init>(Lyads/bv1;)V

    sput-object v0, Lyads/fd2;->a:Lyads/qu1;

    new-instance v0, Lyads/qu1;

    new-instance v1, Lyads/bv1;

    new-instance v3, Lyads/xr2;

    invoke-direct {v3, v2}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v3}, Lyads/bv1;-><init>(Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/qu1;-><init>(Lyads/bv1;)V

    sput-object v0, Lyads/fd2;->b:Lyads/qu1;

    return-void
.end method
