.class public final Landroidx/compose/ui/input/InputModeManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/InputModeManager;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final inputMode$delegate:Landroidx/compose/runtime/MutableState;

.field private final onRequestInputModeChange:Landroidx/compose/ui/input/InputModeChangeRequester;


# direct methods
.method private constructor <init>(ILandroidx/compose/ui/input/InputModeChangeRequester;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->onRequestInputModeChange:Landroidx/compose/ui/input/InputModeChangeRequester;

    invoke-static {p1}, Landroidx/compose/ui/input/InputMode;->box-impl(I)Landroidx/compose/ui/input/InputMode;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->inputMode$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/input/InputModeChangeRequester;Ljh2;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/input/InputModeManagerImpl;-><init>(ILandroidx/compose/ui/input/InputModeChangeRequester;)V

    return-void
.end method


# virtual methods
.method public getInputMode-aOaMEAU()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->inputMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/input/InputMode;

    invoke-virtual {p0}, Landroidx/compose/ui/input/InputMode;->unbox-impl()I

    move-result p0

    return p0
.end method

.method public requestInputMode-iuPiT84(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->onRequestInputModeChange:Landroidx/compose/ui/input/InputModeChangeRequester;

    invoke-interface {p0, p1}, Landroidx/compose/ui/input/InputModeChangeRequester;->request-iuPiT84(I)Z

    move-result p0

    return p0
.end method

.method public setInputMode-iuPiT84(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->inputMode$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/ui/input/InputMode;->box-impl(I)Landroidx/compose/ui/input/InputMode;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
