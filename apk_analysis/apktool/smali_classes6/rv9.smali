.class public final synthetic Lrv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/g82;

.field public final synthetic c:Lyads/zo1;

.field public final synthetic d:Lyads/gw1;

.field public final synthetic e:Landroid/util/DisplayMetrics;

.field public final synthetic f:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;Lyads/gw1;Landroid/util/DisplayMetrics;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv9;->b:Lyads/g82;

    iput-object p2, p0, Lrv9;->c:Lyads/zo1;

    iput-object p3, p0, Lrv9;->d:Lyads/gw1;

    iput-object p4, p0, Lrv9;->e:Landroid/util/DisplayMetrics;

    iput-object p5, p0, Lrv9;->f:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lrv9;->f:Lyads/fs2;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    iget-object v0, p0, Lrv9;->b:Lyads/g82;

    iget-object v1, p0, Lrv9;->c:Lyads/zo1;

    iget-object v2, p0, Lrv9;->d:Lyads/gw1;

    iget-object v3, p0, Lrv9;->e:Landroid/util/DisplayMetrics;

    invoke-static/range {v0 .. v5}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/gw1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
