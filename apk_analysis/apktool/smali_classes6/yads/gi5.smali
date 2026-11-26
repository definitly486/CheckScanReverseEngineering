.class public final Lyads/gi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kw;


# instance fields
.field public final a:Lyads/pk2;

.field public final b:J

.field public final c:I

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>(Lyads/pk2;JIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gi5;->a:Lyads/pk2;

    iput-wide p2, p0, Lyads/gi5;->b:J

    iput p4, p0, Lyads/gi5;->c:I

    iput-wide p5, p0, Lyads/gi5;->d:J

    iput p7, p0, Lyads/gi5;->e:I

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 6

    iget-wide p1, p0, Lyads/gi5;->d:J

    add-long v3, p1, p5

    iput-wide v3, p0, Lyads/gi5;->d:J

    iget-object v0, p0, Lyads/gi5;->a:Lyads/pk2;

    iget-wide v1, p0, Lyads/gi5;->b:J

    const-wide/16 p1, -0x1

    cmp-long p1, v1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    const-wide/16 p3, 0x0

    cmp-long p1, v1, p3

    if-eqz p1, :cond_0

    long-to-float p0, v3

    mul-float/2addr p0, p2

    long-to-float p1, v1

    :goto_0
    div-float/2addr p0, p1

    :goto_1
    move v5, p0

    goto :goto_2

    :cond_0
    iget p1, p0, Lyads/gi5;->c:I

    if-eqz p1, :cond_1

    iget p0, p0, Lyads/gi5;->e:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    int-to-float p1, p1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lyads/pk2;->a(JJF)V

    return-void
.end method
