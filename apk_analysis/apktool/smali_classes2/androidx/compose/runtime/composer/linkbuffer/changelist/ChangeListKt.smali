.class public final Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final asLinkBufferChangeList(Landroidx/compose/runtime/Changes;)Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;
    .locals 1

    instance-of v0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Inconsistent composition"

    invoke-static {p0}, Lav;->b(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method
