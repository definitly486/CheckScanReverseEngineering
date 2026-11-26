.class public final Lyads/by1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xq3;


# instance fields
.field public final a:Lyads/zw2;

.field public final b:Lyads/zw2;

.field public final c:Lyads/zw2;

.field public final d:Lyads/zw2;

.field public final e:Lyads/zw2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/tx1;->f:Lyads/tx1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/by1;->a:Lyads/zw2;

    iput-object p2, p0, Lyads/by1;->b:Lyads/zw2;

    iput-object p3, p0, Lyads/by1;->c:Lyads/zw2;

    iput-object p4, p0, Lyads/by1;->d:Lyads/zw2;

    iput-object p5, p0, Lyads/by1;->e:Lyads/zw2;

    return-void
.end method
