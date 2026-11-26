.class public final Landroidx/compose/foundation/style/PredefinedToggleStateKey;
.super Landroidx/compose/foundation/style/StyleStateKey;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/style/PredefinedKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/style/PredefinedToggleStateKey$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/foundation/style/StyleStateKey<",
        "Landroidx/compose/ui/state/ToggleableState;",
        ">;",
        "Landroidx/compose/foundation/style/PredefinedKey;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    invoke-direct {v0}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;-><init>()V

    sput-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/StyleStateKey;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Landroidx/compose/ui/state/ToggleableState;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, 0x60

    if-eqz p0, :cond_1

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Indeterminate:Landroidx/compose/ui/state/ToggleableState;

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->On:Landroidx/compose/ui/state/ToggleableState;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    return-object p0
.end method

.method public bridge synthetic getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->getValueFrom$foundation(Landroidx/compose/foundation/style/MutableStyleState;)Landroidx/compose/ui/state/ToggleableState;

    move-result-object p0

    return-object p0
.end method

.method public setValueTo$foundation(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/style/MutableStyleState;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/compose/foundation/style/MutableStyleState;->getPredefinedState$foundation()I

    move-result p0

    and-int/lit8 p0, p0, -0x61

    sget-object v0, Landroidx/compose/foundation/style/PredefinedToggleStateKey$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 p1, 0x40

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    :goto_0
    or-int/2addr p0, p1

    invoke-virtual {p2, p0}, Landroidx/compose/foundation/style/MutableStyleState;->setPredefinedState$foundation(I)V

    return-void
.end method

.method public bridge synthetic setValueTo$foundation(Ljava/lang/Object;Landroidx/compose/foundation/style/MutableStyleState;)V
    .locals 0

    .line 32
    check-cast p1, Landroidx/compose/ui/state/ToggleableState;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->setValueTo$foundation(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/foundation/style/MutableStyleState;)V

    return-void
.end method
