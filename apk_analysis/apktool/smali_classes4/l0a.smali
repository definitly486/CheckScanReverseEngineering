.class public final synthetic Ll0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Ll0a;->b:I

    iput-object p1, p0, Ll0a;->c:Ljava/lang/Object;

    iput-object p2, p0, Ll0a;->d:Ljava/lang/Object;

    iput-object p3, p0, Ll0a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Ll0a;->b:I

    iget-object v1, p0, Ll0a;->e:Ljava/lang/Object;

    iget-object v2, p0, Ll0a;->d:Ljava/lang/Object;

    iget-object p0, p0, Ll0a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/z2;

    check-cast v2, Lgga;

    check-cast v1, Lcom/my/target/d1$a;

    iget-object v0, p0, Lcom/my/target/z2;->b:Lcom/my/target/b2;

    iget-object v3, p0, Lcom/my/target/z2;->f:Ljava/util/ArrayList;

    iget-wide v4, v2, Lgga;->a:J

    iget-object v2, v2, Lgga;->d:Li7a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/my/target/d1$a;->a()Z

    move-result v3

    iget v6, v1, Lcom/my/target/d1$a;->a:I

    if-eqz v3, :cond_0

    invoke-interface {v0, v4, v5}, Lcom/my/target/b2;->b(J)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne v6, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v4, v5}, Lcom/my/target/b2;->b(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resolve resultCode="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", responseCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/my/target/d1$a;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/my/target/d1$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Li7a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Li7a;->c:I

    iget-object v3, v2, Li7a;->b:Lpp9;

    const/16 v7, 0x2328

    if-eqz v3, :cond_2

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, v2, Li7a;->a:Lz8a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/my/target/z2;->c()V

    invoke-virtual {p0}, Lcom/my/target/z2;->b()V

    return-void

    :pswitch_0
    check-cast p0, Lyads/k14;

    check-cast v2, Lyads/l14;

    check-cast v1, Lyads/r04;

    invoke-virtual {p0, v2, v1}, Lyads/k14;->a(Lyads/l14;Lyads/r04;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
