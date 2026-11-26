.class public final Landroidx/compose/foundation/layout/FlexBoxChildDataNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private config:Landroidx/compose/foundation/layout/FlexConfig;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FlexConfig;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;->config:Landroidx/compose/foundation/layout/FlexConfig;

    return-void
.end method


# virtual methods
.method public final getConfig()Landroidx/compose/foundation/layout/FlexConfig;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;->config:Landroidx/compose/foundation/layout/FlexConfig;

    return-object p0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final setConfig(Landroidx/compose/foundation/layout/FlexConfig;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;->config:Landroidx/compose/foundation/layout/FlexConfig;

    return-void
.end method
