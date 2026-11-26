.class public final synthetic Lia8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lja8$a;

    check-cast p2, Lja8$a;

    iget-object p0, p2, Lja8$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    iput-object v0, p2, Lja8$a;->a:Ljava/lang/StringBuilder;

    iget-object p2, p1, Lja8$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lyb9;->e(Ljava/lang/Object;)V

    iget-object p2, p1, Lja8$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1
.end method
