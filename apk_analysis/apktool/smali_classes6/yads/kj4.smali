.class public final Lyads/kj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bc3;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lyads/d9;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/d9;->w:Ljava/lang/String;

    sget-object v1, Lyads/jj4;->c:Lyads/jj4;

    const-string v1, "loading_on_show"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lyads/d9;->w:Ljava/lang/String;

    const-string v0, "loading_on_back"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lyads/kj4;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lyads/kj4;->a:Z

    return p0
.end method
