.class public final Lcom/my/target/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgv9;


# instance fields
.field public final synthetic b:Lwv9;

.field public final synthetic c:Lcom/my/target/w0;


# direct methods
.method public constructor <init>(Lcom/my/target/w0;Lwv9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/v0;->c:Lcom/my/target/w0;

    iput-object p2, p0, Lcom/my/target/v0;->b:Lwv9;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/v0;->c:Lcom/my/target/w0;

    iget-object v0, v0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/my/target/v0;->b:Lwv9;

    invoke-interface {v0, p0}, Lcom/my/target/t1$a;->b(Lao9;)V

    :cond_0
    return-void
.end method
