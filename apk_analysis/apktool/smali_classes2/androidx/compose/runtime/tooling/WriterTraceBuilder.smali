.class public final Landroidx/compose/runtime/tooling/WriterTraceBuilder;
.super Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilder;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    return-void
.end method


# virtual methods
.method public groupKeyOf(Landroidx/compose/runtime/Anchor;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-static {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    move-result p0

    return p0
.end method

.method public sourceInformationOf(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/GroupSourceInformation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/tooling/WriterTraceBuilder;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    invoke-static {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object p0

    return-object p0
.end method
