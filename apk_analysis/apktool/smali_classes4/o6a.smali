.class public final Lo6a;
.super Le6a;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Le6a;-><init>()V

    iput p1, p0, Lo6a;->a:F

    iput p2, p0, Lo6a;->b:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lo6a;->a:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lo6a;->b:F

    return p0
.end method
