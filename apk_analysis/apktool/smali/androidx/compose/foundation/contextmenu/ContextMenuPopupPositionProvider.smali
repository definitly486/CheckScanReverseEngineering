.class public final Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# static fields
.field public static final $stable:I


# instance fields
.field private final anchorPositionBlock:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final onPositionCalculated:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntOffset;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Lwy1;

    invoke-direct {v0, p1, p2}, Lwy1;-><init>(J)V

    invoke-direct {p0, v0, p3}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(Lll3;Lbm3;)V

    return-void
.end method

.method public synthetic constructor <init>(JLbm3;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p3, p5

    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(JLbm3;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(JLbm3;Ljh2;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(JLbm3;)V

    return-void
.end method

.method public constructor <init>(Lll3;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntOffset;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->anchorPositionBlock:Lll3;

    .line 12
    iput-object p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->onPositionCalculated:Lbm3;

    return-void
.end method

.method public synthetic constructor <init>(Lll3;Lbm3;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;-><init>(Lll3;Lbm3;)V

    return-void
.end method

.method private static final _init_$lambda$0(J)Landroidx/compose/ui/unit/IntOffset;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(J)Landroidx/compose/ui/unit/IntOffset;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->_init_$lambda$0(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 14

    move-wide/from16 v0, p5

    iget-object v2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->anchorPositionBlock:Lll3;

    invoke-interface {v2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x20

    shr-long v6, v0, v4

    long-to-int v6, v6

    shr-long v7, p2, v4

    long-to-int v7, v7

    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v9, p4

    if-ne v9, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProviderKt;->alignPopupAxis(IIIZ)I

    move-result v5

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v6

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    add-int v8, v7, v6

    const-wide v6, 0xffffffffL

    and-long v9, v0, v6

    long-to-int v9, v9

    and-long v10, p2, v6

    long-to-int v10, v10

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProviderKt;->alignPopupAxis$default(IIIZILjava/lang/Object;)I

    move-result v8

    int-to-long v9, v5

    shl-long v4, v9, v4

    int-to-long v8, v8

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->constructor-impl(J)J

    move-result-wide v4

    iget-object p0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuPopupPositionProvider;->onPositionCalculated:Lbm3;

    if-eqz p0, :cond_1

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v2

    invoke-static {v4, v5, v0, v1}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-wide v4
.end method
