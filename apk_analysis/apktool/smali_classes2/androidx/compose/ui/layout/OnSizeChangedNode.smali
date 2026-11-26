.class public final Landroidx/compose/ui/layout/OnSizeChangedNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private onSizeChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private previousSize:J

.field private final shouldAutoInvalidate:Z


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lnl3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->shouldAutoInvalidate:Z

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    return-void
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->shouldAutoInvalidate:Z

    return p0
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lnl3;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    :cond_0
    return-void
.end method

.method public final update(Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->onSizeChanged:Lnl3;

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/layout/OnSizeChangedNode;->previousSize:J

    return-void
.end method
