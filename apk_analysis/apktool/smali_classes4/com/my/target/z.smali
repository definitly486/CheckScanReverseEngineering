.class public final Lcom/my/target/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgv9;


# instance fields
.field public final synthetic b:Lvy9;

.field public final synthetic c:Lcom/my/target/a0;


# direct methods
.method public constructor <init>(Lcom/my/target/a0;Lvy9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/z;->c:Lcom/my/target/a0;

    iput-object p2, p0, Lcom/my/target/z;->b:Lvy9;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/z;->c:Lcom/my/target/a0;

    iget-object v0, v0, Lcom/my/target/a0;->b:Lcom/my/target/t1$a;

    iget-object p0, p0, Lcom/my/target/z;->b:Lvy9;

    invoke-interface {v0, p0}, Lcom/my/target/t1$a;->b(Lao9;)V

    return-void
.end method
