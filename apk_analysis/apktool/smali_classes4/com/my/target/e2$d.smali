.class public final Lcom/my/target/e2$d;
.super Lcom/my/target/e2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lf72;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lao9;Lf72;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/my/target/e2$a;-><init>(Lao9;)V

    iput-object p1, p0, Lcom/my/target/e2$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/my/target/e2$d;->c:Lf72;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Lcom/my/target/e;

    iget-object v1, p0, Lcom/my/target/e2$d;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/my/target/e2$d;->c:Lf72;

    invoke-direct {v0, v1, p0, p1}, Lcom/my/target/e;-><init>(Ljava/lang/String;Lf72;Landroid/content/Context;)V

    :try_start_0
    iget-object p0, v0, Lcom/my/target/e;->b:Lcom/my/target/y0;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const-string p0, "WebFormView: Unable to start WebForm dialog"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
