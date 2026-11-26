.class public final Landroidx/compose/foundation/text/PasswordInputTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/InputTransformation;


# static fields
.field public static final $stable:I


# instance fields
.field private final revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final scheduleHide:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->scheduleHide:Lll3;

    const/4 p1, -0x1

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method

.method private final setRevealCodepointIndex(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method


# virtual methods
.method public final getRevealCodepointIndex$foundation()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->revealCodepointIndex$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getScheduleHide()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->scheduleHide:Lll3;

    return-object p0
.end method

.method public final hide()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/text/PasswordInputTransformation;->setRevealCodepointIndex(I)V

    return-void
.end method

.method public transformInput(Landroidx/compose/foundation/text/input/TextFieldBuffer;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;->getChangeCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;->getRange--jx7JFs(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/text/input/TextFieldBuffer;->getChanges()Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;

    move-result-object p1

    invoke-interface {p1, v2}, Landroidx/compose/foundation/text/input/TextFieldBuffer$ChangeList;->getRange--jx7JFs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/text/PasswordInputTransformation;->getRevealCodepointIndex$foundation()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/PasswordInputTransformation;->scheduleHide:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/PasswordInputTransformation;->setRevealCodepointIndex(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/text/PasswordInputTransformation;->setRevealCodepointIndex(I)V

    return-void
.end method
