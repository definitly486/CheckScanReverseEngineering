.class public final synthetic Loda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/target/e2;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lao9;

.field public final synthetic e:Lcha;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/e2;Ljava/lang/String;Lao9;Lcha;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loda;->b:Lcom/my/target/e2;

    iput-object p2, p0, Loda;->c:Ljava/lang/String;

    iput-object p3, p0, Loda;->d:Lao9;

    iput-object p4, p0, Loda;->e:Lcha;

    iput-object p5, p0, Loda;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Loda;->e:Lcha;

    iget-object v1, p0, Loda;->f:Landroid/content/Context;

    iget-object v2, p0, Loda;->b:Lcom/my/target/e2;

    iget-object v3, p0, Loda;->c:Ljava/lang/String;

    iget-object p0, p0, Loda;->d:Lao9;

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/my/target/e2;->c(Ljava/lang/String;Lao9;Lcha;Landroid/content/Context;)V

    return-void
.end method
