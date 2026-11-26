.class public final Landroidx/compose/foundation/gestures/DragEvent$DragDelta;
.super Landroidx/compose/foundation/gestures/DragEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragDelta"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final delta:J

.field private final isIndirectPointerEvent:Z


# direct methods
.method private constructor <init>(JZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/DragEvent;-><init>(Ljh2;)V

    iput-wide p1, p0, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->isIndirectPointerEvent:Z

    return-void
.end method

.method public synthetic constructor <init>(JZLjh2;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    return-void
.end method


# virtual methods
.method public final getDelta-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    return-wide v0
.end method

.method public final isIndirectPointerEvent()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->isIndirectPointerEvent:Z

    return p0
.end method
