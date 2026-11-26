.class public abstract Ljia;
.super Lao9;
.source "SourceFile"


# instance fields
.field public R:Lh14;

.field public S:F

.field public T:F

.field public U:Z

.field public V:Z

.field public W:Z


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 0

    invoke-direct {p0, p1}, Lao9;-><init>(Lpp9;)V

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Ljia;->T:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljia;->U:Z

    iput-boolean p1, p0, Ljia;->V:Z

    iput-boolean p1, p0, Ljia;->W:Z

    sget-object p1, Lt2a;->s:Lt2a;

    iput-object p1, p0, Lao9;->r:Lt2a;

    return-void
.end method
