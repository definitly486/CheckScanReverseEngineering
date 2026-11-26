.class public final synthetic Lny5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Applier;

    check-cast p2, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

    check-cast p3, Landroidx/compose/runtime/composer/RememberManager;

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$TestOperation;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;)Lj59;

    move-result-object p0

    return-object p0
.end method
