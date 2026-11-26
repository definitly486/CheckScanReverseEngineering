.class public final synthetic Lng6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p4, Ljava/lang/CharSequence;

    check-cast p5, Landroidx/compose/ui/text/TextRange;

    invoke-static {p1, p2, p0, p4, p5}, Landroidx/compose/foundation/text/contextmenu/ProcessTextApi23Impl;->b(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;Landroidx/compose/ui/text/TextRange;)Lj59;

    move-result-object p0

    return-object p0
.end method
