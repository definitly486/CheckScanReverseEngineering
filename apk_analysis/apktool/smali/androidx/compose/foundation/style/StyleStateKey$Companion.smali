.class public final Landroidx/compose/foundation/style/StyleStateKey$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/style/StyleStateKey;
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

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleStateKey$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnabled()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/style/StyleStateKey;->access$getEnabled$cp()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object p0

    return-object p0
.end method

.method public final getFocused()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/style/StyleStateKey;->access$getFocused$cp()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object p0

    return-object p0
.end method

.method public final getHovered()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/style/StyleStateKey;->access$getHovered$cp()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object p0

    return-object p0
.end method

.method public final getPressed()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/style/StyleStateKey;->access$getPressed$cp()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object p0

    return-object p0
.end method

.method public final getSelected()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/foundation/style/StyleStateKey;->access$getSelected$cp()Landroidx/compose/foundation/style/StyleStateKey;

    move-result-object p0

    return-object p0
.end method

.method public final getToggle()Landroidx/compose/foundation/style/StyleStateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/foundation/style/StyleStateKey<",
            "Landroidx/compose/ui/state/ToggleableState;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/foundation/style/PredefinedToggleStateKey;->INSTANCE:Landroidx/compose/foundation/style/PredefinedToggleStateKey;

    return-object p0
.end method
