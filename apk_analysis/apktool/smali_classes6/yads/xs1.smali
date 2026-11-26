.class public final Lyads/xs1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:Lyads/ys1;

.field public final d:Lyads/ts1;

.field public final e:Z

.field public final f:Lyads/wr1;

.field public final g:Lyads/rr1;


# direct methods
.method public constructor <init>(IFLyads/ys1;Lyads/ts1;ZLyads/wr1;Lyads/rr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/xs1;->a:I

    iput p2, p0, Lyads/xs1;->b:F

    iput-object p3, p0, Lyads/xs1;->c:Lyads/ys1;

    iput-object p4, p0, Lyads/xs1;->d:Lyads/ts1;

    iput-boolean p5, p0, Lyads/xs1;->e:Z

    iput-object p6, p0, Lyads/xs1;->f:Lyads/wr1;

    iput-object p7, p0, Lyads/xs1;->g:Lyads/rr1;

    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 3

    iget-object v0, p0, Lyads/xs1;->c:Lyads/ys1;

    if-lez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lyads/ys1;->c(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lyads/xs1;->c:Lyads/ys1;

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-virtual {v2, p1}, Lyads/ys1;->b(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr p1, v0

    iget p0, p0, Lyads/xs1;->b:F

    sub-float/2addr p1, p0

    int-to-float p0, p2

    mul-float/2addr p1, p0

    return p1

    :cond_2
    return v1
.end method
