.class public final Lh76;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh76;->a:F

    iput p4, p0, Lh76;->b:F

    iput p7, p0, Lh76;->c:F

    iput p2, p0, Lh76;->d:F

    iput p5, p0, Lh76;->e:F

    iput p8, p0, Lh76;->f:F

    iput p3, p0, Lh76;->g:F

    iput p6, p0, Lh76;->h:F

    iput p9, p0, Lh76;->i:F

    return-void
.end method

.method public static a(FFFFFFFF)Lh76;
    .locals 14

    sub-float v0, p0, p2

    add-float v0, v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float v1, v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    new-instance v3, Lh76;

    sub-float v4, p2, p0

    sub-float v5, p4, p2

    sub-float v7, p3, p1

    sub-float v8, p5, p3

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move v6, p0

    move v9, p1

    invoke-direct/range {v3 .. v12}, Lh76;-><init>(FFFFFFFFF)V

    return-object v3

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v0

    invoke-static {v3, v1, v5, v6}, Lrg;->b(FFFF)F

    move-result v11

    mul-float/2addr v2, v1

    invoke-static {v0, v4, v2, v6}, Lrg;->b(FFFF)F

    move-result v12

    new-instance v4, Lh76;

    sub-float v0, p2, p0

    mul-float v1, v11, p2

    add-float v5, v1, v0

    sub-float v0, p6, p0

    mul-float v1, v12, p6

    add-float v6, v1, v0

    sub-float v0, p3, p1

    mul-float v1, v11, p3

    add-float v8, v1, v0

    sub-float v0, p7, p1

    mul-float v1, v12, p7

    add-float v9, v1, v0

    const/high16 v13, 0x3f800000    # 1.0f

    move v7, p0

    move v10, p1

    invoke-direct/range {v4 .. v13}, Lh76;-><init>(FFFFFFFFF)V

    return-object v4
.end method
