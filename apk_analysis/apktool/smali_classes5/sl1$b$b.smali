.class public final Lsl1$b$b;
.super Ljz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsl1$b;->a(Lj98$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:Lj98$a;

.field public final synthetic e:Lsl1$b;


# direct methods
.method public constructor <init>(Lsl1$b;Lj98$a;)V
    .locals 0

    iput-object p1, p0, Lsl1$b$b;->e:Lsl1$b;

    iput-object p2, p0, Lsl1$b$b;->d:Lj98$a;

    iget-object p1, p1, Lsl1$b;->c:Lsl1;

    iget-object p1, p1, Lsl1;->e:Lky1;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljz1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lsl1$b$b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lsl1$b$b;->e:Lsl1$b;

    iget-object v1, v0, Lsl1$b;->c:Lsl1;

    iget-object v2, v0, Lsl1$b;->b:Lh88;

    iget-object p0, p0, Lsl1$b$b;->d:Lj98$a;

    if-eqz v2, :cond_0

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    :goto_0
    invoke-interface {p0}, Lj98$a;->next()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lvs3;->b(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p0}, Lj98$a;->next()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v3, v0, Lsl1$b;->a:Lrl1$a;

    iget-object v4, v1, Lsl1;->a:Lra5;

    iget-object v4, v4, Lra5;->e:Lns6$a;

    invoke-virtual {v4, v2}, Lns6$a;->a(Ljava/io/InputStream;)Lcom/google/protobuf/a0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrl1$a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-static {v2}, Lvs3;->b(Ljava/io/Closeable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    return-void

    :goto_2
    sget-object v3, Lvs3;->a:Ljava/util/logging/Logger;

    :goto_3
    invoke-interface {p0}, Lj98$a;->next()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lvs3;->b(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_2
    sget-object p0, Lh88;->f:Lh88;

    invoke-virtual {p0, v2}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    const-string v2, "Failed to read message."

    invoke-virtual {p0, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    iput-object p0, v0, Lsl1$b;->b:Lh88;

    iget-object v0, v1, Lsl1;->i:Lcm1;

    invoke-interface {v0, p0}, Lcm1;->j(Lh88;)V

    return-void
.end method
