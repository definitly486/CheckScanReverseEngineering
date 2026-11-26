.class public final Landroidx/compose/runtime/retain/RetainedEffectScope$onRetire$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/retain/RetainedEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/retain/RetainedEffectScope;->onRetire(Lll3;)Landroidx/compose/runtime/retain/RetainedEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onRetiredEffect:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/retain/RetainedEffectScope$onRetire$1;->$onRetiredEffect:Lll3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retire()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainedEffectScope$onRetire$1;->$onRetiredEffect:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method
