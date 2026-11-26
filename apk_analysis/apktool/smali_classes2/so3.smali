.class public final synthetic Lso3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/GapComposer;

.field public final synthetic c:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final synthetic d:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

.field public final synthetic e:Landroidx/compose/runtime/MovableContentStateReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lso3;->b:Landroidx/compose/runtime/GapComposer;

    iput-object p2, p0, Lso3;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iput-object p3, p0, Lso3;->d:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iput-object p4, p0, Lso3;->e:Landroidx/compose/runtime/MovableContentStateReference;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lso3;->d:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v1, p0, Lso3;->e:Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v2, p0, Lso3;->b:Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Lso3;->c:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/runtime/GapComposer;->f(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/MovableContentStateReference;)Lj59;

    move-result-object p0

    return-object p0
.end method
