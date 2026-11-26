.class public abstract Landroidx/compose/foundation/style/StyleState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Landroidx/compose/foundation/style/StyleStateKey;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getInteractionSource$foundation()Landroidx/compose/foundation/interaction/InteractionSource;
.end method

.method public abstract getTriStateToggle()Landroidx/compose/ui/state/ToggleableState;
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isHovered()Z
.end method

.method public abstract isPressed()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract processInteractions$foundation(Landroidx/compose/foundation/interaction/InteractionSource;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
