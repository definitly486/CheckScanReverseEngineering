.class public abstract Lyads/ys1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lyads/ts1;

.field public final c:Lyads/rr1;


# direct methods
.method public constructor <init>(ILyads/ts1;Lyads/rr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/ys1;->a:I

    iput-object p2, p0, Lyads/ys1;->b:Lyads/ts1;

    iput-object p3, p0, Lyads/ys1;->c:Lyads/rr1;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Float;
.end method

.method public final b(I)Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Lyads/ys1;->c:Lyads/rr1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lyads/ys1;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->h:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p0, p0, Lyads/ys1;->a:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lyads/ys1;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lyads/ys1;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->g:F

    sub-float/2addr v0, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public final c(I)Ljava/lang/Float;
    .locals 3

    iget-object v0, p0, Lyads/ys1;->c:Lyads/rr1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lyads/ys1;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lyads/ys1;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->h:F

    sub-float/2addr v0, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_1
    invoke-virtual {p0, p1}, Lyads/ys1;->a(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p0, p0, Lyads/ys1;->a:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    iget-object p0, p0, Lyads/ys1;->b:Lyads/ts1;

    iget p0, p0, Lyads/ts1;->g:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
