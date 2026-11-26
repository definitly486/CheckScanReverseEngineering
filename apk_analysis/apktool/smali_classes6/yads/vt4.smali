.class public final Lyads/vt4;
.super Lyads/ys1;
.source "SourceFile"

# interfaces
.implements Lyads/sx2;


# instance fields
.field public final d:F

.field public final e:F

.field public final f:Z


# direct methods
.method public constructor <init>(Lyads/qq1;Lyads/fs2;ILyads/ts1;Lyads/rr1;)V
    .locals 5

    invoke-direct {p0, p3, p4, p5}, Lyads/ys1;-><init>(ILyads/ts1;Lyads/rr1;)V

    iget-object p1, p1, Lyads/qq1;->a:Lyads/eu1;

    iget-object p1, p1, Lyads/eu1;->a:Lyads/as2;

    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    int-to-double v0, p3

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lyads/vt4;->d:F

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    const/4 v1, 0x1

    if-eqz p5, :cond_2

    if-eq p5, v1, :cond_1

    const/4 v4, 0x2

    if-ne p5, v4, :cond_0

    int-to-float p3, p3

    iget p4, p4, Lyads/ts1;->h:F

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    int-to-float p3, p3

    sub-float/2addr p3, v0

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    goto :goto_1

    :cond_2
    int-to-float p3, p3

    iget p4, p4, Lyads/ts1;->g:F

    :goto_0
    sub-float/2addr p3, p4

    sub-float/2addr p3, v0

    :goto_1
    iput p3, p0, Lyads/vt4;->e:F

    cmpg-double p1, p1, v2

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lyads/vt4;->f:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 7
    iget p0, p0, Lyads/vt4;->e:F

    return p0
.end method

.method public final a(I)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lyads/vt4;->d:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lyads/vt4;->f:Z

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lyads/vt4;->d:F

    return p0
.end method
