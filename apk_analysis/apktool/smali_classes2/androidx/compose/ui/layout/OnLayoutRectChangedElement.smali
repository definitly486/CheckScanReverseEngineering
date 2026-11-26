.class final Landroidx/compose/ui/layout/OnLayoutRectChangedElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/layout/OnLayoutRectChangedNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final debounceMillis:J

.field private final throttleMillis:J


# direct methods
.method public constructor <init>(JJLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    iput-wide p3, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    iput-object p5, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->create()Landroidx/compose/ui/layout/OnLayoutRectChangedNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/OnLayoutRectChangedNode;
    .locals 6

    new-instance v0, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;

    iget-wide v1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    iget-wide v3, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    iget-object v5, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;-><init>(JJLnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    check-cast p1, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;

    iget-wide v5, p1, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    iget-wide v5, p1, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    iget-object p1, p1, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCallback()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/spatial/RelativeLayoutBounds;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    return-object p0
.end method

.method public final getDebounceMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    return-wide v0
.end method

.method public final getThrottleMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "onRectChanged"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "throttleMillis"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "debounceMillis"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "callback"

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 19
    check-cast p1, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->update(Landroidx/compose/ui/layout/OnLayoutRectChangedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/OnLayoutRectChangedNode;)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->throttleMillis:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->setThrottleMillis(J)V

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->debounceMillis:J

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->setDebounceMillis(J)V

    iget-object p0, p0, Landroidx/compose/ui/layout/OnLayoutRectChangedElement;->callback:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->setCallback(Lnl3;)V

    invoke-virtual {p1}, Landroidx/compose/ui/layout/OnLayoutRectChangedNode;->disposeAndRegister()V

    return-void
.end method
