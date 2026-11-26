.class public final Lyads/ir4;
.super Lyads/lr4;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(IIIILandroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/lr4;-><init>(I)V

    iput p1, p0, Lyads/ir4;->b:I

    iput p2, p0, Lyads/ir4;->c:I

    iput p3, p0, Lyads/ir4;->d:I

    iput p4, p0, Lyads/ir4;->e:I

    iput-object p5, p0, Lyads/ir4;->f:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget v0, p0, Lyads/lr4;->a:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lyads/ir4;->b:I

    add-int/2addr v0, p1

    iget p0, p0, Lyads/ir4;->c:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final b(I)I
    .locals 2

    iget v0, p0, Lyads/ir4;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lyads/ir4;->f:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Lyads/ir4;->d:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 1

    iget v0, p0, Lyads/lr4;->a:I

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lyads/ir4;->b:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
