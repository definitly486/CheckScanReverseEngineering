.class final Landroidx/compose/ui/CombinedAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Alignment;


# instance fields
.field private final horizontal:Landroidx/compose/ui/Alignment$Horizontal;

.field private final vertical:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/CombinedAlignment;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p2, p0, Landroidx/compose/ui/CombinedAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/CombinedAlignment;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    const/16 v1, 0x20

    shr-long v2, p1, v1

    long-to-int v2, v2

    shr-long v3, p3, v1

    long-to-int v3, v3

    invoke-interface {v0, v2, v3, p5}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p5

    iget-object p0, p0, Landroidx/compose/ui/CombinedAlignment;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    and-long p2, p3, v2

    long-to-int p2, p2

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p0

    int-to-long p1, p5

    shl-long/2addr p1, v1

    int-to-long p3, p0

    and-long/2addr p3, v2

    or-long p0, p1, p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method
