.class public final Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/composer/RememberManager;


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;

    invoke-direct {v0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;-><init>()V

    sput-object v0, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->INSTANCE:Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final throwIllegalOperationException()V
    .locals 0

    const-string p0, "ChangeList cannot call the RememberManager when executing pending changes outside of the applier phase."

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deactivating(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public endResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public rememberPausingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public remembering(Landroidx/compose/runtime/RememberObserverHolder;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public sideEffect(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method

.method public startResumingScope(Landroidx/compose/runtime/RecomposeScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/ThrowingRememberManagerStub;->throwIllegalOperationException()V

    return-void
.end method
