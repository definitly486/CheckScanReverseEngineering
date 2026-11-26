.class final Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimateBoundsModifierKt;->animateBounds(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/BoundsTransform;Z)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/unit/Constraints;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;

    invoke-direct {v0}, Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;-><init>()V

    sput-object v0, Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;->INSTANCE:Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/compose/animation/AnimateBoundsModifierKt$animateBounds$2;->invoke-2pbfIzA(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-2pbfIzA(JJ)J
    .locals 2

    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/16 p3, 0x20

    shr-long p3, p1, p3

    long-to-int p3, p3

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p3, p1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide p0

    return-wide p0
.end method
