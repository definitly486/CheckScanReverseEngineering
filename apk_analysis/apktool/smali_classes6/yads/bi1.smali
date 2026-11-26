.class public final Lyads/bi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/as2;

.field public final b:Lyads/as2;

.field public final c:Lyads/as2;

.field public final d:Ljava/util/List;

.field public final e:Lyads/as2;

.field public final f:Lyads/as2;

.field public final g:Lyads/as2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/f11;->f:Lyads/f11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/h11;->f:Lyads/h11;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    sget-object v0, Lyads/vi1;->e:Lyads/vi1;

    invoke-static {v0}, Lyads/wr2;->a(Ljava/lang/Object;)Lyads/xr2;

    return-void
.end method

.method public constructor <init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/util/List;Lyads/as2;Lyads/as2;Lyads/as2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bi1;->a:Lyads/as2;

    iput-object p2, p0, Lyads/bi1;->b:Lyads/as2;

    iput-object p3, p0, Lyads/bi1;->c:Lyads/as2;

    iput-object p4, p0, Lyads/bi1;->d:Ljava/util/List;

    iput-object p5, p0, Lyads/bi1;->e:Lyads/as2;

    iput-object p6, p0, Lyads/bi1;->f:Lyads/as2;

    iput-object p7, p0, Lyads/bi1;->g:Lyads/as2;

    return-void
.end method
