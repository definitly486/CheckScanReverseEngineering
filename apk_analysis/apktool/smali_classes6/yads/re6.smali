.class public final Lyads/re6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ql5;


# direct methods
.method public constructor <init>(Lyads/ql5;Lyads/ql5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/re6;->a:Lyads/ql5;

    return-void
.end method


# virtual methods
.method public final a(FFLyads/qe6;)Landroid/graphics/Matrix;
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object p0, p0, Lyads/re6;->a:Lyads/ql5;

    iget p3, p0, Lyads/ql5;->b:I

    int-to-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iget p0, p0, Lyads/ql5;->c:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-object v0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-object p0
.end method
