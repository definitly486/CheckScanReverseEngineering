.class public final Lyads/y73;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/y73;IIFI)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    iget p4, p0, Lyads/y73;->b:I

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/y73;->b:I

    iget p1, p0, Lyads/y73;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/y73;->c:I

    iget p1, p0, Lyads/y73;->d:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lyads/y73;->d:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 41
    iget p0, p0, Lyads/y73;->a:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyads/y73;->c:I

    return p0
.end method

.method public final c()Z
    .locals 1

    iget p0, p0, Lyads/y73;->d:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
