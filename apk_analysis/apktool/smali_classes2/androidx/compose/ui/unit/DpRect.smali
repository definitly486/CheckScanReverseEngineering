.class public final Landroidx/compose/ui/unit/DpRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/DpRect$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/unit/DpRect$Companion;


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/unit/DpRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/DpRect$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/ui/unit/DpRect;->Companion:Landroidx/compose/ui/unit/DpRect$Companion;

    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 43
    iput p2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 44
    iput p3, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 45
    iput p4, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLjh2;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFF)V

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 6

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result p1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p2

    add-float/2addr p2, p1

    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLjh2;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(JJ)V

    return-void
.end method

.method public static synthetic copy-a9UjIt4$default(Landroidx/compose/ui/unit/DpRect;FFFFILjava/lang/Object;)Landroidx/compose/ui/unit/DpRect;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;->copy-a9UjIt4(FFFF)Landroidx/compose/ui/unit/DpRect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getBottom-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLeft-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRight-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTop-D9Ej5fM$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    return p0
.end method

.method public final component2-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    return p0
.end method

.method public final component3-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    return p0
.end method

.method public final component4-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    return p0
.end method

.method public final copy-a9UjIt4(FFFF)Landroidx/compose/ui/unit/DpRect;
    .locals 6

    new-instance v0, Landroidx/compose/ui/unit/DpRect;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLjh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/unit/DpRect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/unit/DpRect;

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->right:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    iget p1, p1, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBottom-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    return p0
.end method

.method public final getLeft-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    return p0
.end method

.method public final getRight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    return p0
.end method

.method public final getTop-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget v2, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    invoke-static {v2, v0, v1}, Lrg;->c(FII)I

    move-result v0

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DpRect(left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    const-string v2, ", top="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    const-string v2, ", right="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    const-string v2, ", bottom="

    invoke-static {v0, v2, v1}, Lch;->d(Ljava/lang/StringBuilder;Ljava/lang/String;F)V

    iget p0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
