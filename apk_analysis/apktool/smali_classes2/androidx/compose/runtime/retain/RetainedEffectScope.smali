.class public final Landroidx/compose/runtime/retain/RetainedEffectScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRetire(Lll3;)Landroidx/compose/runtime/retain/RetainedEffectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/runtime/retain/RetainedEffectScope$onRetire$1;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/retain/RetainedEffectScope$onRetire$1;-><init>(Lll3;)V

    return-object p0
.end method
