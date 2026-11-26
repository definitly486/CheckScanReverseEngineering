.class public final Lva4;
.super Lq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lbf6;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lbf6;)V
    .locals 0

    iput-object p1, p0, Lva4;->d:Ljava/util/Iterator;

    iput-object p2, p0, Lva4;->e:Lbf6;

    invoke-direct {p0}, Lq0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lva4;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lva4;->e:Lbf6;

    invoke-interface {v1, v0}, Lbf6;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    sget-object v0, Lq0$a;->DONE:Lq0$a;

    iput-object v0, p0, Lq0;->b:Lq0$a;

    const/4 p0, 0x0

    return-object p0
.end method
