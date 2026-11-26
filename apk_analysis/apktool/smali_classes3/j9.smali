.class public final Lj9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb78;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lwd9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<View::",
            "Ljh5;",
            ">(",
            "Ljava/util/List<",
            "Lwd9<",
            "TView;>;>;",
            "Lwd9<",
            "TView;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/util/List;Lwd9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<View::",
            "Ljh5;",
            ">(",
            "Ljava/util/List<",
            "Lwd9<",
            "TView;>;>;",
            "Lwd9<",
            "TView;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd9;

    invoke-virtual {v0}, Lwd9;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lwd9;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
