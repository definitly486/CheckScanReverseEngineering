.class public final Lxd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq7;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lfc4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lfc4;->g:Lyk1;

    sget-object v0, Lyk1;->NONE:Lyk1;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lxd4;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lne4;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TBase;>;",
            "Lnl3<",
            "-TBase;+",
            "Lxp7<",
            "-TBase;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lne4;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TBase;>;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lxl2<",
            "+TBase;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public final c(Lne4;Lne4;Ldf4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lne4<",
            "TBase;>;",
            "Lne4<",
            "TSub;>;",
            "Ldf4<",
            "TSub;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p1

    invoke-interface {p1}, Lmp7;->getKind()Lsp7;

    move-result-object p1

    instance-of p3, p1, Lba6;

    const-string v0, "Serializer for "

    if-nez p3, :cond_2

    sget-object p3, Lsp7$a;->a:Lsp7$a;

    invoke-static {p1, p3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-boolean p0, p0, Lxd4;->a:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Leb8$b;->a:Leb8$b;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Leb8$c;->a:Leb8$c;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Ldg6;

    if-nez p0, :cond_1

    instance-of p0, p1, Lsp7$b;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    const-string p2, " of kind "

    const-string p3, " cannot be serialized polymorphically with class discriminator."

    invoke-static {v0, p0, p2, p1, p3}, Lh2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {p2}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    const-string p2, " can\'t be registered as a subclass for polymorphic serialization because its kind "

    const-string p3, " is not concrete. To work with multiple hierarchies, register it as a base class."

    invoke-static {v0, p0, p2, p1, p3}, Lh2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lne4;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "+",
            "Ldf4<",
            "*>;>;+",
            "Ldf4<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
