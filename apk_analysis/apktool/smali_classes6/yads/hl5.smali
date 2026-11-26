.class public final Lyads/hl5;
.super Lyads/ab2;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zo1;

.field public final b:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/zo1;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Lyads/ab2;-><init>()V

    iput-object p1, p0, Lyads/hl5;->a:Lyads/zo1;

    iput-object p2, p0, Lyads/hl5;->b:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILyads/o92;Lyads/h92;)V
    .locals 6

    invoke-virtual {p2, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result p4

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getTopPadding()I

    move-result v0

    sub-int/2addr p4, v0

    :cond_0
    invoke-static {p2, p3}, Lyads/ab2;->a(Landroid/text/Layout;I)I

    move-result p2

    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    new-instance v0, Lyads/rn;

    iget-object p6, p0, Lyads/hl5;->a:Lyads/zo1;

    invoke-virtual {p6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v5, p0, Lyads/hl5;->b:Lyads/fs2;

    move-object v4, p1

    move-object v2, p7

    move-object v3, p8

    invoke-direct/range {v0 .. v5}, Lyads/rn;-><init>(Landroid/util/DisplayMetrics;Lyads/o92;Lyads/h92;Landroid/graphics/Canvas;Lyads/fs2;)V

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p2

    iget-object v1, v0, Lyads/rn;->g:[F

    invoke-virtual/range {v0 .. v5}, Lyads/rn;->a([FFFFF)V

    return-void
.end method
