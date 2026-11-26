.class public final Lwr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Object:",
        "Ljava/lang/Object;",
        "Field:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld3<",
        "TObject;TField;>;"
    }
.end annotation


# instance fields
.field public final a:Lxe4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxe4<",
            "TObject;TField;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxe4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxe4<",
            "TObject;TField;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr6;->a:Lxe4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObject;)TField;"
        }
    .end annotation

    iget-object p0, p0, Lwr6;->a:Lxe4;

    invoke-interface {p0, p1}, Lbf4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObject;)TField;"
        }
    .end annotation

    iget-object p0, p0, Lwr6;->a:Lxe4;

    invoke-interface {p0, p1}, Lbf4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lme4;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " is not set"

    const-string v0, "Field "

    invoke-static {p0, v0, p1}, Lki0;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TObject;TField;)TField;"
        }
    .end annotation

    iget-object p0, p0, Lwr6;->a:Lxe4;

    invoke-interface {p0, p1}, Lbf4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Lxe4;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method
