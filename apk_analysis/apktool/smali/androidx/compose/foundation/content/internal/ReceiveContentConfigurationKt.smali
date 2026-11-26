.class public final Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ModifierLocalReceiveContent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnc1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnc1;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lll3;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->ModifierLocalReceiveContent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method private static final ModifierLocalReceiveContent$lambda$0()Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->ModifierLocalReceiveContent$lambda$0()Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final getModifierLocalReceiveContent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->ModifierLocalReceiveContent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method public static final getReceiveContentConfiguration(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
    .locals 1

    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->ModifierLocalReceiveContent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-interface {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
