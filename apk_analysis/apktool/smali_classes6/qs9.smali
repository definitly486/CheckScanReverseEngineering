.class public final synthetic Lqs9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s22;

.field public final synthetic c:Lyads/in5;

.field public final synthetic d:Lyads/tc1;

.field public final synthetic e:Landroid/util/DisplayMetrics;

.field public final synthetic f:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs9;->b:Lyads/s22;

    iput-object p2, p0, Lqs9;->c:Lyads/in5;

    iput-object p3, p0, Lqs9;->d:Lyads/tc1;

    iput-object p4, p0, Lqs9;->e:Landroid/util/DisplayMetrics;

    iput-object p5, p0, Lqs9;->f:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lqs9;->e:Landroid/util/DisplayMetrics;

    iget-object v4, p0, Lqs9;->f:Lyads/fs2;

    iget-object v0, p0, Lqs9;->b:Lyads/s22;

    iget-object v1, p0, Lqs9;->c:Lyads/in5;

    iget-object v2, p0, Lqs9;->d:Lyads/tc1;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/d22;->b(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
