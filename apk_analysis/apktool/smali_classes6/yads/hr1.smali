.class public final Lyads/hr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/o11;->i:Lyads/o11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hr1;->a:Lyads/as2;

    iput-object p2, p0, Lyads/hr1;->b:Lyads/as2;

    iput-object p3, p0, Lyads/hr1;->c:Lyads/as2;

    iput-object p4, p0, Lyads/hr1;->d:Lyads/as2;

    iput-object p5, p0, Lyads/hr1;->e:Lyads/as2;

    return-void
.end method
