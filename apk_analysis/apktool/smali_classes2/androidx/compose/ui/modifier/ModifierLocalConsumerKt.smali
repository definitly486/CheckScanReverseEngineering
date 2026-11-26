.class public final Landroidx/compose/ui/modifier/ModifierLocalConsumerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final modifierLocalConsumer(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/modifier/ModifierLocalReadScope;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/ui/modifier/ModifierLocalConsumerImpl;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/ui/modifier/ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/ui/modifier/ModifierLocalConsumerKt$modifierLocalConsumer$$inlined$debugInspectorInfo$1;-><init>(Lnl3;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/modifier/ModifierLocalConsumerImpl;-><init>(Lnl3;Lnl3;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
