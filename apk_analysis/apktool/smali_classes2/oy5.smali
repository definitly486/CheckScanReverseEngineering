.class public final synthetic Loy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Applier;

    check-cast p2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    check-cast p3, Landroidx/compose/runtime/composer/RememberManager;

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TestOperation;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;)Lj59;

    move-result-object p0

    return-object p0
.end method
