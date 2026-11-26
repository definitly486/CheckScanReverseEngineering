.class public final enum Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

.field public static final enum DEFAULT:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;


# instance fields
.field private final defaultSize:F

.field private final defaultSpacing:F

.field private final dotsClickableId:I

.field private final dotsColorId:I

.field private final dotsCornerRadiusId:I

.field private final dotsSizeId:I

.field private final dotsSpacingId:I

.field private final styleableId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    sget-object v1, Lyw6;->b:[I

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;-><init>([I)V

    sput-object v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->DEFAULT:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    filled-new-array {v0}, [Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    move-result-object v0

    sput-object v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->$VALUES:[Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    const-string v0, "DEFAULT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->defaultSize:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->defaultSpacing:F

    iput-object p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->styleableId:[I

    const/4 p1, 0x1

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsColorId:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsSizeId:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsSpacingId:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsCornerRadiusId:I

    iput v1, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsClickableId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
    .locals 1

    const-class v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    return-object p0
.end method

.method public static values()[Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->$VALUES:[Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->defaultSize:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->defaultSpacing:F

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsClickableId:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsColorId:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsCornerRadiusId:I

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsSizeId:I

    return p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->dotsSpacingId:I

    return p0
.end method

.method public final k()[I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$b;->styleableId:[I

    return-object p0
.end method
