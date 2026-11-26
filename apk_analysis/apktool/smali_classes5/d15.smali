.class public final Ld15;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld15$a;
    }
.end annotation


# static fields
.field public static final g:[F


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ld15;->g:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method public constructor <init>(Ld15$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Ld15$a;->a:I

    iput v0, p0, Ld15;->a:I

    iget v0, p1, Ld15$a;->b:I

    iput v0, p0, Ld15;->b:I

    iget v0, p1, Ld15$a;->c:I

    iput v0, p0, Ld15;->c:I

    iget v0, p1, Ld15$a;->d:I

    iput v0, p0, Ld15;->d:I

    iget v0, p1, Ld15$a;->e:I

    iput v0, p0, Ld15;->e:I

    iget p1, p1, Ld15$a;->f:I

    iput p1, p0, Ld15;->f:I

    return-void
.end method
