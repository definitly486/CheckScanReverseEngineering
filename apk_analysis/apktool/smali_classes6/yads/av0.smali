.class public final Lyads/av0;
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

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/zu0;->e:Lyads/zu0;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/av0;->a:Lyads/as2;

    iput-object p2, p0, Lyads/av0;->b:Lyads/as2;

    iput-object p3, p0, Lyads/av0;->c:Lyads/as2;

    iput-object p4, p0, Lyads/av0;->d:Lyads/as2;

    iput-object p5, p0, Lyads/av0;->e:Lyads/as2;

    return-void
.end method
