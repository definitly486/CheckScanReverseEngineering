.class public final synthetic Lns9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s22;

.field public final synthetic c:Lyads/in5;

.field public final synthetic d:Lyads/yc1;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Landroid/util/DisplayMetrics;


# direct methods
.method public synthetic constructor <init>(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lns9;->b:Lyads/s22;

    iput-object p2, p0, Lns9;->c:Lyads/in5;

    iput-object p3, p0, Lns9;->d:Lyads/yc1;

    iput-object p4, p0, Lns9;->e:Lyads/fs2;

    iput-object p5, p0, Lns9;->f:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lns9;->b:Lyads/s22;

    iget-object v1, p0, Lns9;->c:Lyads/in5;

    iget-object v2, p0, Lns9;->d:Lyads/yc1;

    iget-object v3, p0, Lns9;->e:Lyads/fs2;

    iget-object v4, p0, Lns9;->f:Landroid/util/DisplayMetrics;

    invoke-static/range {v0 .. v6}, Lyads/d22;->b(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;J)Lj59;

    move-result-object p0

    return-object p0
.end method
