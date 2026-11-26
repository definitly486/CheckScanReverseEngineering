.class public final Landroidx/collection/MutableSetWrapper$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableSetWrapper;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lre4;"
    }
.end annotation


# instance fields
.field private current:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/collection/MutableSetWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableSetWrapper<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/MutableSetWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableSetWrapper<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableSetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    new-instance v0, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/collection/MutableSetWrapper$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableSetWrapper;Landroidx/collection/MutableSetWrapper$iterator$1;Le02;)V

    invoke-static {v0}, Lly1;->d(Lbm3;)Lap7;

    move-result-object p1

    iput-object p1, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getCurrent()I
    .locals 0

    iget p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    return p0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 3

    iget v0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->this$0:Landroidx/collection/MutableSetWrapper;

    invoke-static {v0}, Landroidx/collection/MutableSetWrapper;->access$getParent$p(Landroidx/collection/MutableSetWrapper;)Landroidx/collection/MutableScatterSet;

    move-result-object v0

    iget v2, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    invoke-virtual {v0, v2}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    iput v1, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    :cond_0
    return-void
.end method

.method public final setCurrent(I)V
    .locals 0

    iput p1, p0, Landroidx/collection/MutableSetWrapper$iterator$1;->current:I

    return-void
.end method
