.class public final Lpd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcc9<",
        "Lod7;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lpd7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpd7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpd7;->b:Lpd7;

    return-void
.end method


# virtual methods
.method public final e(Ltd4;F)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ltd4;->U()Ltd4$b;

    move-result-object p0

    sget-object v0, Ltd4$b;->BEGIN_ARRAY:Ltd4$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ltd4;->m()V

    :cond_1
    invoke-virtual {p1}, Ltd4;->E()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Ltd4;->E()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Ltd4;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ltd4;->e0()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ltd4;->o()V

    :cond_3
    new-instance p0, Lod7;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lod7;-><init>(FF)V

    return-object p0
.end method
