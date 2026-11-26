.class public abstract Landroidx/compose/ui/node/ModifierNodeElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;
.implements Landroidx/compose/ui/platform/InspectableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Landroidx/compose/ui/Modifier$Node;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/platform/InspectableValue;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private _inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->_inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-direct {v0}, Landroidx/compose/ui/platform/InspectorInfo;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v1}, Lzk1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/ModifierNodeElement;->inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V

    iput-object v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->_inspectorValues:Landroidx/compose/ui/platform/InspectorInfo;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract create()Landroidx/compose/ui/Modifier$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final getInspectableElements()Lzo7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Landroidx/compose/ui/platform/ValueElement;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getNameFallback()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValueOverride()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->getInspectorValues()Landroidx/compose/ui/platform/InspectorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/InspectorInfo;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    invoke-static {p1, p0}, Landroidx/compose/ui/Actual_jvmAndAndroidKt;->tryPopulateReflectively(Landroidx/compose/ui/platform/InspectorInfo;Landroidx/compose/ui/node/ModifierNodeElement;)V

    return-void
.end method

.method public abstract update(Landroidx/compose/ui/Modifier$Node;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation
.end method
