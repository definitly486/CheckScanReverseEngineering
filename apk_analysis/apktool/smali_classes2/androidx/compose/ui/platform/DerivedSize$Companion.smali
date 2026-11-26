.class public final Landroidx/compose/ui/platform/DerivedSize$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/platform/DerivedSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/DerivedSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromDpSize-itqla9I(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;
    .locals 8

    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toIntSize-uvyYCjk(J)J

    move-result-wide v3

    new-instance v2, Landroidx/compose/ui/platform/DerivedSize;

    const/4 v7, 0x0

    move-wide v5, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJLjh2;)V

    return-object v2
.end method

.method public final fromPxSize-viCIZxY(JLandroidx/compose/ui/unit/Density;)Landroidx/compose/ui/platform/DerivedSize;
    .locals 8

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v5

    new-instance v2, Landroidx/compose/ui/platform/DerivedSize;

    const/4 v7, 0x0

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJLjh2;)V

    return-object v2
.end method

.method public final getZero()Landroidx/compose/ui/platform/DerivedSize;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/platform/DerivedSize;->access$getZero$cp()Landroidx/compose/ui/platform/DerivedSize;

    move-result-object p0

    return-object p0
.end method
