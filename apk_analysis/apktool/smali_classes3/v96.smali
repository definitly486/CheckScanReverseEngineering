.class public final Lv96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcc9<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lv96;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv96;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv96;->b:Lv96;

    return-void
.end method


# virtual methods
.method public final e(Ltd4;F)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ltd4;->U()Ltd4$b;

    move-result-object p0

    sget-object v0, Ltd4$b;->BEGIN_ARRAY:Ltd4$b;

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Lie4;->b(Ltd4;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ltd4$b;->BEGIN_OBJECT:Ltd4$b;

    if-ne p0, v0, :cond_1

    invoke-static {p1, p2}, Lie4;->b(Ltd4;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ltd4$b;->NUMBER:Ltd4$b;

    if-ne p0, v0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ltd4;->E()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Ltd4;->E()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-virtual {p1}, Ltd4;->v()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ltd4;->e0()V

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    const-string p1, "Cannot convert json to point. Next token is "

    invoke-static {p0, p1}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
