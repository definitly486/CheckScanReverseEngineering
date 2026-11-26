.class final synthetic Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultMonotonicFrameClock$delegate:Lcl4;

.field private static final DisallowDefaultMonotonicFrameClock:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock$delegate:Lcl4;

    return-void
.end method

.method private static final DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/DefaultChoreographerFrameClock;->INSTANCE:Landroidx/compose/runtime/DefaultChoreographerFrameClock;

    return-object v0

    :cond_0
    sget-object v0, Landroidx/compose/runtime/FallbackFrameClock;->INSTANCE:Landroidx/compose/runtime/FallbackFrameClock;

    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt()Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefaultMonotonicFrameClock()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock$delegate:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/MonotonicFrameClock;

    return-object v0
.end method

.method public static synthetic getDefaultMonotonicFrameClock$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method
