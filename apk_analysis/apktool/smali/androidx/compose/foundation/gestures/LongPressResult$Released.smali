.class public final Landroidx/compose/foundation/gestures/LongPressResult$Released;
.super Landroidx/compose/foundation/gestures/LongPressResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/LongPressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Released"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/LongPressResult;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method


# virtual methods
.method public final getFinalUpChange()Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/LongPressResult$Released;->finalUpChange:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-object p0
.end method
