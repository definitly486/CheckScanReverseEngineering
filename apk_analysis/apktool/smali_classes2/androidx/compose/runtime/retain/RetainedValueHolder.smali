.class public final Landroidx/compose/runtime/retain/RetainedValueHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/RememberObserver;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isNewlyRetained:Z

.field private final key:Ljava/lang/Object;

.field private owner:Landroidx/compose/runtime/retain/RetainedValuesStore;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/retain/RetainedValuesStore;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;",
            "Landroidx/compose/runtime/retain/RetainedValuesStore;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->key:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->isNewlyRetained:Z

    iput-object p3, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->owner:Landroidx/compose/runtime/retain/RetainedValuesStore;

    instance-of p0, p2, Landroidx/compose/runtime/RememberObserver;

    if-eqz p0, :cond_1

    instance-of p0, p2, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Retained a value that implements RememberObserver but not RetainObserver. To receive the correct callbacks, the retained value \'"

    const-string p1, "\' must also implement RetainObserver."

    invoke-static {p2, p0, p1}, Lch;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getOwner()Landroidx/compose/runtime/retain/RetainedValuesStore;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->owner:Landroidx/compose/runtime/retain/RetainedValuesStore;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public onAbandoned()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    instance-of v0, p0, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {p0}, Landroidx/compose/runtime/retain/RetainObserver;->onUnused()V

    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {v0}, Landroidx/compose/runtime/retain/RetainObserver;->onExitedComposition()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->owner:Landroidx/compose/runtime/retain/RetainedValuesStore;

    iget-object v1, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->key:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Landroidx/compose/runtime/retain/RetainedValuesStore;->saveExitingValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRemembered()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->isNewlyRetained:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->isNewlyRetained:Z

    check-cast v0, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {v0}, Landroidx/compose/runtime/retain/RetainObserver;->onRetained()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->value:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {p0}, Landroidx/compose/runtime/retain/RetainObserver;->onEnteredComposition()V

    :cond_1
    return-void
.end method

.method public final readoptUnder$runtime_retain(Landroidx/compose/runtime/retain/RetainedValuesStore;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/retain/RetainedValueHolder;->owner:Landroidx/compose/runtime/retain/RetainedValuesStore;

    return-void
.end method
