.class public final synthetic Lk96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo22;

    check-cast p2, Landroid/content/Context;

    check-cast p3, Landroidx/compose/foundation/text/selection/SelectedTextType;

    check-cast p4, Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->b(Lo22;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    move-result-object p0

    return-object p0
.end method
