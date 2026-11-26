.class public final Landroidx/compose/runtime/GapComposer$CompositionContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/GapComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositionContextHolder"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/GapComposer$CompositionContextImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    return-void
.end method


# virtual methods
.method public final getRef()Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    return-object p0
.end method

.method public onAbandoned()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->dispose()V

    return-void
.end method

.method public onForgotten()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->dispose()V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    return-void
.end method
