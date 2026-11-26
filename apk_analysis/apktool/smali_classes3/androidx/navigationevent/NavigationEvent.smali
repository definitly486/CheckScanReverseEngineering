.class public final Landroidx/navigationevent/NavigationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigationevent/NavigationEvent$Companion;,
        Landroidx/navigationevent/NavigationEvent$SwipeEdge;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigationevent/NavigationEvent$Companion;

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

    new-instance v0, Landroidx/navigationevent/NavigationEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigationevent/NavigationEvent$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/navigationevent/NavigationEvent;->Companion:Landroidx/navigationevent/NavigationEvent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 47
    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJILjh2;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 37
    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJILjh2;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 9

    .line 38
    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJILjh2;)V

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 9

    .line 39
    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJILjh2;)V

    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 9

    .line 40
    const/16 v7, 0x10

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJILjh2;)V

    return-void
.end method

.method public constructor <init>(IFFFJ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    .line 43
    iput p2, p0, Landroidx/navigationevent/NavigationEvent;->progress:F

    .line 44
    iput p3, p0, Landroidx/navigationevent/NavigationEvent;->touchX:F

    .line 45
    iput p4, p0, Landroidx/navigationevent/NavigationEvent;->touchY:F

    .line 46
    iput-wide p5, p0, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    return-void
.end method

.method public synthetic constructor <init>(IFFFJILjh2;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x2

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    const-wide/16 p5, 0x0

    :cond_4
    move-wide p7, p5

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Landroidx/navigationevent/NavigationEvent;-><init>(IFFFJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/navigationevent/NavigationEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/navigationevent/NavigationEvent;

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->touchX:F

    iget v3, p1, Landroidx/navigationevent/NavigationEvent;->touchX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->touchY:F

    iget v3, p1, Landroidx/navigationevent/NavigationEvent;->touchY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->progress:F

    iget v3, p1, Landroidx/navigationevent/NavigationEvent;->progress:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    iget v3, p1, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    iget-wide p0, p1, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    cmp-long p0, v2, p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getFrameTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    return-wide v0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEvent;->progress:F

    return p0
.end method

.method public final getSwipeEdge()I
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    return p0
.end method

.method public final getTouchX()F
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEvent;->touchX:F

    return p0
.end method

.method public final getTouchY()F
    .locals 0

    iget p0, p0, Landroidx/navigationevent/NavigationEvent;->touchY:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/navigationevent/NavigationEvent;->touchX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->touchY:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->progress:F

    invoke-static {v2, v0, v1}, Ljn;->b(FII)I

    move-result v0

    iget v2, p0, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-wide v1, p0, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavigationEvent(touchX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/navigationevent/NavigationEvent;->touchX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigationevent/NavigationEvent;->touchY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigationevent/NavigationEvent;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigationevent/NavigationEvent;->swipeEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frameTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/navigationevent/NavigationEvent;->frameTimeMillis:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
