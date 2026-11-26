.class public final Ltl1;
.super Ljz1;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lh88;

.field public final synthetic e:Lla5;

.field public final synthetic f:Lsl1$b;


# direct methods
.method public constructor <init>(Lsl1$b;Lh88;Lla5;)V
    .locals 0

    iput-object p1, p0, Ltl1;->f:Lsl1$b;

    iput-object p2, p0, Ltl1;->d:Lh88;

    iput-object p3, p0, Ltl1;->e:Lla5;

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

    invoke-virtual {p0}, Ltl1;->c()V
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

    iget-object v0, p0, Ltl1;->f:Lsl1$b;

    iget-object v1, v0, Lsl1$b;->c:Lsl1;

    iget-object v2, v1, Lsl1;->f:Lsl1$a;

    invoke-virtual {v2}, Lsl1$a;->b()V

    iget-object v2, v0, Lsl1$b;->b:Lh88;

    if-eqz v2, :cond_0

    new-instance p0, Lla5;

    invoke-direct {p0}, Lla5;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ltl1;->d:Lh88;

    iget-object p0, p0, Ltl1;->e:Lla5;

    :goto_0
    :try_start_0
    iget-object v0, v0, Lsl1$b;->a:Lrl1$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2, p0}, Lrl1$a;->a(Lh88;Lla5;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v0, Lsl1;->o:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by onClose() in ClientCall"

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p0, v1, Lsl1;->d:Lpy0;

    invoke-virtual {v2}, Lh88;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lpy0;->c:Ltv4;

    invoke-interface {p0}, Ltv4;->a()V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lpy0;->d:Ltv4;

    invoke-interface {p0}, Ltv4;->a()V

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    iget-object v0, v1, Lsl1;->d:Lpy0;

    invoke-virtual {v2}, Lh88;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lpy0;->c:Ltv4;

    invoke-interface {v0}, Ltv4;->a()V

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lpy0;->d:Ltv4;

    invoke-interface {v0}, Ltv4;->a()V

    :goto_3
    throw p0
.end method
