.class public final Landroidx/compose/runtime/DisposableEffectScope;
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
.method public final onDispose(Lll3;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)",
            "Landroidx/compose/runtime/DisposableEffectResult;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/runtime/DisposableEffectScope$onDispose$1;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/DisposableEffectScope$onDispose$1;-><init>(Lll3;)V

    return-object p0
.end method
