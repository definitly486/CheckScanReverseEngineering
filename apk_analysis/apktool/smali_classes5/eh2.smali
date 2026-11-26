.class public final synthetic Leh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lgh2$a$a;

.field public final synthetic c:Lsy0;

.field public final synthetic d:La57;


# direct methods
.method public synthetic constructor <init>(Lgh2$a$a;Lsy0;La57;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leh2;->b:Lgh2$a$a;

    iput-object p2, p0, Leh2;->c:Lsy0;

    iput-object p3, p0, Leh2;->d:La57;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leh2;->b:Lgh2$a$a;

    iget-object v0, v0, Lgh2$a$a;->b:Lgh2$a;

    iget-object v1, v0, Lgh2$a;->c:Lfy0;

    invoke-interface {v1}, Lfy0;->n()Z

    move-result v1

    iget-object v2, p0, Leh2;->c:Lsy0;

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, p0}, Lsy0;->a(Lfy0;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Leh2;->d:La57;

    invoke-interface {v2, v0, p0}, Lsy0;->b(Lfy0;La57;)V

    return-void
.end method
