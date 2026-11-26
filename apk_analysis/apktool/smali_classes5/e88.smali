.class public final Le88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb88;


# instance fields
.field public final a:Ll78;


# direct methods
.method public constructor <init>(Ll78;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le88;->a:Ll78;

    return-void
.end method


# virtual methods
.method public final a(Lha3;)Lmz7;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lha3;",
            ")",
            "Lmz7<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lna3;

    invoke-virtual {p1}, Lha3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lha3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lha3;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lha3;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lha3;->e()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lna3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Le88;->a:Ll78;

    invoke-interface {p0, v0}, Ll78;->b(Lna3;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lha3;)Lp08;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lna3;

    invoke-virtual {p2}, Lha3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lha3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lha3;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lha3;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lha3;->e()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lna3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Le88;->a:Ll78;

    invoke-interface {p0, p1, v0}, Ll78;->a(Ljava/lang/String;Lna3;)Lmz7;

    move-result-object p0

    new-instance p1, Lx52;

    const/4 p2, 0x3

    sget-object v0, Ld88;->f:Ld88;

    invoke-direct {p1, v0, p2}, Lx52;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method
