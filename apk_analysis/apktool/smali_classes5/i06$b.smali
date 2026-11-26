.class public final Li06$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lbu0;

.field public final b:I

.field public c:I

.field public d:I

.field public final e:Li06$a;

.field public f:Z

.field public final synthetic g:Li06;


# direct methods
.method public constructor <init>(Li06;IILi06$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li06$b;->g:Li06;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Li06$b;->a:Lbu0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li06$b;->f:Z

    iput p2, p0, Li06$b;->b:I

    iput p3, p0, Li06$b;->c:I

    iput-object p4, p0, Li06$b;->e:Li06$a;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    iget v1, p0, Li06$b;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Window size overflow for stream: "

    iget p0, p0, Li06$b;->b:I

    invoke-static {p0, p1}, Ljn;->f(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget v0, p0, Li06$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Li06$b;->c:I

    return v0
.end method

.method public final b(ILbu0;Z)V
    .locals 6

    :cond_0
    iget-object v0, p0, Li06$b;->g:Li06;

    iget-object v1, v0, Li06;->b:Lj13;

    invoke-virtual {v1}, Lj13;->b0()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Li06;->d:Li06$b;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Li06$b;->a(I)I

    invoke-virtual {p0, v3}, Li06$b;->a(I)I

    :try_start_0
    iget-wide v2, p2, Lbu0;->c:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v0, Li06;->b:Lj13;

    iget v3, p0, Li06$b;->b:I

    invoke-virtual {v0, v2, v3, p2, v1}, Lj13;->w(ZILbu0;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Li06$b;->e:Li06$a;

    invoke-interface {v0, v1}, Li06$a;->d(I)V

    sub-int/2addr p1, v1

    if-gtz p1, :cond_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(ILi06$c;)V
    .locals 9

    iget v0, p0, Li06$b;->c:I

    iget-object v1, p0, Li06$b;->g:Li06;

    iget-object v2, v1, Li06;->d:Li06$b;

    iget v2, v2, Li06$b;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Li06$b;->a:Lbu0;

    iget-wide v5, v4, Lbu0;->c:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    if-lez v0, :cond_1

    int-to-long v7, v0

    cmp-long v7, v7, v5

    if-ltz v7, :cond_0

    long-to-int v0, v5

    add-int/2addr v3, v0

    iget-boolean v5, p0, Li06$b;->f:Z

    invoke-virtual {p0, v0, v4, v5}, Li06$b;->b(ILbu0;Z)V

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    invoke-virtual {p0, v0, v4, v2}, Li06$b;->b(ILbu0;Z)V

    :goto_1
    iget v0, p2, Li06$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Li06$c;->a:I

    sub-int v0, p1, v3

    iget v4, p0, Li06$b;->c:I

    iget-object v5, v1, Li06;->d:Li06$b;

    iget v5, v5, Li06$b;->c:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method
