.class public final Lsl1$b$c;
.super Ljz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsl1$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lsl1$b;


# direct methods
.method public constructor <init>(Lsl1$b;)V
    .locals 1

    iput-object p1, p0, Lsl1$b$c;->d:Lsl1$b;

    iget-object p1, p1, Lsl1$b;->c:Lsl1;

    iget-object p1, p1, Lsl1;->e:Lky1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljz1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lsl1$b$c;->d:Lsl1$b;

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsl1$b;->b:Lh88;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsl1$b;->a:Lrl1$a;

    invoke-virtual {v0}, Lrl1$a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    sget-object v1, Lh88;->f:Lh88;

    invoke-virtual {v1, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v0

    const-string v1, "Failed to call onReady."

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    iput-object v0, p0, Lsl1$b;->b:Lh88;

    iget-object p0, p0, Lsl1$b;->c:Lsl1;

    iget-object p0, p0, Lsl1;->i:Lcm1;

    invoke-interface {p0, v0}, Lcm1;->j(Lh88;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method
