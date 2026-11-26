.class public final synthetic Laz5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

.field public final synthetic c:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

.field public final synthetic d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz5;->b:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    iput-object p2, p0, Laz5;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iput-object p3, p0, Laz5;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Laz5;->c:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    iget-object v1, p0, Laz5;->d:Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;

    iget-object p0, p0, Laz5;->b:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationKt;->a(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0
.end method
