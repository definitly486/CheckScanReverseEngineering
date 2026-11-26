.class public final Lyads/s45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Lll3;

.field public final c:Lws6;

.field public d:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lll3;Lws6;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lyads/s45;->b:Lll3;

    .line 16
    iput-object p2, p0, Lyads/s45;->c:Lws6;

    return-void
.end method

.method public constructor <init>(Lws6;)V
    .locals 2

    new-instance v0, Lo7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo7;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/s45;->b:Lll3;

    iput-object p1, p0, Lyads/s45;->c:Lws6;

    return-void
.end method

.method public static final a()Lj59;
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method


# virtual methods
.method public final c()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lyads/s45;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/s45;->c:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iput-object v0, p0, Lyads/s45;->d:Landroid/database/Cursor;

    return-object v0

    :cond_0
    const-string p0, "Cursor should be called only once"

    invoke-static {p0}, Ln7;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lyads/s45;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object p0, p0, Lyads/s45;->b:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method
