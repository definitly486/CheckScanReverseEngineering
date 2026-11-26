.class public final synthetic Lkq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/LinkComposer;

.field public final synthetic c:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

.field public final synthetic d:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/runtime/MovableContentStateReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq4;->b:Landroidx/compose/runtime/LinkComposer;

    iput-object p2, p0, Lkq4;->c:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    iput-object p3, p0, Lkq4;->d:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    iput-wide p4, p0, Lkq4;->e:J

    iput-object p6, p0, Lkq4;->f:Landroidx/compose/runtime/MovableContentStateReference;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-wide v3, p0, Lkq4;->e:J

    iget-object v5, p0, Lkq4;->f:Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v0, p0, Lkq4;->b:Landroidx/compose/runtime/LinkComposer;

    iget-object v1, p0, Lkq4;->c:Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;

    iget-object v2, p0, Lkq4;->d:Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/LinkComposer;->a(Landroidx/compose/runtime/LinkComposer;Landroidx/compose/runtime/composer/linkbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/linkbuffer/SlotTableReader;JLandroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0
.end method
