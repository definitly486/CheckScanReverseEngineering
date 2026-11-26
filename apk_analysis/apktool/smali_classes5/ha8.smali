.class public final synthetic Lha8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lja8$a;

    check-cast p2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    iget-object p0, p1, Lja8$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lyb9;->e(Ljava/lang/Object;)V

    iget-boolean p0, p1, Lja8$a;->c:Z

    if-nez p0, :cond_0

    iget-object p0, p1, Lja8$a;->a:Ljava/lang/StringBuilder;

    iget-object v0, p1, Lja8$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p1, Lja8$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lja8$a;->c:Z

    return-void
.end method
