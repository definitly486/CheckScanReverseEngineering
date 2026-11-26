.class public final Lyads/zm4;
.super Lyads/ys1;
.source "SourceFile"

# interfaces
.implements Lyads/sx2;


# instance fields
.field public final d:F

.field public final e:F

.field public final f:Z


# direct methods
.method public constructor <init>(Lyads/vp1;Lyads/fs2;Landroid/util/DisplayMetrics;IFLyads/ts1;Lyads/rr1;)V
    .locals 0

    invoke-direct {p0, p4, p6, p7}, Lyads/ys1;-><init>(ILyads/ts1;Lyads/rr1;)V

    iget-object p1, p1, Lyads/vp1;->a:Lyads/af1;

    invoke-static {p1, p3, p2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result p1

    add-float/2addr p5, p1

    iput p5, p0, Lyads/zm4;->d:F

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p3, :cond_1

    const/4 p7, 0x2

    if-ne p2, p7, :cond_0

    int-to-float p2, p4

    iget p4, p6, Lyads/ts1;->h:F

    goto :goto_1

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    int-to-float p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p5, p4

    :goto_0
    sub-float/2addr p2, p5

    goto :goto_2

    :cond_2
    int-to-float p2, p4

    iget p4, p6, Lyads/ts1;->g:F

    :goto_1
    sub-float/2addr p2, p4

    goto :goto_0

    :goto_2
    iput p2, p0, Lyads/zm4;->e:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    iput-boolean p3, p0, Lyads/zm4;->f:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 7
    iget p0, p0, Lyads/zm4;->d:F

    return p0
.end method

.method public final a(I)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lyads/zm4;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lyads/zm4;->f:Z

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lyads/zm4;->e:F

    return p0
.end method
