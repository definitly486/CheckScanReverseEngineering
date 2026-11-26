.class public final Landroidx/compose/ui/input/pointer/ConsumedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lul2;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private change:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field private downChange:Z

.field private positionChange:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPositionChange$ui()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getDownChange$ui()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZ)V

    .line 20
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    .line 17
    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILjh2;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic getDownChange$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method

.method public static synthetic getPositionChange$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDownChange()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getConsumedDelegate$ui()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getDownChange$ui()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getDownChange$ui()Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return p0
.end method

.method public final getPositionChange()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getConsumedDelegate$ui()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPositionChange$ui()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPositionChange$ui()Z

    move-result p0

    return p0

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return p0
.end method

.method public final setDownChange(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getConsumedDelegate$ui()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->setDownChange$ui(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->setDownChange$ui(Z)V

    :cond_1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->downChange:Z

    return-void
.end method

.method public final setPositionChange(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getConsumedDelegate$ui()Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->setPositionChange$ui(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->change:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->setPositionChange$ui(Z)V

    :cond_1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/ConsumedData;->positionChange:Z

    return-void
.end method
