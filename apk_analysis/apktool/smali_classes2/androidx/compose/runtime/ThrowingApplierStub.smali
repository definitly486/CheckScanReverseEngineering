.class public final Landroidx/compose/runtime/ThrowingApplierStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/Applier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/Applier<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/runtime/ThrowingApplierStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ThrowingApplierStub;

    invoke-direct {v0}, Landroidx/compose/runtime/ThrowingApplierStub;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ThrowingApplierStub;->INSTANCE:Landroidx/compose/runtime/ThrowingApplierStub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final throwIllegalOperationException()V
    .locals 0

    const-string p0, "ChangeList cannot call the Applier when executing pending changes outside of the applier phase."

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public down(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public insertBottomUp(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public insertTopDown(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public move(III)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public remove(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method

.method public up()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/ThrowingApplierStub;->throwIllegalOperationException()V

    return-void
.end method
