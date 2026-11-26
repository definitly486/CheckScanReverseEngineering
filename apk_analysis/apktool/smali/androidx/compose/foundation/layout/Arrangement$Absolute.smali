.class public final Landroidx/compose/foundation/layout/Arrangement$Absolute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Absolute"
.end annotation


# static fields
.field public static final $stable:I

.field private static final Center:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public static final INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

.field private static final Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private static final SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Left$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Left$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Center$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Center$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Center:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$Right$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$Right$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceBetween$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceBetween$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceEvenly$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceEvenly$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceAround$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/Arrangement$Absolute$SpaceAround$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->aligned$lambda$0(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method private static final aligned$lambda$0(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->spacedBy_D5KLDUw$lambda$1(Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->spacedBy_D5KLDUw$lambda$0(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public static synthetic getCenter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLeft$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRight$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSpaceAround$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSpaceBetween$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSpaceEvenly$annotations()V
    .locals 0

    return-void
.end method

.method private static final spacedBy_D5KLDUw$lambda$0(Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method private static final spacedBy_D5KLDUw$lambda$1(Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final aligned(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 3

    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    new-instance v1, Lar;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lar;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, v2, v1, p1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Ljh2;)V

    return-object p0
.end method

.method public final getCenter()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Center:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getLeft()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Left:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getRight()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->Right:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getSpaceAround()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceAround:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getSpaceBetween()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceBetween:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/Arrangement$Absolute;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object p0
.end method

.method public final spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;
    .locals 2

    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Ljh2;)V

    return-object p0
.end method

.method public final spacedBy-D5KLDUw(FLandroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 2

    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    new-instance v0, Lbr;

    invoke-direct {v0, p2}, Lbr;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Ljh2;)V

    return-object p0
.end method

.method public final spacedBy-D5KLDUw(FLandroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 2

    .line 13
    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    new-instance v0, Lzq;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lzq;-><init>(Ljava/lang/Object;I)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Ljh2;)V

    return-object p0
.end method
