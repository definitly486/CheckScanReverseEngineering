.class public Landroidx/compose/runtime/LinkRememberObserverHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserverHolder;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private after:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

.field private wrapped:Landroidx/compose/runtime/RememberObserver;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    iput-object p2, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->after:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-void
.end method


# virtual methods
.method public final getAfter()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->after:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object p0
.end method

.method public getWrapped()Landroidx/compose/runtime/RememberObserver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    return-object p0
.end method

.method public final setAfter(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->after:Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-void
.end method

.method public setWrapped(Landroidx/compose/runtime/RememberObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/LinkRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    return-void
.end method
