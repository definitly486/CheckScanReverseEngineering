.class public final Landroidx/activity/BackEventCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/BackEventCompat$Companion;,
        Landroidx/activity/BackEventCompat$SwipeEdge;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/activity/BackEventCompat$Companion;

.field public static final EDGE_LEFT:I = 0x0

.field public static final EDGE_NONE:I = 0x2

.field public static final EDGE_RIGHT:I = 0x1


# instance fields
.field private final frameTimeMillis:J

.field private final progress:F

.field private final swipeEdge:I

.field private final touchX:F

.field private final touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/BackEventCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/BackEventCompat$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/activity/BackEventCompat;->Companion:Landroidx/activity/BackEventCompat$Companion;

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 9

    .line 45
    const/16 v7, 0x10

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/activity/BackEventCompat;-><init>(FFFIJILjh2;)V

    return-void
.end method

.method public constructor <init>(FFFIJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    .line 40
    iput p2, p0, Landroidx/activity/BackEventCompat;->touchY:F

    .line 41
    iput p3, p0, Landroidx/activity/BackEventCompat;->progress:F

    .line 42
    iput p4, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    .line 43
    iput-wide p5, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    return-void
.end method

.method public synthetic constructor <init>(FFFIJILjh2;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const-wide/16 p5, 0x0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 44
    invoke-direct/range {v0 .. v6}, Landroidx/activity/BackEventCompat;-><init>(FFFIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/window/BackEvent;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    move-result v1

    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    move-result v2

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result v3

    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x24

    if-lt v0, v5, :cond_0

    invoke-virtual {p1}, Landroid/window/BackEvent;->getFrameTimeMillis()J

    move-result-wide v5

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v6}, Landroidx/activity/BackEventCompat;-><init>(FFFIJ)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigationevent/NavigationEvent;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEvent;->getTouchX()F

    move-result v1

    .line 47
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEvent;->getTouchY()F

    move-result v2

    .line 48
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEvent;->getProgress()F

    move-result v3

    .line 49
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEvent;->getSwipeEdge()I

    move-result v4

    .line 50
    invoke-virtual {p1}, Landroidx/navigationevent/NavigationEvent;->getFrameTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    .line 51
    invoke-direct/range {v0 .. v6}, Landroidx/activity/BackEventCompat;-><init>(FFFIJ)V

    return-void
.end method


# virtual methods
.method public final getFrameTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    return-wide v0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->progress:F

    return p0
.end method

.method public final getSwipeEdge()I
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    return p0
.end method

.method public final getTouchX()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->touchX:F

    return p0
.end method

.method public final getTouchY()F
    .locals 0

    iget p0, p0, Landroidx/activity/BackEventCompat;->touchY:F

    return p0
.end method

.method public final toBackEvent()Landroid/window/BackEvent;
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    invoke-static {}, Lyz;->a()V

    iget v2, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v3, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v4, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget v5, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    iget-wide v6, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    invoke-static/range {v2 .. v7}, Lwz;->a(FFFIJ)Landroid/window/BackEvent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lyz;->a()V

    iget v0, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v2, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget p0, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    invoke-static {v0, v1, v2, p0}, Lxz;->a(FFFI)Landroid/window/BackEvent;

    move-result-object p0

    return-object p0
.end method

.method public final toNavigationEvent()Landroidx/navigationevent/NavigationEvent;
    .locals 7

    iget v3, p0, Landroidx/activity/BackEventCompat;->touchX:F

    iget v4, p0, Landroidx/activity/BackEventCompat;->touchY:F

    iget v2, p0, Landroidx/activity/BackEventCompat;->progress:F

    iget v1, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    iget-wide v5, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    new-instance v0, Landroidx/navigationevent/NavigationEvent;

    invoke-direct/range {v0 .. v6}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackEventCompat(touchX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/activity/BackEventCompat;->touchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/activity/BackEventCompat;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/activity/BackEventCompat;->swipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/activity/BackEventCompat;->frameTimeMillis:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
