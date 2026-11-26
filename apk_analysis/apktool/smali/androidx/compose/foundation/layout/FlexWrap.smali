.class public final Landroidx/compose/foundation/layout/FlexWrap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/FlexWrap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/layout/FlexWrap$Companion;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/FlexWrap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FlexWrap$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/layout/FlexWrap;->Companion:Landroidx/compose/foundation/layout/FlexWrap$Companion;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FlexWrap;->bits:I

    return-void
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/layout/FlexWrap;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/FlexWrap;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/FlexWrap;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/layout/FlexWrap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/FlexWrap;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FlexWrap;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const-string p0, "WrapReverse"

    return-object p0

    :cond_1
    const-string p0, "Wrap"

    return-object p0

    :cond_2
    const-string p0, "NoWrap"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlexWrap;->bits:I

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlexWrap;->bits:I

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlexWrap;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlexWrap;->bits:I

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlexWrap;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlexWrap;->bits:I

    return p0
.end method
