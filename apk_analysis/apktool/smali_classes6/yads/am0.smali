.class public final Lyads/am0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    iput v0, p0, Lyads/am0;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lyads/am0;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lyads/am0;->d:F

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lyads/am0;->a:I

    .line 17
    iput p3, p0, Lyads/am0;->c:I

    .line 18
    iput p2, p0, Lyads/am0;->d:F

    return-void
.end method
