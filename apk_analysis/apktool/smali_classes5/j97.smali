.class public final Lj97;
.super La0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Loz7$a;


# direct methods
.method public constructor <init>(Lo22;Loz7$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, La0;-><init>(Lo22;ZZ)V

    iput-object p2, p0, Lj97;->f:Loz7$a;

    return-void
.end method


# virtual methods
.method public final k0(Ljava/lang/Throwable;Z)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Lj97;->f:Loz7$a;

    invoke-virtual {p2, p1}, Loz7$a;->a(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1, p2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Luc5;->b(Lo22;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lj97;->f:Loz7$a;

    invoke-virtual {v0, p1}, Loz7$a;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Luc5;->b(Lo22;Ljava/lang/Throwable;)V

    return-void
.end method
