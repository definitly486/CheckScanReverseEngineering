.class public final Landroidx/compose/animation/SharedTransitionDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SharedTransitionDefaults$SharedContentConfig;
    }
.end annotation


# static fields
.field public static final $stable:I

.field private static final BoundsTransform:Landroidx/compose/animation/BoundsTransform;

.field public static final INSTANCE:Landroidx/compose/animation/SharedTransitionDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/SharedTransitionDefaults;

    invoke-direct {v0}, Landroidx/compose/animation/SharedTransitionDefaults;-><init>()V

    sput-object v0, Landroidx/compose/animation/SharedTransitionDefaults;->INSTANCE:Landroidx/compose/animation/SharedTransitionDefaults;

    new-instance v0, Lbu7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/animation/SharedTransitionDefaults;->BoundsTransform:Landroidx/compose/animation/BoundsTransform;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/SharedTransitionDefaults;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final BoundsTransform$lambda$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0

    invoke-static {}, Landroidx/compose/animation/SharedTransitionScopeKt;->access$getDefaultSpring$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/animation/SharedTransitionDefaults;->BoundsTransform$lambda$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBoundsTransform()Landroidx/compose/animation/BoundsTransform;
    .locals 0

    sget-object p0, Landroidx/compose/animation/SharedTransitionDefaults;->BoundsTransform:Landroidx/compose/animation/BoundsTransform;

    return-object p0
.end method
