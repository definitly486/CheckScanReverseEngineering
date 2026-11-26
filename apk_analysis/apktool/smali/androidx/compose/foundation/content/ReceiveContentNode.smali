.class public final Landroidx/compose/foundation/content/ReceiveContentNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

.field private final receiveContentConfiguration:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

.field private receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/content/ReceiveContentListener;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    new-instance p1, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/content/internal/DynamicReceiveContentConfiguration;-><init>(Landroidx/compose/foundation/content/ReceiveContentNode;)V

    iput-object p1, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->receiveContentConfiguration:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    invoke-static {}, Landroidx/compose/foundation/content/internal/ReceiveContentConfigurationKt;->getModifierLocalReceiveContent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    new-instance v1, Lb36;

    invoke-direct {v1, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf(Lb36;)Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    new-instance v0, Lcl5;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcl5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Landroidx/compose/foundation/content/internal/ReceiveContentDragAndDropNode_androidKt;->ReceiveContentDragAndDropNode(Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;Lnl3;)Landroidx/compose/ui/draganddrop/DragAndDropTargetModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/compose/foundation/content/ReceiveContentNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/content/internal/DragAndDropRequestPermission_androidKt;->dragAndDropRequestPermission(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/foundation/content/ReceiveContentNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/content/ReceiveContentNode;->_init_$lambda$0(Landroidx/compose/foundation/content/ReceiveContentNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object p0
.end method

.method public final getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    return-object p0
.end method

.method public final setReceiveContentListener(Landroidx/compose/foundation/content/ReceiveContentListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    return-void
.end method

.method public final updateNode(Landroidx/compose/foundation/content/ReceiveContentListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/content/ReceiveContentNode;->receiveContentListener:Landroidx/compose/foundation/content/ReceiveContentListener;

    return-void
.end method
