.class final Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $disposeListener:Lhp2;


# direct methods
.method public constructor <init>(Lhp2;)V
    .locals 0

    iput-object p1, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$1;->$disposeListener:Lhp2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$1;->invoke()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1$1;->$disposeListener:Lhp2;

    invoke-interface {p0}, Lhp2;->dispose()V

    return-void
.end method
