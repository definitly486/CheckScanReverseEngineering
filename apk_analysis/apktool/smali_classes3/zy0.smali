.class public final Lzy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lty0;


# instance fields
.field public final synthetic a:Lc31;


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy0;->a:Lc31;

    return-void
.end method


# virtual methods
.method public final onFailure(Lokhttp3/a;Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lzy0;->a:Lc31;

    invoke-static {p2}, Lr57;->a(Ljava/lang/Throwable;)Lk57$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Lokhttp3/a;Lz47;)V
    .locals 0

    iget-object p0, p0, Lzy0;->a:Lc31;

    sget-object p1, Lzy0$a;->b:Lzy0$a;

    invoke-virtual {p0, p2, p1}, Lc31;->q(Ljava/lang/Object;Ldm3;)V

    return-void
.end method
