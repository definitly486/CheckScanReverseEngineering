.class public final synthetic Lm89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh8$a;
.implements Lgv9;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lm89;->b:Ljava/lang/Object;

    iput-object p2, p0, Lm89;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lm89;->b:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/w;

    iget-object p0, p0, Lm89;->c:Ljava/lang/Object;

    check-cast p0, Lwv9;

    iget-object v0, v0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/my/target/t1$a;->b(Lao9;)V

    :cond_0
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm89;->b:Ljava/lang/Object;

    check-cast v0, Lr89;

    iget-object p0, p0, Lm89;->c:Ljava/lang/Object;

    check-cast p0, Lhz;

    iget-object v0, v0, Lr89;->c:Lf13;

    invoke-interface {v0, p0}, Lf13;->i0(Lhz;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
