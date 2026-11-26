.class public final synthetic Lqv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Luv2;

.field public final synthetic b:Lmr4;


# direct methods
.method public synthetic constructor <init>(Luv2;Lmr4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv2;->a:Luv2;

    iput-object p2, p0, Lqv2;->b:Lmr4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lkd$t$a$a;

    iget-object v1, p0, Lqv2;->a:Luv2;

    iget v2, v1, Luv2;->d:I

    iget-object p0, p0, Lqv2;->b:Lmr4;

    invoke-virtual {p0}, Lmr4;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "Percent"

    invoke-static {v2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Sent Receipts"

    invoke-static {v2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Nalog"

    invoke-direct {v0, v2, p0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, v1, Luv2;->e:Ljava/util/ArrayList;

    iget-object v0, v1, Luv2;->a:Lxv2;

    invoke-interface {v0, p0}, Lxv2;->b(Ljava/util/ArrayList;)Lmz7;

    move-result-object p0

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p0, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    sget-object v0, Lrm3;->d:Lrm3$e;

    sget-object v1, Lrm3;->e:Lrm3$l;

    invoke-virtual {p0, v0, v1}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    return-void
.end method
