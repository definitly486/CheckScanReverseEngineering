.class public final Lyads/jy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pn0;


# instance fields
.field public final a:I

.field public final b:Lyads/dy3;


# direct methods
.method public constructor <init>(Lyads/f80;I)V
    .locals 1

    new-instance v0, Lyads/dy3;

    invoke-direct {v0, p1}, Lyads/dy3;-><init>(Lyads/f80;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lyads/jy3;->a:I

    iput-object v0, p0, Lyads/jy3;->b:Lyads/dy3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lyads/eh6;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lyads/eh6;->e(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Lyads/jy3;->b:Lyads/dy3;

    invoke-virtual {v1}, Lyads/dy3;->a()Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Lw65;->b(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-int/2addr p1, v0

    iget p0, p0, Lyads/jy3;->a:I

    if-lt p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method
