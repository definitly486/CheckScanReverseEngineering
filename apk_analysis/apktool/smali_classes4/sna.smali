.class public final Lsna;
.super Lo2a;
.source "SourceFile"


# instance fields
.field public final h:F

.field public final i:Z

.field public j:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FIZIZ)V
    .locals 6

    const-string v4, "playheadViewabilityValue"

    move-object v0, p0

    move-object v5, p1

    move v2, p3

    move v3, p5

    move v1, p6

    invoke-direct/range {v0 .. v5}, Lo2a;-><init>(ZIILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput p0, v0, Lsna;->j:F

    iput p2, v0, Lsna;->h:F

    iput-boolean p4, v0, Lsna;->i:Z

    return-void
.end method
