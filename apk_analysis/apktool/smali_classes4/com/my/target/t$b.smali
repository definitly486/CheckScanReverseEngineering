.class public final Lcom/my/target/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Let9;

.field public final synthetic c:Lcom/my/target/t;


# direct methods
.method public constructor <init>(Lcom/my/target/t;Let9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/t$b;->c:Lcom/my/target/t;

    iput-object p2, p0, Lcom/my/target/t$b;->b:Let9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationEngine: Timeout for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/t$b;->b:Let9;

    iget-object v2, v1, Let9;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad network"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Let9;->d:Ln4a;

    const/16 v3, 0x3e7

    const-string v4, "networkTimeout"

    invoke-static {v0, v4, v3, v2}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/my/target/t$b;->c:Lcom/my/target/t;

    invoke-virtual {p0, v1, v0}, Lcom/my/target/t;->a(Let9;Z)V

    return-void
.end method
