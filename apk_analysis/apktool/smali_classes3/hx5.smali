.class public final Lhx5;
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

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/List;Lwd9;)V
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

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
