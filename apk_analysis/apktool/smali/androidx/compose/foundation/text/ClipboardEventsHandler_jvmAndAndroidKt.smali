.class public final Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final rememberClipboardEventsHandler(Lnl3;Lll3;Lll3;ZLandroidx/compose/runtime/Composer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;",
            "Lll3<",
            "Landroidx/compose/ui/text/AnnotatedString;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "II)Z"
        }
    .end annotation

    and-int/lit8 p0, p6, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$1;->INSTANCE:Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$1;

    :cond_0
    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$2;->INSTANCE:Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$2;

    :cond_1
    and-int/lit8 p0, p6, 0x4

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$3;->INSTANCE:Landroidx/compose/foundation/text/ClipboardEventsHandler_jvmAndAndroidKt$rememberClipboardEventsHandler$3;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
