.class public final synthetic Lyy5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

.field public final synthetic d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyy5;->b:J

    iput-object p3, p0, Lyy5;->c:Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

    iput-object p4, p0, Lyy5;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyy5;->c:Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;

    iget-object v1, p0, Lyy5;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    iget-wide v2, p0, Lyy5;->b:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationKt;->a(JLandroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method
