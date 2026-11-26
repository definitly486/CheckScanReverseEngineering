.class public final Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;
.super Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

.field private final receiveContentNode:Landroidx/compose/foundation/content/ReceiveContentNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/content/ReceiveContentNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->receiveContentNode:Landroidx/compose/foundation/content/ReceiveContentNode;

    new-instance p1, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration$receiveContentListener$1;-><init>(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)V

    iput-object p1, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    return-void
.end method

.method public static final synthetic access$getParentReceiveContentListener(Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;)Landroidx/compose/foundation/content/ReceiveContentListener;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->getParentReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    return-object p0
.end method

.method private final getParentReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->receiveContentNode:Landroidx/compose/foundation/content/ReceiveContentNode;

    invoke-static {p0}, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->getReceiveContentConfiguration(Landroidx/compose/ui/modifier/ModifierLocalModifierNode;)Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    return-object p0
.end method

.method public final getReceiveContentNode()Landroidx/compose/foundation/content/ReceiveContentNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;->receiveContentNode:Landroidx/compose/foundation/content/ReceiveContentNode;

    return-object p0
.end method
